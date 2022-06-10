/*
 * greedysnake.c
 *
 *  Created on: 2019??6??10??
 *      Author: lenovo
 */
#include "stdio.h"
#include "stdlib.h"

#include "xil_io.h"
#include "xgpio_l.h"
#include "xtmrctr_l.h"
#include "xintc_l.h"
#include "xtft.h"
#include "xparameters.h"
#include "gameover.h"
#include "InitGame.h"

#define SCREEN_WIDTH 39	 //游戏屏幕宽度，和实际显示大小成比例
#define SCREEN_LENGTH 29 //游戏屏幕长度
#define START_X 0		 //屏幕起始X坐标
#define START_Y 0		 //屏幕起始y坐标
#define ADD_NUM 16		 //游戏画面和显示屏幕大小比，即为蛇身一块的大小，即16*16

#define FGCOLOR_blu 0x0000ff00 //绿色
#define FGCOLOR_red 0x00ff0000 //红色
#define COLOR_BLACK 0x00000000 //黑色
#define COLOR_WRITE 0xffffffff //白色
#define TFT_DEVICE_ID XPAR_TFT_0_DEVICE_ID
#define TFT_FRAME_BASEADDR0 0X86000000
#define TFT_FRAME_BASEADDR1 0X84000000

#define Btn_UP 0x2
#define Btn_DOWN 0x10
#define Btn_LEFT 0x4
#define Btn_RIGHT 0x8
#define Btn_STOP 0x1

static XTft TftInstance; //实例化tft
XTft_Config *TftConfigPtr;

typedef struct snake
{						//蛇身结构体，是蛇的某一部分
	int x;				//横坐标
	int y;				//纵坐标
	struct snake *next; //队列下一个
	struct snake *pre;	//队列前一个
	struct snake *end;	//队列的尾端
} SNAKE;
typedef struct
{ //食物//
	int x;
	int y;
} FOOD;

int seed = 1; //作为随机数生成的初始种子

int count = 0; //生成3次食物就生成一次炸弹

int direction = 0; //蛇头方向
enum direc
{
	up,
	down,
	left,
	right,
	start
};

//按键有无按下的标志位   //修改

void My_ISR() __attribute__((interrupt_handler));
void Button_Handler(); //按键的中断控制函数

void Start_Show(); //start页面
void BuildSnk();  //画出蛇身
void RemoveSnk(); //清除函数
void RemoveBomb(); //清除炸弹
void DeleteSnack();
void IniScreen(); //初始化屏幕
void CreatFood(); //生成食物，并且让食物不与蛇体冲突
void CreatBomb(); //生成炸弹
int Eated(); //吃到食物
int Bombed(); //吃到炸弹
int GameOver(); //判断游戏结束了没
void GameOver_Show(); //结束页面

int button_status; //按键状态
int sw_status;	   //开关状态
int main()
{
	//中断初始化
	Xil_Out32(XPAR_AXI_GPIO_0_BASEADDR + XGPIO_TRI_OFFSET, 0Xffff);							 //设定开关为输入方式
	Xil_Out32(XPAR_AXI_GPIO_2_BASEADDR + XGPIO_TRI_OFFSET, 0X1f);							 //设定BUTTON为输入方式
	Xil_Out32(XPAR_AXI_GPIO_2_BASEADDR + XGPIO_IER_OFFSET, XGPIO_IR_CH1_MASK);				 //通道1允许中断
	Xil_Out32(XPAR_AXI_GPIO_2_BASEADDR + XGPIO_GIE_OFFSET, XGPIO_GIE_GINTR_ENABLE_MASK);	 //允许GPIO中断输出
	Xil_Out32(XPAR_AXI_INTC_0_BASEADDR + XIN_IER_OFFSET, XPAR_AXI_GPIO_2_IP2INTC_IRPT_MASK); //对中断控制器进行中断源使能
	Xil_Out32(XPAR_AXI_INTC_0_BASEADDR + XIN_MER_OFFSET, XIN_INT_MASTER_ENABLE_MASK | XIN_INT_HARDWARE_ENABLE_MASK);
	TftConfigPtr = XTft_LookupConfig(TFT_DEVICE_ID);
	XTft_CfgInitialize(&TftInstance, TftConfigPtr, TftConfigPtr->BaseAddress); //初始化tft
	XTft_SetFrameBaseAddr(&TftInstance, TFT_FRAME_BASEADDR0);				   //设置tft的存储基地
	microblaze_enable_interrupts();											   //允许微处理器接收中断

	while (1)
	{

		Start_Show();
		while(direction != start);
		direction = up;

		FOOD *fd;
		FOOD *bomb;
		SNAKE *head, *ptemp;

		head = (SNAKE *)malloc(sizeof(SNAKE));
		fd = (FOOD *)malloc(sizeof(FOOD));
		bomb = (FOOD *)malloc(sizeof(FOOD));

		XTft_ClearScreen(&TftInstance);
		IniScreen(head);

		bomb->x = START_X + 1;
		bomb->y = START_X + 1;
		CreatFood(fd, bomb, head);
		while (1)
		{
			sw_status = Xil_In32(XPAR_AXI_GPIO_0_BASEADDR + XGPIO_DATA_OFFSET); //读取开关状态
			if (sw_status == 0x00000000)
				RemoveSnk(head);
			else
			{
				ptemp = (SNAKE *)malloc(sizeof(SNAKE)); //临时的，用来增加在蛇的头部
				Button_Handler(); 
				switch (direction)
				{
				case up:
					ptemp->x = head->x;
					ptemp->y = head->y - 1;
					break;
				case down:
					ptemp->x = head->x;
					ptemp->y = head->y + 1;
					break;
				case left:
					ptemp->x = head->x - 1;
					ptemp->y = head->y;
					break;
				case right:
					ptemp->x = head->x + 1;
					ptemp->y = head->y;
					break;
				}
				if (!Eated(head, fd)) //?如果没吃到，那自然不增加蛇的长度
				{
					ptemp->end = head->end->pre; //将蛇的尾端位置改变，变为倒数第二个
					if ((ptemp->end->x) > (head->end->x) || (ptemp->end->y) > (head->end->y))
					{
						XTft_FillScreen(&TftInstance, (head->end->x) * ADD_NUM, (head->end->y) * ADD_NUM, (ptemp->end->x + 1) * ADD_NUM - 1,
										(ptemp->end->y + 1) * ADD_NUM - 1, COLOR_BLACK); //修改 清除蛇尾
					}
					if ((ptemp->end->x) < (head->end->x) || (ptemp->end->y) < (head->end->y))
					{
						XTft_FillScreen(&TftInstance, (ptemp->end->x) * ADD_NUM, (ptemp->end->y) * ADD_NUM, (head->end->x + 1) * ADD_NUM - 1,
										(head->end->y + 1) * ADD_NUM - 1, COLOR_BLACK); //修改 清除蛇尾
					}

					head->end->pre->next = NULL; //再连接下
					free(head->end);
					head->end = NULL;
				}
				else
				{
					ptemp->end = head->end; //到了在原有的基础上换一个头，这样就多了一节
					CreatFood(fd, bomb, head);
				}

				head->pre = ptemp; //链表连接
				ptemp->next = head;
				ptemp->pre = NULL;
				head = ptemp;

				if (GameOver(head)|| Bombed(head, bomb) || (head->x == START_X) || (head->x == START_X + SCREEN_WIDTH) || (head->y == START_Y) || (head->y == START_Y + SCREEN_LENGTH)) //?????????
				{
					BuildSnk(head);
					XTft_ClearScreen(&TftInstance);
					DeleteSnack(head); //内存释放掉
					free(fd);
					GameOver_Show();
					return 0;
				}
				BuildSnk(head);
				int i, j;
				for (i = 0; i < 3000 - 10 * sw_status; i++)
					for (j = 0; j < 1000; j++)
						; //延时可控制蛇的速度
			}
		}
	}
	return 0;
}

void My_ISR()
{
	int status;
	status = Xil_In32(XPAR_AXI_INTC_0_BASEADDR + XIN_ISR_OFFSET); //读取ISR
	if ((status & XPAR_AXI_GPIO_2_IP2INTC_IRPT_MASK) == XPAR_AXI_GPIO_2_IP2INTC_IRPT_MASK)
		Button_Handler();										  //调用按键中断
	Xil_Out32(XPAR_AXI_INTC_0_BASEADDR + XIN_IAR_OFFSET, status); //写IAR
}

void Button_Handler()
{
	button_status = Xil_In8(XPAR_GPIO_2_BASEADDR + XGPIO_DATA_OFFSET) & 0x1f; //读取按键的状态值
	if ((button_status == Btn_UP) && (direction != down))
		direction = up;
	if ((button_status == Btn_DOWN) && (direction != up))
		direction = down;
	if ((button_status == Btn_LEFT) && (direction != right))
		direction = left;
	if ((button_status == Btn_RIGHT) && (direction != left))
		direction = right;
	if (button_status == Btn_STOP)
		direction = start;
	Xil_Out32(XPAR_GPIO_2_BASEADDR + XGPIO_ISR_OFFSET, XGPIO_IR_MASK); //写IPISR,清除中断
	Xil_Out32(XPAR_AXI_INTC_0_BASEADDR + XIN_IAR_OFFSET, 0x2);		   //写INTC_IAR,清除中断状态
}

void Start_Show()
{
	int i, j;
	u32 color,addr;
	for (i = 60; i < 420; i++)
	{
		for (j = 80; j < 560; j++)
		{
			addr = (unsigned int) gImage_InitGame + ((i-60)*480 + (j-80))*4;
			color = Xil_In32(addr);
			Xil_Out32(TFT_FRAME_BASEADDR0 + 4 * (1024 * i + j) , color);
		}
	}
}

int Random(int n) //随机生成食物的位置
{
	srand(seed++);
	return (rand() % n);
}

void BuildSnk(SNAKE *head) /*画出蛇身*/
{
	SNAKE *p = head;
	while (p != NULL)
	{
		XTft_FillScreen(&TftInstance, (p->x) * ADD_NUM, (p->y) * ADD_NUM, (p->x + 1) * ADD_NUM - 1, (p->y + 1) * ADD_NUM - 1, FGCOLOR_blu); //通过队列索引画出蛇的组成一部分
		p = p->next;
	}
}

void RemoveSnk(SNAKE *head) //清除函数
{
	SNAKE *p = head;
	while (p != NULL)
	{
		XTft_FillScreen(&TftInstance, (p->x) * ADD_NUM, (p->y) * ADD_NUM, (p->x + 1) * ADD_NUM - 1,
						(p->y + 1) * ADD_NUM - 1, COLOR_BLACK); //改变颜色
		p = p->next;
	}
}

void RemoveBomb(FOOD *bomb)
{	
	XTft_FillScreen(&TftInstance, (bomb->x) * ADD_NUM, (bomb->y) * ADD_NUM, (bomb->x + 1) * ADD_NUM - 1,
					(bomb->y + 1) * ADD_NUM - 1, COLOR_BLACK); //改变颜色
}

void DeleteSnack(SNAKE *head)
{
	SNAKE *p = head->end;
	SNAKE *p_temp;
	while (p != NULL)
	{
		p_temp = p->pre;
		free(p); //释放蛇的内存
		p = p_temp;
	}
}

void IniScreen(SNAKE *head) //初始化屏幕
{
	int i;
	SNAKE *p1, *p2;

	//--------------将蛇初始化，对链表进行一系列设置-------------------//
	head->x = START_X + SCREEN_WIDTH / 2;
	head->y = START_Y + SCREEN_LENGTH / 2; //初始位置为屏幕中间
	head->pre = NULL;
	p1 = head;
	i = 0;
	while (++i < 3) //通过循环建立三个snake数据结构并相
	{
		p2 = p1;
		p1 = (SNAKE *)malloc(sizeof(SNAKE));
		p1->x = START_X + SCREEN_WIDTH / 2;
		p1->y = START_Y + SCREEN_LENGTH / 2 + i;
		p1->end = NULL;
		p2->next = p1;
		p1->pre = p2;
	}
	p1->next = NULL;
	head->end = p1;
	BuildSnk(head); //显示蛇身
}

void CreatFood(FOOD *fd, FOOD *bomb, SNAKE *snk) //生成食物，并且让食物不与蛇体冲突
{
	SNAKE *p = snk;
	int clash = 0; //标记食物位置是否和蛇和食物发生冲突
	count ++;

	while (1)
	{
		clash = 0;
		fd->x = START_X + 1 + Random(SCREEN_WIDTH);	 // x控制在边宽内
		fd->y = START_Y + 1 + Random(SCREEN_LENGTH); // y控制在变长内
		for (; p != NULL; p = p->next)
		{
			if (fd->x == p->x && fd->y == p->y && fd->x == bomb->x && fd->y == bomb->y)
			{
				clash = 1;
				break;
			}
		}
		if (clash == 0)
		{
			if(count % 3 == 0) CreatBomb(fd, bomb, snk); //吃到三次食物生成一次炸弹
			break;
		}
	}
	XTft_FillScreen(&TftInstance, (fd->x) * ADD_NUM, (fd->y) * ADD_NUM, (fd->x + 1) * ADD_NUM - 1,
					(fd->y + 1) * ADD_NUM - 1, COLOR_WRITE); //显示食物
}

void CreatBomb(FOOD *fd, FOOD *bomb, SNAKE *snk) //生成炸弹，并且让炸弹不与蛇体冲突
{
	SNAKE *p = snk;
	int clash = 0; //标记炸弹位置是否和蛇和食物发生冲突
	RemoveBomb(bomb);
	while (1)
	{
		clash = 0;
		bomb->x = START_X + 1 + Random(SCREEN_WIDTH);	 // x控制在边宽内
		bomb->y = START_Y + 1 + Random(SCREEN_LENGTH); // y控制在变长内
		for (; p != NULL; p = p->next)
		{
			if (bomb->x == p->x && bomb->y == p->y && bomb->x == fd->x && bomb->y == fd->y)
			{
				clash = 1;
				break;
			}
		}
		if (clash == 0)
		{
			break;
		}
	}
	XTft_FillScreen(&TftInstance, (bomb->x) * ADD_NUM, (bomb->y) * ADD_NUM, (bomb->x + 1) * ADD_NUM - 1,
					(bomb->y + 1) * ADD_NUM - 1, FGCOLOR_red); //显示炸弹
}

int Eated(SNAKE *head, FOOD *fd) //有没有吃到食物
{
	if (head->x == fd->x && head->y == fd->y)
		return 1;
	return 0;
}

int Bombed(SNAKE *head, FOOD *bomb) //有没有吃到炸弹
{
	if (head->x == bomb->x && head->y == bomb->y)
		return 1;
	return 0;
}

int GameOver(SNAKE *head) //判断游戏结束了没.
{
	SNAKE *p;
	for (p = head->next; p != NULL; p = p->next)
	{
		if (head->x == p->x && head->y == p->y)
			return 1;
	}
	return 0;
}

void GameOver_Show()
{
	int i, j;
	u32 color,addr;
	for (i = 60; i < 420; i++)
	{
		for (j = 80; j < 560; j++)
		{
			addr = (unsigned int) gImage_gameover + ((i-60)*480 + (j-80))*4;
			color = Xil_In32(addr);
			Xil_Out32(TFT_FRAME_BASEADDR0 + 4 * (1024 * i + j) , color);
		}
	}
	// XTft_EnableDisplay(&TftInstance);
}
