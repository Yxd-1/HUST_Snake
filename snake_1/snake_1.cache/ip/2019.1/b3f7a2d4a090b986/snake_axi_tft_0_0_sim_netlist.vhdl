-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sun Jun  5 19:50:46 2022
-- Host        : LAPTOP-TMRLG6GU running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ snake_axi_tft_0_0_sim_netlist.vhdl
-- Design      : snake_axi_tft_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_addr_cntl is
  port (
    \out\ : out STD_LOGIC;
    sig_addr2stat_cmd_fifo_empty : out STD_LOGIC;
    m_axi_arsize : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aclk : in STD_LOGIC;
    sig_pcc2data_calc_error : in STD_LOGIC;
    sig_pcc2addr_burst : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_rd_addr_valid_reg0 : in STD_LOGIC;
    sig_posted_to_axi_reg_0 : in STD_LOGIC;
    sig_cmd2all_doing_read : in STD_LOGIC;
    sig_llink2rd_allow_addr_req : in STD_LOGIC;
    sig_pcc2addr_cmd_valid : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \sig_next_len_reg_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_addr_cntl;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_addr_cntl is
  signal sig_addr2stat_calc_error : STD_LOGIC;
  signal \^sig_addr2stat_cmd_fifo_empty\ : STD_LOGIC;
  signal sig_addr_reg_full : STD_LOGIC;
  signal sig_next_addr_reg0 : STD_LOGIC;
  signal sig_posted_to_axi : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of sig_posted_to_axi : signal is "true";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of sig_posted_to_axi : signal is "no";
  signal sig_posted_to_axi_2 : STD_LOGIC;
  attribute RTL_KEEP of sig_posted_to_axi_2 : signal is "true";
  attribute equivalent_register_removal of sig_posted_to_axi_2 : signal is "no";
  signal sig_push_addr_reg1_out : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of sig_posted_to_axi_2_reg : label is "yes";
  attribute equivalent_register_removal of sig_posted_to_axi_2_reg : label is "no";
  attribute KEEP of sig_posted_to_axi_reg : label is "yes";
  attribute equivalent_register_removal of sig_posted_to_axi_reg : label is "no";
begin
  \out\ <= sig_posted_to_axi;
  sig_addr2stat_cmd_fifo_empty <= \^sig_addr2stat_cmd_fifo_empty\;
sig_addr_reg_empty_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => '0',
      Q => \^sig_addr2stat_cmd_fifo_empty\,
      S => sig_next_addr_reg0
    );
sig_addr_reg_full_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_push_addr_reg1_out,
      Q => sig_addr_reg_full,
      R => sig_next_addr_reg0
    );
sig_calc_error_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_pcc2data_calc_error,
      Q => sig_addr2stat_calc_error,
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(0),
      Q => m_axi_araddr(0),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(10),
      Q => m_axi_araddr(10),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(11),
      Q => m_axi_araddr(11),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(12),
      Q => m_axi_araddr(12),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(13),
      Q => m_axi_araddr(13),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(14),
      Q => m_axi_araddr(14),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(15),
      Q => m_axi_araddr(15),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(16),
      Q => m_axi_araddr(16),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(17),
      Q => m_axi_araddr(17),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(18),
      Q => m_axi_araddr(18),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(19),
      Q => m_axi_araddr(19),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(1),
      Q => m_axi_araddr(1),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(20),
      Q => m_axi_araddr(20),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(21),
      Q => m_axi_araddr(21),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(22),
      Q => m_axi_araddr(22),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(23),
      Q => m_axi_araddr(23),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(24),
      Q => m_axi_araddr(24),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(25),
      Q => m_axi_araddr(25),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(26),
      Q => m_axi_araddr(26),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(27),
      Q => m_axi_araddr(27),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(28),
      Q => m_axi_araddr(28),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(29),
      Q => m_axi_araddr(29),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(2),
      Q => m_axi_araddr(2),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(30),
      Q => m_axi_araddr(30),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(31),
      Q => m_axi_araddr(31),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(3),
      Q => m_axi_araddr(3),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(4),
      Q => m_axi_araddr(4),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(5),
      Q => m_axi_araddr(5),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(6),
      Q => m_axi_araddr(6),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(7),
      Q => m_axi_araddr(7),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(8),
      Q => m_axi_araddr(8),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(9),
      Q => m_axi_araddr(9),
      R => sig_next_addr_reg0
    );
\sig_next_burst_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_pcc2addr_burst(0),
      Q => m_axi_arburst(0),
      R => sig_next_addr_reg0
    );
\sig_next_len_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => \sig_next_len_reg_reg[3]_0\(0),
      Q => m_axi_arlen(0),
      R => sig_next_addr_reg0
    );
\sig_next_len_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => \sig_next_len_reg_reg[3]_0\(1),
      Q => m_axi_arlen(1),
      R => sig_next_addr_reg0
    );
\sig_next_len_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => \sig_next_len_reg_reg[3]_0\(2),
      Q => m_axi_arlen(2),
      R => sig_next_addr_reg0
    );
\sig_next_len_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => \sig_next_len_reg_reg[3]_0\(3),
      Q => m_axi_arlen(3),
      R => sig_next_addr_reg0
    );
\sig_next_size_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => '1',
      Q => m_axi_arsize(0),
      R => sig_next_addr_reg0
    );
sig_posted_to_axi_2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_push_addr_reg1_out,
      Q => sig_posted_to_axi_2,
      R => sig_posted_to_axi_reg_0
    );
sig_posted_to_axi_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_push_addr_reg1_out,
      Q => sig_posted_to_axi,
      R => sig_posted_to_axi_reg_0
    );
sig_rd_addr_valid_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAAAAAA"
    )
        port map (
      I0 => sig_posted_to_axi_reg_0,
      I1 => sig_addr2stat_calc_error,
      I2 => sig_cmd2all_doing_read,
      I3 => m_axi_arready,
      I4 => sig_addr_reg_full,
      O => sig_next_addr_reg0
    );
sig_rd_addr_valid_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => sig_cmd2all_doing_read,
      I1 => sig_llink2rd_allow_addr_req,
      I2 => \^sig_addr2stat_cmd_fifo_empty\,
      I3 => sig_pcc2addr_cmd_valid,
      O => sig_push_addr_reg1_out
    );
sig_rd_addr_valid_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_rd_addr_valid_reg0,
      Q => m_axi_arvalid,
      R => sig_next_addr_reg0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_cmd_status is
  port (
    sig_cmd2pcc_cmd_valid : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_cmd_type_req : out STD_LOGIC;
    sig_cmd_mst_length : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_cmd2all_doing_read : out STD_LOGIC;
    sig_cmd_cmplt_reg_reg_0 : out STD_LOGIC;
    sig_status_reg_empty : out STD_LOGIC;
    md_error : out STD_LOGIC;
    sig_rdwr2llink_int_err : out STD_LOGIC;
    bus2ip_mst_cmdack : out STD_LOGIC;
    sig_push_status1_out : out STD_LOGIC;
    sig_rd_sts_tag_reg0 : out STD_LOGIC;
    sig_rd_llink_enable : out STD_LOGIC;
    sig_doing_read_reg_reg_0 : out STD_LOGIC;
    sig_status_reg_empty_reg_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 24 downto 0 );
    \out\ : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ip2bus_mstrd_req : in STD_LOGIC;
    IP2Bus_Mst_Type : in STD_LOGIC;
    sig_error_sh_reg_reg_0 : in STD_LOGIC;
    sig_cmd_cmplt_reg_reg_1 : in STD_LOGIC;
    sig_rsc2stat_status : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_rsc2stat_status_valid : in STD_LOGIC;
    sig_rd_sts_slverr_reg_reg : in STD_LOGIC;
    sig_doing_read_reg : in STD_LOGIC;
    sig_pcc_taking_command : in STD_LOGIC;
    sig_pcc2data_cmd_valid : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 24 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_cmd_status;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_cmd_status is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^bus2ip_mst_cmdack\ : STD_LOGIC;
  signal \^sig_cmd2all_doing_read\ : STD_LOGIC;
  signal sig_cmd_cmplt_reg_i_1_n_0 : STD_LOGIC;
  signal \^sig_cmd_cmplt_reg_reg_0\ : STD_LOGIC;
  signal sig_cmd_empty_reg : STD_LOGIC;
  signal sig_cmd_empty_reg_i_1_n_0 : STD_LOGIC;
  signal sig_cmd_mstrd_req : STD_LOGIC;
  signal sig_cmdack_reg_i_1_n_0 : STD_LOGIC;
  signal sig_doing_read_reg_i_1_n_0 : STD_LOGIC;
  signal sig_init_reg1 : STD_LOGIC;
  signal sig_init_reg2 : STD_LOGIC;
  signal sig_int_error_pulse_reg_i_1_n_0 : STD_LOGIC;
  signal \^sig_push_status1_out\ : STD_LOGIC;
  signal \^sig_rdwr2llink_int_err\ : STD_LOGIC;
  signal \^sig_status_reg_empty\ : STD_LOGIC;
  signal sig_status_reg_empty_i_1_n_0 : STD_LOGIC;
  signal sig_status_reg_full : STD_LOGIC;
  signal sig_status_reg_full_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of sig_error_sh_reg_i_2 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of sig_next_cmd_cmplt_reg_i_6 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of sig_rd_sts_reg_full_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of sig_xfer_reg_empty_i_7 : label is "soft_lutpair8";
begin
  E(0) <= \^e\(0);
  bus2ip_mst_cmdack <= \^bus2ip_mst_cmdack\;
  sig_cmd2all_doing_read <= \^sig_cmd2all_doing_read\;
  sig_cmd_cmplt_reg_reg_0 <= \^sig_cmd_cmplt_reg_reg_0\;
  sig_push_status1_out <= \^sig_push_status1_out\;
  sig_rdwr2llink_int_err <= \^sig_rdwr2llink_int_err\;
  sig_status_reg_empty <= \^sig_status_reg_empty\;
sig_cmd_cmplt_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000070"
    )
        port map (
      I0 => sig_cmd_cmplt_reg_reg_1,
      I1 => \^sig_cmd2all_doing_read\,
      I2 => sig_status_reg_full,
      I3 => \out\,
      I4 => \^sig_cmd_cmplt_reg_reg_0\,
      O => sig_cmd_cmplt_reg_i_1_n_0
    );
sig_cmd_cmplt_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_cmd_cmplt_reg_i_1_n_0,
      Q => \^sig_cmd_cmplt_reg_reg_0\,
      R => '0'
    );
sig_cmd_empty_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF44F4"
    )
        port map (
      I0 => ip2bus_mstrd_req,
      I1 => sig_cmd_empty_reg,
      I2 => sig_init_reg1,
      I3 => sig_init_reg2,
      I4 => \^sig_cmd_cmplt_reg_reg_0\,
      O => sig_cmd_empty_reg_i_1_n_0
    );
sig_cmd_empty_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_cmd_empty_reg_i_1_n_0,
      Q => sig_cmd_empty_reg,
      R => \out\
    );
sig_cmd_full_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sig_cmd_empty_reg,
      I1 => ip2bus_mstrd_req,
      O => \^e\(0)
    );
sig_cmd_full_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => '1',
      Q => sig_cmd2pcc_cmd_valid,
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => D(3),
      Q => Q(3),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => D(4),
      Q => Q(4),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => D(5),
      Q => Q(5),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => D(6),
      Q => Q(6),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => D(7),
      Q => Q(7),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => D(8),
      Q => Q(8),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => D(9),
      Q => Q(9),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => D(10),
      Q => Q(10),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => D(11),
      Q => Q(11),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => D(12),
      Q => Q(12),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => D(13),
      Q => Q(13),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => D(14),
      Q => Q(14),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => D(15),
      Q => Q(15),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => D(16),
      Q => Q(16),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => D(17),
      Q => Q(17),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => D(18),
      Q => Q(18),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => D(19),
      Q => Q(19),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => D(20),
      Q => Q(20),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => D(21),
      Q => Q(21),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => D(22),
      Q => Q(22),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => D(23),
      Q => Q(23),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => D(24),
      Q => Q(24),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => D(0),
      Q => Q(0),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => D(1),
      Q => Q(1),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => D(2),
      Q => Q(2),
      R => SR(0)
    );
\sig_cmd_mst_length_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => '1',
      Q => sig_cmd_mst_length(0),
      R => SR(0)
    );
sig_cmd_mstrd_req_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => ip2bus_mstrd_req,
      Q => sig_cmd_mstrd_req,
      R => SR(0)
    );
sig_cmd_type_req_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => IP2Bus_Mst_Type,
      Q => sig_cmd_type_req,
      R => SR(0)
    );
sig_cmdack_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => ip2bus_mstrd_req,
      I1 => sig_cmd_empty_reg,
      I2 => \^bus2ip_mst_cmdack\,
      I3 => \out\,
      O => sig_cmdack_reg_i_1_n_0
    );
sig_cmdack_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_cmdack_reg_i_1_n_0,
      Q => \^bus2ip_mst_cmdack\,
      R => '0'
    );
sig_doing_read_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \^sig_cmd2all_doing_read\,
      I1 => sig_pcc_taking_command,
      I2 => sig_cmd_mstrd_req,
      I3 => \out\,
      I4 => \^sig_cmd_cmplt_reg_reg_0\,
      O => sig_doing_read_reg_i_1_n_0
    );
sig_doing_read_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_doing_read_reg_i_1_n_0,
      Q => \^sig_cmd2all_doing_read\,
      R => '0'
    );
sig_error_sh_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sig_rsc2stat_status_valid,
      I1 => \^sig_status_reg_empty\,
      I2 => \^sig_cmd2all_doing_read\,
      O => \^sig_push_status1_out\
    );
sig_error_sh_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_error_sh_reg_reg_0,
      Q => md_error,
      R => \out\
    );
sig_init_reg1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => '1',
      Q => sig_init_reg1,
      R => \out\
    );
sig_init_reg2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_init_reg1,
      Q => sig_init_reg2,
      R => \out\
    );
sig_int_error_pulse_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080888000"
    )
        port map (
      I0 => \^sig_cmd2all_doing_read\,
      I1 => sig_cmd_cmplt_reg_reg_1,
      I2 => sig_rsc2stat_status(0),
      I3 => \^sig_push_status1_out\,
      I4 => \^sig_rdwr2llink_int_err\,
      I5 => \out\,
      O => sig_int_error_pulse_reg_i_1_n_0
    );
sig_int_error_pulse_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_int_error_pulse_reg_i_1_n_0,
      Q => \^sig_rdwr2llink_int_err\,
      R => '0'
    );
sig_llink_busy_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^sig_cmd2all_doing_read\,
      I1 => sig_doing_read_reg,
      O => sig_rd_llink_enable
    );
sig_next_cmd_cmplt_reg_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5DFF"
    )
        port map (
      I0 => \^sig_cmd2all_doing_read\,
      I1 => sig_rsc2stat_status_valid,
      I2 => \^sig_status_reg_empty\,
      I3 => sig_pcc2data_cmd_valid,
      O => sig_doing_read_reg_reg_0
    );
sig_rd_sts_reg_full_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => sig_rd_sts_slverr_reg_reg,
      I1 => \^sig_cmd2all_doing_read\,
      I2 => \^sig_status_reg_empty\,
      I3 => sig_rsc2stat_status_valid,
      O => sig_rd_sts_tag_reg0
    );
sig_status_reg_empty_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2FFF2F2FFFFF2F2"
    )
        port map (
      I0 => sig_init_reg1,
      I1 => sig_init_reg2,
      I2 => \^sig_cmd_cmplt_reg_reg_0\,
      I3 => \^sig_cmd2all_doing_read\,
      I4 => \^sig_status_reg_empty\,
      I5 => sig_rsc2stat_status_valid,
      O => sig_status_reg_empty_i_1_n_0
    );
sig_status_reg_empty_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_status_reg_empty_i_1_n_0,
      Q => \^sig_status_reg_empty\,
      R => \out\
    );
sig_status_reg_full_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000D555C000"
    )
        port map (
      I0 => \^sig_cmd_cmplt_reg_reg_0\,
      I1 => \^sig_cmd2all_doing_read\,
      I2 => \^sig_status_reg_empty\,
      I3 => sig_rsc2stat_status_valid,
      I4 => sig_status_reg_full,
      I5 => \out\,
      O => sig_status_reg_full_i_1_n_0
    );
sig_status_reg_full_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_status_reg_full_i_1_n_0,
      Q => sig_status_reg_full,
      R => '0'
    );
sig_xfer_reg_empty_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \^sig_status_reg_empty\,
      I1 => sig_rsc2stat_status_valid,
      I2 => \^sig_cmd2all_doing_read\,
      O => sig_status_reg_empty_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_pcc is
  port (
    sig_sm_halt_reg : out STD_LOGIC;
    sig_pcc2addr_burst : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_pcc2data_cmd_cmplt : out STD_LOGIC;
    sig_pcc2data_calc_error : out STD_LOGIC;
    sig_pcc2all_calc_err : out STD_LOGIC;
    sig_pcc2data_eof : out STD_LOGIC;
    sig_pcc2data_sequential : out STD_LOGIC;
    sig_pcc2addr_cmd_valid : out STD_LOGIC;
    sig_input_reg_empty : out STD_LOGIC;
    sig_cmd2data_valid_reg_0 : out STD_LOGIC;
    sig_push_input_reg16_out : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \sig_cmd_mst_addr_reg[23]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \sig_cmd_mst_addr_reg[27]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \sig_cmd_mst_addr_reg[31]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sig_pcc_taking_command : out STD_LOGIC;
    \sig_btt_cntr_reg[6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \sig_xfer_len_reg_reg[3]_0\ : out STD_LOGIC;
    \sig_xfer_len_reg_reg[3]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sig_rd_addr_valid_reg0 : out STD_LOGIC;
    \sig_btt_cntr_reg[7]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_calc_error_reg_reg_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \sig_xfer_addr_reg_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \out\ : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sig_cmd_full_reg_reg : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_cmd2pcc_cmd_valid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 24 downto 0 );
    \sig_xfer_len_reg_reg[0]_0\ : in STD_LOGIC;
    \sig_xfer_len_reg_reg[0]_1\ : in STD_LOGIC;
    sig_rdc2pcc_cmd_ready : in STD_LOGIC;
    sig_cmd2all_doing_read : in STD_LOGIC;
    sig_llink2rd_allow_addr_req : in STD_LOGIC;
    sig_addr2stat_cmd_fifo_empty : in STD_LOGIC;
    \sig_xfer_len_reg_reg[0]_2\ : in STD_LOGIC;
    sig_next_calc_error_reg : in STD_LOGIC;
    sig_cmd_mst_length : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_cmd_type_req : in STD_LOGIC;
    \sig_btt_cntr_reg[11]_0\ : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_pcc;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_pcc is
  signal \FSM_onehot_sig_pcc_sm_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sig_pcc_sm_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sig_pcc_sm_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sig_pcc_sm_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sig_pcc_sm_state[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sig_pcc_sm_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_sig_pcc_sm_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_sig_pcc_sm_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_sig_pcc_sm_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_sig_pcc_sm_state_reg_n_0_[6]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[1]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_3_n_0\ : STD_LOGIC;
  signal \^gen_addr_32.sig_addr_cntr_incr_imreg_reg[6]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[10]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[11]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[12]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[13]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[14]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[6]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[7]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[8]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[9]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_msh_reg\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_first_xfer_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_5_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[0]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[10]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[11]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[12]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[13]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[14]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[1]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[2]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[3]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[4]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[5]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[6]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[7]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[8]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[9]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_1_in2_in : STD_LOGIC;
  signal sig_adjusted_addr_incr : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal sig_btt_cntr : STD_LOGIC_VECTOR ( 11 downto 7 );
  signal \^sig_btt_cntr_reg[6]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal sig_btt_lt_b2mbaa1 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_i_2_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_i_3_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_i_4_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_i_5_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_i_6_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_i_7_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_i_8_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_n_1 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_n_2 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_n_3 : STD_LOGIC;
  signal sig_bytes_to_mbaa : STD_LOGIC_VECTOR ( 6 to 6 );
  signal sig_calc_error_pushed : STD_LOGIC;
  signal sig_calc_error_pushed_i_1_n_0 : STD_LOGIC;
  signal sig_calc_error_reg_i_1_n_0 : STD_LOGIC;
  signal sig_cmd2addr_valid_i_1_n_0 : STD_LOGIC;
  signal sig_cmd2data_valid_i_1_n_0 : STD_LOGIC;
  signal \^sig_cmd2data_valid_reg_0\ : STD_LOGIC;
  signal sig_cmd2dre_valid_i_1_n_0 : STD_LOGIC;
  signal sig_cmd2dre_valid_reg_n_0 : STD_LOGIC;
  signal sig_first_xfer : STD_LOGIC;
  signal sig_input_burst_type_reg : STD_LOGIC;
  signal sig_input_burst_type_reg_i_1_n_0 : STD_LOGIC;
  signal sig_input_eof_reg : STD_LOGIC;
  signal sig_input_eof_reg_i_1_n_0 : STD_LOGIC;
  signal \^sig_input_reg_empty\ : STD_LOGIC;
  signal sig_input_reg_empty_i_1_n_0 : STD_LOGIC;
  signal sig_ld_xfer_reg : STD_LOGIC;
  signal sig_ld_xfer_reg_i_1_n_0 : STD_LOGIC;
  signal sig_mbaa_addr_cntr_slice : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal sig_parent_done : STD_LOGIC;
  signal sig_parent_done_i_1_n_0 : STD_LOGIC;
  signal \^sig_pcc2addr_cmd_valid\ : STD_LOGIC;
  signal \^sig_pcc2all_calc_err\ : STD_LOGIC;
  signal \^sig_pcc2data_calc_error\ : STD_LOGIC;
  signal sig_predict_addr_lsh_im3_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^sig_push_input_reg16_out\ : STD_LOGIC;
  signal sig_push_xfer_reg15_out : STD_LOGIC;
  signal sig_sm_halt_ns : STD_LOGIC;
  signal \^sig_sm_halt_reg\ : STD_LOGIC;
  signal sig_sm_ld_calc2_reg_ns : STD_LOGIC;
  signal sig_sm_ld_xfer_reg_ns : STD_LOGIC;
  signal sig_sm_pop_input_reg : STD_LOGIC;
  signal sig_sm_pop_input_reg_ns : STD_LOGIC;
  signal sig_xfer_addr_reg0 : STD_LOGIC;
  signal sig_xfer_cmd_cmplt_reg_i_1_n_0 : STD_LOGIC;
  signal sig_xfer_eof_reg0 : STD_LOGIC;
  signal sig_xfer_is_seq_reg_i_10_n_0 : STD_LOGIC;
  signal sig_xfer_is_seq_reg_i_11_n_0 : STD_LOGIC;
  signal sig_xfer_is_seq_reg_i_12_n_0 : STD_LOGIC;
  signal sig_xfer_is_seq_reg_i_13_n_0 : STD_LOGIC;
  signal sig_xfer_is_seq_reg_i_14_n_0 : STD_LOGIC;
  signal sig_xfer_is_seq_reg_i_15_n_0 : STD_LOGIC;
  signal sig_xfer_is_seq_reg_i_16_n_0 : STD_LOGIC;
  signal sig_xfer_is_seq_reg_i_17_n_0 : STD_LOGIC;
  signal sig_xfer_is_seq_reg_i_18_n_0 : STD_LOGIC;
  signal sig_xfer_is_seq_reg_i_1_n_0 : STD_LOGIC;
  signal sig_xfer_is_seq_reg_i_2_n_0 : STD_LOGIC;
  signal sig_xfer_is_seq_reg_i_3_n_0 : STD_LOGIC;
  signal sig_xfer_is_seq_reg_i_4_n_0 : STD_LOGIC;
  signal sig_xfer_is_seq_reg_i_5_n_0 : STD_LOGIC;
  signal sig_xfer_is_seq_reg_i_6_n_0 : STD_LOGIC;
  signal sig_xfer_is_seq_reg_i_7_n_0 : STD_LOGIC;
  signal sig_xfer_is_seq_reg_i_8_n_0 : STD_LOGIC;
  signal sig_xfer_is_seq_reg_i_9_n_0 : STD_LOGIC;
  signal \sig_xfer_len_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_len_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_len_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_len_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \^sig_xfer_len_reg_reg[3]_1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sig_xfer_reg_empty : STD_LOGIC;
  signal sig_xfer_reg_empty_i_3_n_0 : STD_LOGIC;
  signal sig_xfer_reg_empty_i_5_n_0 : STD_LOGIC;
  signal \NLW_GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_sig_btt_lt_b2mbaa1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_sig_pcc_sm_state[1]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \FSM_onehot_sig_pcc_sm_state[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \FSM_onehot_sig_pcc_sm_state[5]_i_1\ : label is "soft_lutpair20";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_sig_pcc_sm_state_reg[0]\ : label is "init:0000001,calc_2:0001000,wait_on_xfer_push:0010000,chk_if_done:0100000,error_trap:1000000,calc_1:0000100,wait_for_cmd:0000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sig_pcc_sm_state_reg[1]\ : label is "init:0000001,calc_2:0001000,wait_on_xfer_push:0010000,chk_if_done:0100000,error_trap:1000000,calc_1:0000100,wait_for_cmd:0000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sig_pcc_sm_state_reg[2]\ : label is "init:0000001,calc_2:0001000,wait_on_xfer_push:0010000,chk_if_done:0100000,error_trap:1000000,calc_1:0000100,wait_for_cmd:0000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sig_pcc_sm_state_reg[3]\ : label is "init:0000001,calc_2:0001000,wait_on_xfer_push:0010000,chk_if_done:0100000,error_trap:1000000,calc_1:0000100,wait_for_cmd:0000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sig_pcc_sm_state_reg[4]\ : label is "init:0000001,calc_2:0001000,wait_on_xfer_push:0010000,chk_if_done:0100000,error_trap:1000000,calc_1:0000100,wait_for_cmd:0000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sig_pcc_sm_state_reg[5]\ : label is "init:0000001,calc_2:0001000,wait_on_xfer_push:0010000,chk_if_done:0100000,error_trap:1000000,calc_1:0000100,wait_for_cmd:0000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sig_pcc_sm_state_reg[6]\ : label is "init:0000001,calc_2:0001000,wait_on_xfer_push:0010000,chk_if_done:0100000,error_trap:1000000,calc_1:0000100,wait_for_cmd:0000010";
  attribute SOFT_HLUTNM of \GEN_ADDR_32.sig_addr_cntr_incr_imreg[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \GEN_ADDR_32.sig_addr_cntr_lsh[6]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of sig_calc_error_pushed_i_1 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of sig_sm_pop_input_reg_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of sig_xfer_cmd_cmplt_reg_i_1 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of sig_xfer_eof_reg_i_1 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of sig_xfer_is_seq_reg_i_10 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of sig_xfer_is_seq_reg_i_13 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of sig_xfer_is_seq_reg_i_15 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of sig_xfer_is_seq_reg_i_17 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of sig_xfer_is_seq_reg_i_18 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of sig_xfer_is_seq_reg_i_7 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of sig_xfer_is_seq_reg_i_9 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \sig_xfer_len_reg[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \sig_xfer_len_reg[2]_i_1\ : label is "soft_lutpair15";
begin
  \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[6]_0\(6 downto 0) <= \^gen_addr_32.sig_addr_cntr_incr_imreg_reg[6]_0\(6 downto 0);
  \sig_btt_cntr_reg[6]_0\(6 downto 0) <= \^sig_btt_cntr_reg[6]_0\(6 downto 0);
  sig_cmd2data_valid_reg_0 <= \^sig_cmd2data_valid_reg_0\;
  sig_input_reg_empty <= \^sig_input_reg_empty\;
  sig_pcc2addr_cmd_valid <= \^sig_pcc2addr_cmd_valid\;
  sig_pcc2all_calc_err <= \^sig_pcc2all_calc_err\;
  sig_pcc2data_calc_error <= \^sig_pcc2data_calc_error\;
  sig_push_input_reg16_out <= \^sig_push_input_reg16_out\;
  sig_sm_halt_reg <= \^sig_sm_halt_reg\;
  \sig_xfer_len_reg_reg[3]_1\(3 downto 0) <= \^sig_xfer_len_reg_reg[3]_1\(3 downto 0);
\FSM_onehot_sig_pcc_sm_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF4444F444"
    )
        port map (
      I0 => \^sig_push_input_reg16_out\,
      I1 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[1]\,
      I2 => sig_parent_done,
      I3 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[5]\,
      I4 => sig_calc_error_pushed,
      I5 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[0]\,
      O => \FSM_onehot_sig_pcc_sm_state[1]_i_1_n_0\
    );
\FSM_onehot_sig_pcc_sm_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \^sig_pcc2all_calc_err\,
      I1 => sig_cmd2pcc_cmd_valid,
      I2 => \^sig_sm_halt_reg\,
      I3 => \^sig_input_reg_empty\,
      O => \^sig_push_input_reg16_out\
    );
\FSM_onehot_sig_pcc_sm_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF040404"
    )
        port map (
      I0 => sig_calc_error_pushed,
      I1 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[5]\,
      I2 => sig_parent_done,
      I3 => \^sig_push_input_reg16_out\,
      I4 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[1]\,
      O => \FSM_onehot_sig_pcc_sm_state[2]_i_1_n_0\
    );
\FSM_onehot_sig_pcc_sm_state[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFAA"
    )
        port map (
      I0 => sig_sm_ld_xfer_reg_ns,
      I1 => sig_xfer_reg_empty,
      I2 => sig_ld_xfer_reg,
      I3 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[4]\,
      O => \FSM_onehot_sig_pcc_sm_state[4]_i_1_n_0\
    );
\FSM_onehot_sig_pcc_sm_state[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[4]\,
      I1 => sig_ld_xfer_reg,
      I2 => sig_xfer_reg_empty,
      O => \FSM_onehot_sig_pcc_sm_state[5]_i_1_n_0\
    );
\FSM_onehot_sig_pcc_sm_state[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[6]\,
      I1 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[5]\,
      I2 => sig_calc_error_pushed,
      O => \FSM_onehot_sig_pcc_sm_state[6]_i_1_n_0\
    );
\FSM_onehot_sig_pcc_sm_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => '0',
      Q => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[0]\,
      S => \out\
    );
\FSM_onehot_sig_pcc_sm_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \FSM_onehot_sig_pcc_sm_state[1]_i_1_n_0\,
      Q => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[1]\,
      R => \out\
    );
\FSM_onehot_sig_pcc_sm_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \FSM_onehot_sig_pcc_sm_state[2]_i_1_n_0\,
      Q => sig_sm_ld_calc2_reg_ns,
      R => \out\
    );
\FSM_onehot_sig_pcc_sm_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_sm_ld_calc2_reg_ns,
      Q => sig_sm_ld_xfer_reg_ns,
      R => \out\
    );
\FSM_onehot_sig_pcc_sm_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \FSM_onehot_sig_pcc_sm_state[4]_i_1_n_0\,
      Q => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[4]\,
      R => \out\
    );
\FSM_onehot_sig_pcc_sm_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \FSM_onehot_sig_pcc_sm_state[5]_i_1_n_0\,
      Q => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[5]\,
      R => \out\
    );
\FSM_onehot_sig_pcc_sm_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \FSM_onehot_sig_pcc_sm_state[6]_i_1_n_0\,
      Q => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[6]\,
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E222"
    )
        port map (
      I0 => \^sig_btt_cntr_reg[6]_0\(0),
      I1 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0\,
      I2 => sig_first_xfer,
      I3 => sig_mbaa_addr_cntr_slice(0),
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3CAA00AA"
    )
        port map (
      I0 => \^sig_btt_cntr_reg[6]_0\(1),
      I1 => sig_mbaa_addr_cntr_slice(1),
      I2 => sig_mbaa_addr_cntr_slice(0),
      I3 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0\,
      I4 => sig_first_xfer,
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[1]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22E222E222E2E222"
    )
        port map (
      I0 => \^sig_btt_cntr_reg[6]_0\(2),
      I1 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0\,
      I2 => sig_first_xfer,
      I3 => sig_mbaa_addr_cntr_slice(2),
      I4 => sig_mbaa_addr_cntr_slice(0),
      I5 => sig_mbaa_addr_cntr_slice(1),
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02A8FFFF02A80000"
    )
        port map (
      I0 => sig_first_xfer,
      I1 => sig_mbaa_addr_cntr_slice(2),
      I2 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_2_n_0\,
      I3 => sig_mbaa_addr_cntr_slice(3),
      I4 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0\,
      I5 => \^sig_btt_cntr_reg[6]_0\(3),
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(1),
      I1 => sig_mbaa_addr_cntr_slice(0),
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_2_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22E2E222"
    )
        port map (
      I0 => \^sig_btt_cntr_reg[6]_0\(4),
      I1 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0\,
      I2 => sig_first_xfer,
      I3 => sig_mbaa_addr_cntr_slice(4),
      I4 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_3_n_0\,
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22E222E222E2E222"
    )
        port map (
      I0 => \^sig_btt_cntr_reg[6]_0\(5),
      I1 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0\,
      I2 => sig_first_xfer,
      I3 => sig_mbaa_addr_cntr_slice(5),
      I4 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_3_n_0\,
      I5 => sig_mbaa_addr_cntr_slice(4),
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2222222A"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0\,
      I1 => sig_first_xfer,
      I2 => sig_mbaa_addr_cntr_slice(5),
      I3 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_3_n_0\,
      I4 => sig_mbaa_addr_cntr_slice(4),
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sig_xfer_is_seq_reg_i_4_n_0,
      I1 => sig_btt_lt_b2mbaa1,
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(0),
      I1 => sig_mbaa_addr_cntr_slice(1),
      I2 => sig_mbaa_addr_cntr_slice(3),
      I3 => sig_mbaa_addr_cntr_slice(2),
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_3_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc2_reg_ns,
      D => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_1_n_0\,
      Q => \^gen_addr_32.sig_addr_cntr_incr_imreg_reg[6]_0\(0),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc2_reg_ns,
      D => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[1]_i_1_n_0\,
      Q => \^gen_addr_32.sig_addr_cntr_incr_imreg_reg[6]_0\(1),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc2_reg_ns,
      D => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_1_n_0\,
      Q => \^gen_addr_32.sig_addr_cntr_incr_imreg_reg[6]_0\(2),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc2_reg_ns,
      D => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_1_n_0\,
      Q => \^gen_addr_32.sig_addr_cntr_incr_imreg_reg[6]_0\(3),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc2_reg_ns,
      D => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_1_n_0\,
      Q => \^gen_addr_32.sig_addr_cntr_incr_imreg_reg[6]_0\(4),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc2_reg_ns,
      D => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_1_n_0\,
      Q => \^gen_addr_32.sig_addr_cntr_incr_imreg_reg[6]_0\(5),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc2_reg_ns,
      D => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_1_n_0\,
      Q => \^gen_addr_32.sig_addr_cntr_incr_imreg_reg[6]_0\(6),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA2AA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[0]\,
      I1 => \^sig_input_reg_empty\,
      I2 => \^sig_sm_halt_reg\,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => \^sig_pcc2all_calc_err\,
      O => p_1_in(0)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => Q(3),
      I1 => \^sig_pcc2all_calc_err\,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => \^sig_sm_halt_reg\,
      I4 => \^sig_input_reg_empty\,
      I5 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[10]\,
      O => p_1_in(10)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => Q(4),
      I1 => \^sig_pcc2all_calc_err\,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => \^sig_sm_halt_reg\,
      I4 => \^sig_input_reg_empty\,
      I5 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[11]\,
      O => p_1_in(11)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => Q(5),
      I1 => \^sig_pcc2all_calc_err\,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => \^sig_sm_halt_reg\,
      I4 => \^sig_input_reg_empty\,
      I5 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[12]\,
      O => p_1_in(12)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => Q(6),
      I1 => \^sig_pcc2all_calc_err\,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => \^sig_sm_halt_reg\,
      I4 => \^sig_input_reg_empty\,
      I5 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[13]\,
      O => p_1_in(13)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => Q(7),
      I1 => \^sig_pcc2all_calc_err\,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => \^sig_sm_halt_reg\,
      I4 => \^sig_input_reg_empty\,
      I5 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[14]\,
      O => p_1_in(14)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => \^sig_push_input_reg16_out\,
      I1 => sig_xfer_reg_empty,
      I2 => sig_ld_xfer_reg,
      I3 => sig_input_burst_type_reg,
      O => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => Q(8),
      I1 => \^sig_pcc2all_calc_err\,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => \^sig_sm_halt_reg\,
      I4 => \^sig_input_reg_empty\,
      I5 => p_0_in,
      O => p_1_in(15)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA2AA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[1]\,
      I1 => \^sig_input_reg_empty\,
      I2 => \^sig_sm_halt_reg\,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => \^sig_pcc2all_calc_err\,
      O => p_1_in(1)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA2AA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[2]\,
      I1 => \^sig_input_reg_empty\,
      I2 => \^sig_sm_halt_reg\,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => \^sig_pcc2all_calc_err\,
      O => p_1_in(2)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA2AA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[3]\,
      I1 => \^sig_input_reg_empty\,
      I2 => \^sig_sm_halt_reg\,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => \^sig_pcc2all_calc_err\,
      O => p_1_in(3)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA2AA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[4]\,
      I1 => \^sig_input_reg_empty\,
      I2 => \^sig_sm_halt_reg\,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => \^sig_pcc2all_calc_err\,
      O => p_1_in(4)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA2AA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[5]\,
      I1 => \^sig_input_reg_empty\,
      I2 => \^sig_sm_halt_reg\,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => \^sig_pcc2all_calc_err\,
      O => p_1_in(5)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA2AA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[6]\,
      I1 => \^sig_input_reg_empty\,
      I2 => \^sig_sm_halt_reg\,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => \^sig_pcc2all_calc_err\,
      O => p_1_in(6)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => Q(0),
      I1 => \^sig_pcc2all_calc_err\,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => \^sig_sm_halt_reg\,
      I4 => \^sig_input_reg_empty\,
      I5 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[7]\,
      O => p_1_in(7)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => Q(1),
      I1 => \^sig_pcc2all_calc_err\,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => \^sig_sm_halt_reg\,
      I4 => \^sig_input_reg_empty\,
      I5 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[8]\,
      O => p_1_in(8)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => Q(2),
      I1 => \^sig_pcc2all_calc_err\,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => \^sig_sm_halt_reg\,
      I4 => \^sig_input_reg_empty\,
      I5 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[9]\,
      O => p_1_in(9)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => p_1_in(0),
      Q => sig_mbaa_addr_cntr_slice(0),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => p_1_in(10),
      Q => \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[10]\,
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => p_1_in(11),
      Q => \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[11]\,
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => p_1_in(12),
      Q => \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[12]\,
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => p_1_in(13),
      Q => \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[13]\,
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => p_1_in(14),
      Q => \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[14]\,
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => p_1_in(15),
      Q => p_1_in2_in,
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => p_1_in(1),
      Q => sig_mbaa_addr_cntr_slice(1),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => p_1_in(2),
      Q => sig_mbaa_addr_cntr_slice(2),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => p_1_in(3),
      Q => sig_mbaa_addr_cntr_slice(3),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => p_1_in(4),
      Q => sig_mbaa_addr_cntr_slice(4),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => p_1_in(5),
      Q => sig_mbaa_addr_cntr_slice(5),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => p_1_in(6),
      Q => \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[6]\,
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => p_1_in(7),
      Q => \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[7]\,
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => p_1_in(8),
      Q => \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[8]\,
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => p_1_in(9),
      Q => \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[9]\,
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^sig_push_input_reg16_out\,
      I1 => p_0_in,
      I2 => p_1_in2_in,
      I3 => sig_input_burst_type_reg,
      I4 => sig_ld_xfer_reg,
      I5 => sig_xfer_reg_empty,
      O => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => O(0),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(0),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0\(2),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(10),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0\(3),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(11),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_0\(0),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(12),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_0\(1),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(13),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_0\(2),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(14),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_0\(3),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(15),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => O(1),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(1),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => O(2),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(2),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => O(3),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(3),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0\(0),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(4),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0\(1),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(5),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0\(2),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(6),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0\(3),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(7),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0\(0),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(8),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0\(1),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(9),
      R => \out\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4730"
    )
        port map (
      I0 => sig_first_xfer,
      I1 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0\,
      I2 => \^sig_btt_cntr_reg[6]_0\(0),
      I3 => sig_mbaa_addr_cntr_slice(0),
      O => sig_adjusted_addr_incr(0)
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7447474703303030"
    )
        port map (
      I0 => sig_first_xfer,
      I1 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0\,
      I2 => \^sig_btt_cntr_reg[6]_0\(1),
      I3 => \^sig_btt_cntr_reg[6]_0\(0),
      I4 => sig_mbaa_addr_cntr_slice(0),
      I5 => sig_mbaa_addr_cntr_slice(1),
      O => sig_adjusted_addr_incr(1)
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F80808F"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(2),
      I1 => sig_first_xfer,
      I2 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0\,
      I3 => \^sig_btt_cntr_reg[6]_0\(2),
      I4 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[4]_i_2_n_0\,
      O => sig_adjusted_addr_incr(2)
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"60606060FF0000FF"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(2),
      I1 => sig_mbaa_addr_cntr_slice(3),
      I2 => sig_first_xfer,
      I3 => \^sig_btt_cntr_reg[6]_0\(3),
      I4 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_2_n_0\,
      I5 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0\,
      O => sig_adjusted_addr_incr(3)
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1777FFFF"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(1),
      I1 => \^sig_btt_cntr_reg[6]_0\(1),
      I2 => sig_mbaa_addr_cntr_slice(0),
      I3 => \^sig_btt_cntr_reg[6]_0\(0),
      I4 => \^sig_btt_cntr_reg[6]_0\(2),
      O => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_2_n_0\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF50501450"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0\,
      I1 => \^sig_btt_cntr_reg[6]_0\(2),
      I2 => \^sig_btt_cntr_reg[6]_0\(4),
      I3 => \^sig_btt_cntr_reg[6]_0\(3),
      I4 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[4]_i_2_n_0\,
      I5 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[4]_i_3_n_0\,
      O => sig_adjusted_addr_incr(4)
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"077F"
    )
        port map (
      I0 => \^sig_btt_cntr_reg[6]_0\(0),
      I1 => sig_mbaa_addr_cntr_slice(0),
      I2 => \^sig_btt_cntr_reg[6]_0\(1),
      I3 => sig_mbaa_addr_cntr_slice(1),
      O => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[4]_i_2_n_0\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008A8A8A8A00"
    )
        port map (
      I0 => sig_first_xfer,
      I1 => sig_xfer_is_seq_reg_i_4_n_0,
      I2 => sig_btt_lt_b2mbaa1,
      I3 => sig_mbaa_addr_cntr_slice(2),
      I4 => sig_mbaa_addr_cntr_slice(3),
      I5 => sig_mbaa_addr_cntr_slice(4),
      O => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[4]_i_3_n_0\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"404F4F404F404F40"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_2_n_0\,
      I1 => sig_first_xfer,
      I2 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0\,
      I3 => \^sig_btt_cntr_reg[6]_0\(5),
      I4 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_3_n_0\,
      I5 => \^sig_btt_cntr_reg[6]_0\(4),
      O => sig_adjusted_addr_incr(5)
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(5),
      I1 => sig_mbaa_addr_cntr_slice(2),
      I2 => sig_mbaa_addr_cntr_slice(3),
      I3 => sig_mbaa_addr_cntr_slice(4),
      O => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_2_n_0\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888800080000000"
    )
        port map (
      I0 => \^sig_btt_cntr_reg[6]_0\(3),
      I1 => \^sig_btt_cntr_reg[6]_0\(2),
      I2 => \^sig_btt_cntr_reg[6]_0\(0),
      I3 => sig_mbaa_addr_cntr_slice(0),
      I4 => \^sig_btt_cntr_reg[6]_0\(1),
      I5 => sig_mbaa_addr_cntr_slice(1),
      O => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_3_n_0\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_adjusted_addr_incr(0),
      Q => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0]\,
      R => \out\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_adjusted_addr_incr(1),
      Q => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1]\,
      R => \out\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_adjusted_addr_incr(2),
      Q => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2]\,
      R => \out\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_adjusted_addr_incr(3),
      Q => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[3]\,
      R => \out\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_adjusted_addr_incr(4),
      Q => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[4]\,
      R => \out\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_adjusted_addr_incr(5),
      Q => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[5]\,
      R => \out\
    );
\GEN_ADDR_32.sig_first_xfer_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0054545454545454"
    )
        port map (
      I0 => \out\,
      I1 => \^sig_push_input_reg16_out\,
      I2 => sig_first_xfer,
      I3 => sig_xfer_reg_empty,
      I4 => sig_ld_xfer_reg,
      I5 => sig_input_burst_type_reg,
      O => \GEN_ADDR_32.sig_first_xfer_i_1_n_0\
    );
\GEN_ADDR_32.sig_first_xfer_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \GEN_ADDR_32.sig_first_xfer_i_1_n_0\,
      Q => sig_first_xfer,
      R => '0'
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(3),
      I1 => \^gen_addr_32.sig_addr_cntr_incr_imreg_reg[6]_0\(3),
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_2_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(2),
      I1 => \^gen_addr_32.sig_addr_cntr_incr_imreg_reg[6]_0\(2),
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_3_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(1),
      I1 => \^gen_addr_32.sig_addr_cntr_incr_imreg_reg[6]_0\(1),
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_4_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(0),
      I1 => \^gen_addr_32.sig_addr_cntr_incr_imreg_reg[6]_0\(0),
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_5_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[6]\,
      I1 => \^gen_addr_32.sig_addr_cntr_incr_imreg_reg[6]_0\(6),
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_2_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(5),
      I1 => \^gen_addr_32.sig_addr_cntr_incr_imreg_reg[6]_0\(5),
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_3_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(4),
      I1 => \^gen_addr_32.sig_addr_cntr_incr_imreg_reg[6]_0\(4),
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_4_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_predict_addr_lsh_im3_in(0),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[0]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_predict_addr_lsh_im3_in(10),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[10]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_predict_addr_lsh_im3_in(11),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[11]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_0\,
      CO(3) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_0\,
      CO(2) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_1\,
      CO(1) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_2\,
      CO(0) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sig_predict_addr_lsh_im3_in(11 downto 8),
      S(3) => \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[11]\,
      S(2) => \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[10]\,
      S(1) => \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[9]\,
      S(0) => \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[8]\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_predict_addr_lsh_im3_in(12),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[12]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_predict_addr_lsh_im3_in(13),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[13]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_predict_addr_lsh_im3_in(14),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[14]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_predict_addr_lsh_im3_in(15),
      Q => p_0_in,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_0\,
      CO(3) => \NLW_GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_n_1\,
      CO(1) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_n_2\,
      CO(0) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sig_predict_addr_lsh_im3_in(15 downto 12),
      S(3) => p_1_in2_in,
      S(2) => \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[14]\,
      S(1) => \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[13]\,
      S(0) => \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[12]\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_predict_addr_lsh_im3_in(1),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[1]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_predict_addr_lsh_im3_in(2),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[2]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_predict_addr_lsh_im3_in(3),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[3]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_0\,
      CO(2) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_1\,
      CO(1) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_2\,
      CO(0) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => sig_mbaa_addr_cntr_slice(3 downto 0),
      O(3 downto 0) => sig_predict_addr_lsh_im3_in(3 downto 0),
      S(3) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_2_n_0\,
      S(2) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_3_n_0\,
      S(1) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_4_n_0\,
      S(0) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_5_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_predict_addr_lsh_im3_in(4),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[4]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_predict_addr_lsh_im3_in(5),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[5]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_predict_addr_lsh_im3_in(6),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[6]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_predict_addr_lsh_im3_in(7),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[7]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_0\,
      CO(3) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_0\,
      CO(2) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_1\,
      CO(1) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_2\,
      CO(0) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[6]\,
      DI(1 downto 0) => sig_mbaa_addr_cntr_slice(5 downto 4),
      O(3 downto 0) => sig_predict_addr_lsh_im3_in(7 downto 4),
      S(3) => \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[7]\,
      S(2) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_2_n_0\,
      S(1) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_3_n_0\,
      S(0) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_4_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_predict_addr_lsh_im3_in(8),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[8]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_predict_addr_lsh_im3_in(9),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[9]\,
      R => \out\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => Q(16),
      I1 => \^sig_pcc2all_calc_err\,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => \^sig_sm_halt_reg\,
      I4 => \^sig_input_reg_empty\,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(7),
      O => \sig_cmd_mst_addr_reg[23]\(3)
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => Q(15),
      I1 => \^sig_pcc2all_calc_err\,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => \^sig_sm_halt_reg\,
      I4 => \^sig_input_reg_empty\,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(6),
      O => \sig_cmd_mst_addr_reg[23]\(2)
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => Q(14),
      I1 => \^sig_pcc2all_calc_err\,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => \^sig_sm_halt_reg\,
      I4 => \^sig_input_reg_empty\,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(5),
      O => \sig_cmd_mst_addr_reg[23]\(1)
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => Q(13),
      I1 => \^sig_pcc2all_calc_err\,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => \^sig_sm_halt_reg\,
      I4 => \^sig_input_reg_empty\,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(4),
      O => \sig_cmd_mst_addr_reg[23]\(0)
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => Q(20),
      I1 => \^sig_pcc2all_calc_err\,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => \^sig_sm_halt_reg\,
      I4 => \^sig_input_reg_empty\,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(11),
      O => \sig_cmd_mst_addr_reg[27]\(3)
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => Q(19),
      I1 => \^sig_pcc2all_calc_err\,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => \^sig_sm_halt_reg\,
      I4 => \^sig_input_reg_empty\,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(10),
      O => \sig_cmd_mst_addr_reg[27]\(2)
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => Q(18),
      I1 => \^sig_pcc2all_calc_err\,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => \^sig_sm_halt_reg\,
      I4 => \^sig_input_reg_empty\,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(9),
      O => \sig_cmd_mst_addr_reg[27]\(1)
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => Q(17),
      I1 => \^sig_pcc2all_calc_err\,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => \^sig_sm_halt_reg\,
      I4 => \^sig_input_reg_empty\,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(8),
      O => \sig_cmd_mst_addr_reg[27]\(0)
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => Q(24),
      I1 => \^sig_pcc2all_calc_err\,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => \^sig_sm_halt_reg\,
      I4 => \^sig_input_reg_empty\,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(15),
      O => \sig_cmd_mst_addr_reg[31]\(3)
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => Q(23),
      I1 => \^sig_pcc2all_calc_err\,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => \^sig_sm_halt_reg\,
      I4 => \^sig_input_reg_empty\,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(14),
      O => \sig_cmd_mst_addr_reg[31]\(2)
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => Q(22),
      I1 => \^sig_pcc2all_calc_err\,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => \^sig_sm_halt_reg\,
      I4 => \^sig_input_reg_empty\,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(13),
      O => \sig_cmd_mst_addr_reg[31]\(1)
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => Q(21),
      I1 => \^sig_pcc2all_calc_err\,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => \^sig_sm_halt_reg\,
      I4 => \^sig_input_reg_empty\,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(12),
      O => \sig_cmd_mst_addr_reg[31]\(0)
    );
\i__carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => Q(12),
      I1 => \^sig_pcc2all_calc_err\,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => \^sig_sm_halt_reg\,
      I4 => \^sig_input_reg_empty\,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(3),
      O => S(3)
    );
\i__carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => Q(11),
      I1 => \^sig_pcc2all_calc_err\,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => \^sig_sm_halt_reg\,
      I4 => \^sig_input_reg_empty\,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(2),
      O => S(2)
    );
\i__carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => Q(10),
      I1 => \^sig_pcc2all_calc_err\,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => \^sig_sm_halt_reg\,
      I4 => \^sig_input_reg_empty\,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(1),
      O => S(1)
    );
\i__carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555C55555"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(0),
      I1 => Q(9),
      I2 => \^sig_input_reg_empty\,
      I3 => \^sig_sm_halt_reg\,
      I4 => sig_cmd2pcc_cmd_valid,
      I5 => \^sig_pcc2all_calc_err\,
      O => S(0)
    );
\sig_btt_cntr[11]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FBFF"
    )
        port map (
      I0 => \^sig_pcc2all_calc_err\,
      I1 => sig_cmd2pcc_cmd_valid,
      I2 => \^sig_sm_halt_reg\,
      I3 => \^sig_input_reg_empty\,
      I4 => sig_btt_cntr(11),
      O => sig_calc_error_reg_reg_0(3)
    );
\sig_btt_cntr[11]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FBFF"
    )
        port map (
      I0 => \^sig_pcc2all_calc_err\,
      I1 => sig_cmd2pcc_cmd_valid,
      I2 => \^sig_sm_halt_reg\,
      I3 => \^sig_input_reg_empty\,
      I4 => sig_btt_cntr(10),
      O => sig_calc_error_reg_reg_0(2)
    );
\sig_btt_cntr[11]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FBFF"
    )
        port map (
      I0 => \^sig_pcc2all_calc_err\,
      I1 => sig_cmd2pcc_cmd_valid,
      I2 => \^sig_sm_halt_reg\,
      I3 => \^sig_input_reg_empty\,
      I4 => sig_btt_cntr(9),
      O => sig_calc_error_reg_reg_0(1)
    );
\sig_btt_cntr[11]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FBFF"
    )
        port map (
      I0 => \^sig_pcc2all_calc_err\,
      I1 => sig_cmd2pcc_cmd_valid,
      I2 => \^sig_sm_halt_reg\,
      I3 => \^sig_input_reg_empty\,
      I4 => sig_btt_cntr(8),
      O => sig_calc_error_reg_reg_0(0)
    );
\sig_btt_cntr[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D111"
    )
        port map (
      I0 => sig_btt_cntr(7),
      I1 => \^sig_push_input_reg16_out\,
      I2 => sig_cmd_mst_length(0),
      I3 => sig_cmd_type_req,
      O => \sig_btt_cntr_reg[7]_0\(0)
    );
\sig_btt_cntr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => \sig_btt_cntr_reg[11]_0\(0),
      Q => \^sig_btt_cntr_reg[6]_0\(0),
      R => \out\
    );
\sig_btt_cntr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => \sig_btt_cntr_reg[11]_0\(10),
      Q => sig_btt_cntr(10),
      R => \out\
    );
\sig_btt_cntr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => \sig_btt_cntr_reg[11]_0\(11),
      Q => sig_btt_cntr(11),
      R => \out\
    );
\sig_btt_cntr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => \sig_btt_cntr_reg[11]_0\(1),
      Q => \^sig_btt_cntr_reg[6]_0\(1),
      R => \out\
    );
\sig_btt_cntr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => \sig_btt_cntr_reg[11]_0\(2),
      Q => \^sig_btt_cntr_reg[6]_0\(2),
      R => \out\
    );
\sig_btt_cntr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => \sig_btt_cntr_reg[11]_0\(3),
      Q => \^sig_btt_cntr_reg[6]_0\(3),
      R => \out\
    );
\sig_btt_cntr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => \sig_btt_cntr_reg[11]_0\(4),
      Q => \^sig_btt_cntr_reg[6]_0\(4),
      R => \out\
    );
\sig_btt_cntr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => \sig_btt_cntr_reg[11]_0\(5),
      Q => \^sig_btt_cntr_reg[6]_0\(5),
      R => \out\
    );
\sig_btt_cntr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => \sig_btt_cntr_reg[11]_0\(6),
      Q => \^sig_btt_cntr_reg[6]_0\(6),
      R => \out\
    );
\sig_btt_cntr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => \sig_btt_cntr_reg[11]_0\(7),
      Q => sig_btt_cntr(7),
      R => \out\
    );
\sig_btt_cntr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => \sig_btt_cntr_reg[11]_0\(8),
      Q => sig_btt_cntr(8),
      R => \out\
    );
\sig_btt_cntr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => \sig_btt_cntr_reg[11]_0\(9),
      Q => sig_btt_cntr(9),
      R => \out\
    );
sig_btt_lt_b2mbaa1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sig_btt_lt_b2mbaa1,
      CO(2) => sig_btt_lt_b2mbaa1_carry_n_1,
      CO(1) => sig_btt_lt_b2mbaa1_carry_n_2,
      CO(0) => sig_btt_lt_b2mbaa1_carry_n_3,
      CYINIT => '0',
      DI(3) => sig_bytes_to_mbaa(6),
      DI(2) => sig_btt_lt_b2mbaa1_carry_i_2_n_0,
      DI(1) => sig_btt_lt_b2mbaa1_carry_i_3_n_0,
      DI(0) => sig_btt_lt_b2mbaa1_carry_i_4_n_0,
      O(3 downto 0) => NLW_sig_btt_lt_b2mbaa1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => sig_btt_lt_b2mbaa1_carry_i_5_n_0,
      S(2) => sig_btt_lt_b2mbaa1_carry_i_6_n_0,
      S(1) => sig_btt_lt_b2mbaa1_carry_i_7_n_0,
      S(0) => sig_btt_lt_b2mbaa1_carry_i_8_n_0
    );
sig_btt_lt_b2mbaa1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(4),
      I1 => sig_mbaa_addr_cntr_slice(2),
      I2 => sig_mbaa_addr_cntr_slice(3),
      I3 => sig_mbaa_addr_cntr_slice(1),
      I4 => sig_mbaa_addr_cntr_slice(0),
      I5 => sig_mbaa_addr_cntr_slice(5),
      O => sig_bytes_to_mbaa(6)
    );
sig_btt_lt_b2mbaa1_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0317170C"
    )
        port map (
      I0 => \^sig_btt_cntr_reg[6]_0\(4),
      I1 => sig_mbaa_addr_cntr_slice(5),
      I2 => \^sig_btt_cntr_reg[6]_0\(5),
      I3 => sig_mbaa_addr_cntr_slice(4),
      I4 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_3_n_0\,
      O => sig_btt_lt_b2mbaa1_carry_i_2_n_0
    );
sig_btt_lt_b2mbaa1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"031703170317170C"
    )
        port map (
      I0 => \^sig_btt_cntr_reg[6]_0\(2),
      I1 => sig_mbaa_addr_cntr_slice(3),
      I2 => \^sig_btt_cntr_reg[6]_0\(3),
      I3 => sig_mbaa_addr_cntr_slice(2),
      I4 => sig_mbaa_addr_cntr_slice(0),
      I5 => sig_mbaa_addr_cntr_slice(1),
      O => sig_btt_lt_b2mbaa1_carry_i_3_n_0
    );
sig_btt_lt_b2mbaa1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1570"
    )
        port map (
      I0 => \^sig_btt_cntr_reg[6]_0\(1),
      I1 => \^sig_btt_cntr_reg[6]_0\(0),
      I2 => sig_mbaa_addr_cntr_slice(0),
      I3 => sig_mbaa_addr_cntr_slice(1),
      O => sig_btt_lt_b2mbaa1_carry_i_4_n_0
    );
sig_btt_lt_b2mbaa1_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(5),
      I1 => sig_mbaa_addr_cntr_slice(0),
      I2 => sig_mbaa_addr_cntr_slice(1),
      I3 => sig_mbaa_addr_cntr_slice(3),
      I4 => sig_mbaa_addr_cntr_slice(2),
      I5 => sig_mbaa_addr_cntr_slice(4),
      O => sig_btt_lt_b2mbaa1_carry_i_5_n_0
    );
sig_btt_lt_b2mbaa1_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01686801"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_3_n_0\,
      I1 => \^sig_btt_cntr_reg[6]_0\(4),
      I2 => sig_mbaa_addr_cntr_slice(4),
      I3 => \^sig_btt_cntr_reg[6]_0\(5),
      I4 => sig_mbaa_addr_cntr_slice(5),
      O => sig_btt_lt_b2mbaa1_carry_i_6_n_0
    );
sig_btt_lt_b2mbaa1_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1248124812482481"
    )
        port map (
      I0 => \^sig_btt_cntr_reg[6]_0\(2),
      I1 => \^sig_btt_cntr_reg[6]_0\(3),
      I2 => sig_mbaa_addr_cntr_slice(2),
      I3 => sig_mbaa_addr_cntr_slice(3),
      I4 => sig_mbaa_addr_cntr_slice(1),
      I5 => sig_mbaa_addr_cntr_slice(0),
      O => sig_btt_lt_b2mbaa1_carry_i_7_n_0
    );
sig_btt_lt_b2mbaa1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4821"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(1),
      I1 => sig_mbaa_addr_cntr_slice(0),
      I2 => \^sig_btt_cntr_reg[6]_0\(1),
      I3 => \^sig_btt_cntr_reg[6]_0\(0),
      O => sig_btt_lt_b2mbaa1_carry_i_8_n_0
    );
sig_calc_error_pushed_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => \^sig_pcc2all_calc_err\,
      I1 => sig_ld_xfer_reg,
      I2 => sig_xfer_reg_empty,
      I3 => sig_calc_error_pushed,
      O => sig_calc_error_pushed_i_1_n_0
    );
sig_calc_error_pushed_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_calc_error_pushed_i_1_n_0,
      Q => sig_calc_error_pushed,
      R => \out\
    );
sig_calc_error_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCDCCCCC"
    )
        port map (
      I0 => sig_cmd_mst_length(0),
      I1 => \^sig_pcc2all_calc_err\,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => \^sig_sm_halt_reg\,
      I4 => \^sig_input_reg_empty\,
      O => sig_calc_error_reg_i_1_n_0
    );
sig_calc_error_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_calc_error_reg_i_1_n_0,
      Q => \^sig_pcc2all_calc_err\,
      R => \out\
    );
sig_cmd2addr_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007F7FFF00"
    )
        port map (
      I0 => sig_cmd2all_doing_read,
      I1 => sig_llink2rd_allow_addr_req,
      I2 => sig_addr2stat_cmd_fifo_empty,
      I3 => sig_push_xfer_reg15_out,
      I4 => \^sig_pcc2addr_cmd_valid\,
      I5 => \out\,
      O => sig_cmd2addr_valid_i_1_n_0
    );
sig_cmd2addr_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_cmd2addr_valid_i_1_n_0,
      Q => \^sig_pcc2addr_cmd_valid\,
      R => '0'
    );
sig_cmd2data_valid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005540"
    )
        port map (
      I0 => \out\,
      I1 => sig_ld_xfer_reg,
      I2 => sig_xfer_reg_empty,
      I3 => \^sig_cmd2data_valid_reg_0\,
      I4 => sig_rdc2pcc_cmd_ready,
      O => sig_cmd2data_valid_i_1_n_0
    );
sig_cmd2data_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_cmd2data_valid_i_1_n_0,
      Q => \^sig_cmd2data_valid_reg_0\,
      R => '0'
    );
sig_cmd2dre_valid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \out\,
      I1 => sig_first_xfer,
      I2 => sig_xfer_reg_empty,
      I3 => sig_ld_xfer_reg,
      I4 => sig_cmd2dre_valid_reg_n_0,
      O => sig_cmd2dre_valid_i_1_n_0
    );
sig_cmd2dre_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_cmd2dre_valid_i_1_n_0,
      Q => sig_cmd2dre_valid_reg_n_0,
      R => '0'
    );
sig_cmd_full_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAABAAAAAAAAAA"
    )
        port map (
      I0 => sig_cmd_full_reg_reg,
      I1 => E(0),
      I2 => sig_calc_error_pushed,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => \^sig_sm_halt_reg\,
      I5 => \^sig_input_reg_empty\,
      O => SR(0)
    );
sig_doing_read_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => sig_calc_error_pushed,
      I1 => sig_cmd2pcc_cmd_valid,
      I2 => \^sig_sm_halt_reg\,
      I3 => \^sig_input_reg_empty\,
      O => sig_pcc_taking_command
    );
sig_input_burst_type_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000000E"
    )
        port map (
      I0 => sig_input_burst_type_reg,
      I1 => \^sig_push_input_reg16_out\,
      I2 => sig_calc_error_pushed,
      I3 => \out\,
      I4 => sig_sm_pop_input_reg,
      O => sig_input_burst_type_reg_i_1_n_0
    );
sig_input_burst_type_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_input_burst_type_reg_i_1_n_0,
      Q => sig_input_burst_type_reg,
      R => '0'
    );
sig_input_eof_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000000E"
    )
        port map (
      I0 => sig_input_eof_reg,
      I1 => \^sig_push_input_reg16_out\,
      I2 => sig_calc_error_pushed,
      I3 => \out\,
      I4 => sig_sm_pop_input_reg,
      O => sig_input_eof_reg_i_1_n_0
    );
sig_input_eof_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_input_eof_reg_i_1_n_0,
      Q => sig_input_eof_reg,
      R => '0'
    );
sig_input_reg_empty_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF2"
    )
        port map (
      I0 => \^sig_input_reg_empty\,
      I1 => \^sig_push_input_reg16_out\,
      I2 => sig_calc_error_pushed,
      I3 => \out\,
      I4 => sig_sm_pop_input_reg,
      O => sig_input_reg_empty_i_1_n_0
    );
sig_input_reg_empty_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_input_reg_empty_i_1_n_0,
      Q => \^sig_input_reg_empty\,
      R => '0'
    );
sig_last_dbeat_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \^sig_xfer_len_reg_reg[3]_1\(3),
      I1 => sig_rdc2pcc_cmd_ready,
      I2 => \out\,
      I3 => \^sig_xfer_len_reg_reg[3]_1\(0),
      I4 => \^sig_xfer_len_reg_reg[3]_1\(2),
      I5 => \^sig_xfer_len_reg_reg[3]_1\(1),
      O => \sig_xfer_len_reg_reg[3]_0\
    );
sig_ld_xfer_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0454"
    )
        port map (
      I0 => \out\,
      I1 => sig_sm_ld_xfer_reg_ns,
      I2 => sig_ld_xfer_reg,
      I3 => sig_xfer_reg_empty,
      O => sig_ld_xfer_reg_i_1_n_0
    );
sig_ld_xfer_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_ld_xfer_reg_i_1_n_0,
      Q => sig_ld_xfer_reg,
      R => '0'
    );
sig_parent_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000015551000"
    )
        port map (
      I0 => \out\,
      I1 => sig_xfer_is_seq_reg_i_1_n_0,
      I2 => sig_xfer_reg_empty,
      I3 => sig_ld_xfer_reg,
      I4 => sig_parent_done,
      I5 => \^sig_push_input_reg16_out\,
      O => sig_parent_done_i_1_n_0
    );
sig_parent_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_parent_done_i_1_n_0,
      Q => sig_parent_done,
      R => '0'
    );
sig_rd_addr_valid_reg_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sig_pcc2data_calc_error\,
      O => sig_rd_addr_valid_reg0
    );
sig_sm_halt_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[0]\,
      I1 => sig_calc_error_pushed,
      I2 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[5]\,
      I3 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[6]\,
      O => sig_sm_halt_ns
    );
sig_sm_halt_reg_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_sm_halt_ns,
      Q => \^sig_sm_halt_reg\,
      S => \out\
    );
sig_sm_pop_input_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => sig_parent_done,
      I1 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[5]\,
      I2 => sig_calc_error_pushed,
      O => sig_sm_pop_input_reg_ns
    );
sig_sm_pop_input_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_sm_pop_input_reg_ns,
      Q => sig_sm_pop_input_reg,
      R => \out\
    );
\sig_xfer_addr_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_mbaa_addr_cntr_slice(0),
      Q => \sig_xfer_addr_reg_reg[31]_0\(0),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[10]\,
      Q => \sig_xfer_addr_reg_reg[31]_0\(10),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[11]\,
      Q => \sig_xfer_addr_reg_reg[31]_0\(11),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[12]\,
      Q => \sig_xfer_addr_reg_reg[31]_0\(12),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[13]\,
      Q => \sig_xfer_addr_reg_reg[31]_0\(13),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[14]\,
      Q => \sig_xfer_addr_reg_reg[31]_0\(14),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => p_1_in2_in,
      Q => \sig_xfer_addr_reg_reg[31]_0\(15),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(0),
      Q => \sig_xfer_addr_reg_reg[31]_0\(16),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(1),
      Q => \sig_xfer_addr_reg_reg[31]_0\(17),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(2),
      Q => \sig_xfer_addr_reg_reg[31]_0\(18),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(3),
      Q => \sig_xfer_addr_reg_reg[31]_0\(19),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_mbaa_addr_cntr_slice(1),
      Q => \sig_xfer_addr_reg_reg[31]_0\(1),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(4),
      Q => \sig_xfer_addr_reg_reg[31]_0\(20),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(5),
      Q => \sig_xfer_addr_reg_reg[31]_0\(21),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(6),
      Q => \sig_xfer_addr_reg_reg[31]_0\(22),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(7),
      Q => \sig_xfer_addr_reg_reg[31]_0\(23),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(8),
      Q => \sig_xfer_addr_reg_reg[31]_0\(24),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(9),
      Q => \sig_xfer_addr_reg_reg[31]_0\(25),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(10),
      Q => \sig_xfer_addr_reg_reg[31]_0\(26),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(11),
      Q => \sig_xfer_addr_reg_reg[31]_0\(27),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(12),
      Q => \sig_xfer_addr_reg_reg[31]_0\(28),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(13),
      Q => \sig_xfer_addr_reg_reg[31]_0\(29),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_mbaa_addr_cntr_slice(2),
      Q => \sig_xfer_addr_reg_reg[31]_0\(2),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(14),
      Q => \sig_xfer_addr_reg_reg[31]_0\(30),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(15),
      Q => \sig_xfer_addr_reg_reg[31]_0\(31),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_mbaa_addr_cntr_slice(3),
      Q => \sig_xfer_addr_reg_reg[31]_0\(3),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_mbaa_addr_cntr_slice(4),
      Q => \sig_xfer_addr_reg_reg[31]_0\(4),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_mbaa_addr_cntr_slice(5),
      Q => \sig_xfer_addr_reg_reg[31]_0\(5),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[6]\,
      Q => \sig_xfer_addr_reg_reg[31]_0\(6),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[7]\,
      Q => \sig_xfer_addr_reg_reg[31]_0\(7),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[8]\,
      Q => \sig_xfer_addr_reg_reg[31]_0\(8),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[9]\,
      Q => \sig_xfer_addr_reg_reg[31]_0\(9),
      R => sig_xfer_addr_reg0
    );
sig_xfer_calc_err_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \^sig_pcc2all_calc_err\,
      Q => \^sig_pcc2data_calc_error\,
      R => sig_xfer_addr_reg0
    );
sig_xfer_cmd_cmplt_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^sig_pcc2all_calc_err\,
      I1 => sig_xfer_is_seq_reg_i_1_n_0,
      O => sig_xfer_cmd_cmplt_reg_i_1_n_0
    );
sig_xfer_cmd_cmplt_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_cmd_cmplt_reg_i_1_n_0,
      Q => sig_pcc2data_cmd_cmplt,
      R => sig_xfer_addr_reg0
    );
sig_xfer_eof_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_input_eof_reg,
      I1 => sig_xfer_is_seq_reg_i_1_n_0,
      O => sig_xfer_eof_reg0
    );
sig_xfer_eof_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_eof_reg0,
      Q => sig_pcc2data_eof,
      R => sig_xfer_addr_reg0
    );
sig_xfer_is_seq_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020222222"
    )
        port map (
      I0 => sig_xfer_is_seq_reg_i_2_n_0,
      I1 => sig_xfer_is_seq_reg_i_3_n_0,
      I2 => sig_xfer_is_seq_reg_i_4_n_0,
      I3 => sig_btt_lt_b2mbaa1,
      I4 => sig_xfer_is_seq_reg_i_5_n_0,
      I5 => sig_xfer_is_seq_reg_i_6_n_0,
      O => sig_xfer_is_seq_reg_i_1_n_0
    );
sig_xfer_is_seq_reg_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sig_btt_cntr_reg[6]_0\(1),
      I1 => \^sig_btt_cntr_reg[6]_0\(0),
      O => sig_xfer_is_seq_reg_i_10_n_0
    );
sig_xfer_is_seq_reg_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFD7FFFFFFBF"
    )
        port map (
      I0 => \^sig_btt_cntr_reg[6]_0\(2),
      I1 => sig_mbaa_addr_cntr_slice(3),
      I2 => \^sig_btt_cntr_reg[6]_0\(3),
      I3 => sig_mbaa_addr_cntr_slice(1),
      I4 => sig_mbaa_addr_cntr_slice(0),
      I5 => sig_mbaa_addr_cntr_slice(2),
      O => sig_xfer_is_seq_reg_i_11_n_0
    );
sig_xfer_is_seq_reg_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(5),
      I1 => sig_mbaa_addr_cntr_slice(0),
      I2 => sig_mbaa_addr_cntr_slice(1),
      I3 => sig_mbaa_addr_cntr_slice(3),
      I4 => sig_mbaa_addr_cntr_slice(2),
      I5 => sig_mbaa_addr_cntr_slice(4),
      O => sig_xfer_is_seq_reg_i_12_n_0
    );
sig_xfer_is_seq_reg_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^sig_btt_cntr_reg[6]_0\(2),
      I1 => \^sig_btt_cntr_reg[6]_0\(3),
      I2 => \^sig_btt_cntr_reg[6]_0\(0),
      I3 => \^sig_btt_cntr_reg[6]_0\(1),
      O => sig_xfer_is_seq_reg_i_13_n_0
    );
sig_xfer_is_seq_reg_i_14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => sig_btt_cntr(8),
      I1 => sig_btt_cntr(9),
      I2 => sig_btt_cntr(11),
      I3 => sig_btt_cntr(10),
      I4 => sig_btt_cntr(7),
      O => sig_xfer_is_seq_reg_i_14_n_0
    );
sig_xfer_is_seq_reg_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^sig_btt_cntr_reg[6]_0\(5),
      I1 => sig_mbaa_addr_cntr_slice(5),
      O => sig_xfer_is_seq_reg_i_15_n_0
    );
sig_xfer_is_seq_reg_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(4),
      I1 => \^sig_btt_cntr_reg[6]_0\(4),
      I2 => sig_mbaa_addr_cntr_slice(2),
      I3 => sig_mbaa_addr_cntr_slice(3),
      I4 => sig_mbaa_addr_cntr_slice(1),
      I5 => sig_mbaa_addr_cntr_slice(0),
      O => sig_xfer_is_seq_reg_i_16_n_0
    );
sig_xfer_is_seq_reg_i_17: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(4),
      I1 => sig_mbaa_addr_cntr_slice(2),
      I2 => sig_mbaa_addr_cntr_slice(3),
      I3 => sig_mbaa_addr_cntr_slice(1),
      I4 => sig_mbaa_addr_cntr_slice(0),
      O => sig_xfer_is_seq_reg_i_17_n_0
    );
sig_xfer_is_seq_reg_i_18: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \^sig_btt_cntr_reg[6]_0\(4),
      I1 => sig_mbaa_addr_cntr_slice(5),
      I2 => \^sig_btt_cntr_reg[6]_0\(5),
      O => sig_xfer_is_seq_reg_i_18_n_0
    );
sig_xfer_is_seq_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFEFFEEEEFEFF"
    )
        port map (
      I0 => sig_xfer_is_seq_reg_i_7_n_0,
      I1 => sig_xfer_is_seq_reg_i_4_n_0,
      I2 => sig_xfer_is_seq_reg_i_8_n_0,
      I3 => sig_xfer_is_seq_reg_i_9_n_0,
      I4 => sig_xfer_is_seq_reg_i_10_n_0,
      I5 => sig_xfer_is_seq_reg_i_11_n_0,
      O => sig_xfer_is_seq_reg_i_2_n_0
    );
sig_xfer_is_seq_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => sig_xfer_is_seq_reg_i_12_n_0,
      I1 => \^sig_btt_cntr_reg[6]_0\(5),
      I2 => \^sig_btt_cntr_reg[6]_0\(4),
      I3 => sig_xfer_is_seq_reg_i_13_n_0,
      I4 => \^sig_btt_cntr_reg[6]_0\(6),
      I5 => sig_xfer_is_seq_reg_i_14_n_0,
      O => sig_xfer_is_seq_reg_i_3_n_0
    );
sig_xfer_is_seq_reg_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^sig_btt_cntr_reg[6]_0\(6),
      I1 => sig_btt_cntr(7),
      I2 => sig_btt_cntr(10),
      I3 => sig_btt_cntr(11),
      I4 => sig_btt_cntr(9),
      I5 => sig_btt_cntr(8),
      O => sig_xfer_is_seq_reg_i_4_n_0
    );
sig_xfer_is_seq_reg_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^sig_btt_cntr_reg[6]_0\(1),
      I1 => \^sig_btt_cntr_reg[6]_0\(0),
      I2 => \^sig_btt_cntr_reg[6]_0\(3),
      I3 => \^sig_btt_cntr_reg[6]_0\(2),
      I4 => \^sig_btt_cntr_reg[6]_0\(4),
      I5 => \^sig_btt_cntr_reg[6]_0\(5),
      O => sig_xfer_is_seq_reg_i_5_n_0
    );
sig_xfer_is_seq_reg_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000222F"
    )
        port map (
      I0 => sig_xfer_is_seq_reg_i_15_n_0,
      I1 => sig_xfer_is_seq_reg_i_16_n_0,
      I2 => sig_xfer_is_seq_reg_i_17_n_0,
      I3 => sig_xfer_is_seq_reg_i_18_n_0,
      I4 => sig_xfer_is_seq_reg_i_13_n_0,
      I5 => sig_xfer_is_seq_reg_i_4_n_0,
      O => sig_xfer_is_seq_reg_i_6_n_0
    );
sig_xfer_is_seq_reg_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F99F"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(5),
      I1 => \^sig_btt_cntr_reg[6]_0\(5),
      I2 => sig_mbaa_addr_cntr_slice(4),
      I3 => \^sig_btt_cntr_reg[6]_0\(4),
      O => sig_xfer_is_seq_reg_i_7_n_0
    );
sig_xfer_is_seq_reg_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F99F"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(3),
      I1 => \^sig_btt_cntr_reg[6]_0\(3),
      I2 => sig_mbaa_addr_cntr_slice(2),
      I3 => \^sig_btt_cntr_reg[6]_0\(2),
      O => sig_xfer_is_seq_reg_i_8_n_0
    );
sig_xfer_is_seq_reg_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6008"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(1),
      I1 => \^sig_btt_cntr_reg[6]_0\(1),
      I2 => sig_mbaa_addr_cntr_slice(0),
      I3 => \^sig_btt_cntr_reg[6]_0\(0),
      O => sig_xfer_is_seq_reg_i_9_n_0
    );
sig_xfer_is_seq_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_is_seq_reg_i_1_n_0,
      Q => sig_pcc2data_sequential,
      R => sig_xfer_addr_reg0
    );
\sig_xfer_len_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1]\,
      I1 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0]\,
      I2 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2]\,
      O => \sig_xfer_len_reg[0]_i_1_n_0\
    );
\sig_xfer_len_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2]\,
      I1 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0]\,
      I2 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1]\,
      I3 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[3]\,
      O => \sig_xfer_len_reg[1]_i_1_n_0\
    );
\sig_xfer_len_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[3]\,
      I1 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1]\,
      I2 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0]\,
      I3 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2]\,
      I4 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[4]\,
      O => \sig_xfer_len_reg[2]_i_1_n_0\
    );
\sig_xfer_len_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000001"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[4]\,
      I1 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2]\,
      I2 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0]\,
      I3 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1]\,
      I4 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[3]\,
      I5 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[5]\,
      O => \sig_xfer_len_reg[3]_i_1_n_0\
    );
\sig_xfer_len_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \sig_xfer_len_reg[0]_i_1_n_0\,
      Q => \^sig_xfer_len_reg_reg[3]_1\(0),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_len_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \sig_xfer_len_reg[1]_i_1_n_0\,
      Q => \^sig_xfer_len_reg_reg[3]_1\(1),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_len_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \sig_xfer_len_reg[2]_i_1_n_0\,
      Q => \^sig_xfer_len_reg_reg[3]_1\(2),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_len_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \sig_xfer_len_reg[3]_i_1_n_0\,
      Q => \^sig_xfer_len_reg_reg[3]_1\(3),
      R => sig_xfer_addr_reg0
    );
sig_xfer_reg_empty_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABABABABABABABB"
    )
        port map (
      I0 => \out\,
      I1 => sig_push_xfer_reg15_out,
      I2 => sig_xfer_reg_empty_i_3_n_0,
      I3 => \sig_xfer_len_reg_reg[0]_0\,
      I4 => sig_xfer_reg_empty_i_5_n_0,
      I5 => \sig_xfer_len_reg_reg[0]_1\,
      O => sig_xfer_addr_reg0
    );
sig_xfer_reg_empty_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sig_xfer_reg_empty,
      I1 => sig_ld_xfer_reg,
      O => sig_push_xfer_reg15_out
    );
sig_xfer_reg_empty_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5404040404040404"
    )
        port map (
      I0 => \^sig_cmd2data_valid_reg_0\,
      I1 => sig_cmd2dre_valid_reg_n_0,
      I2 => \^sig_pcc2addr_cmd_valid\,
      I3 => sig_addr2stat_cmd_fifo_empty,
      I4 => sig_llink2rd_allow_addr_req,
      I5 => sig_cmd2all_doing_read,
      O => sig_xfer_reg_empty_i_3_n_0
    );
sig_xfer_reg_empty_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEFFFEFFFEFFFEF"
    )
        port map (
      I0 => \sig_xfer_len_reg_reg[0]_2\,
      I1 => sig_next_calc_error_reg,
      I2 => \^sig_cmd2data_valid_reg_0\,
      I3 => \^sig_pcc2addr_cmd_valid\,
      I4 => sig_llink2rd_allow_addr_req,
      I5 => sig_addr2stat_cmd_fifo_empty,
      O => sig_xfer_reg_empty_i_5_n_0
    );
sig_xfer_reg_empty_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => '0',
      Q => sig_xfer_reg_empty,
      S => sig_xfer_addr_reg0
    );
sig_xfer_type_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_input_burst_type_reg,
      Q => sig_pcc2addr_burst(0),
      R => sig_xfer_addr_reg0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_rd_llink is
  port (
    sig_rd_discontinue_reg_0 : out STD_LOGIC;
    sig_llink_busy_reg_0 : out STD_LOGIC;
    sig_llink2rd_allow_addr_req : out STD_LOGIC;
    sig_llink_busy_reg_1 : out STD_LOGIC;
    sig_llink_busy_reg_2 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_mstrd_eof_n : out STD_LOGIC;
    IP2Bus_MstRd_dst_rdy_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    sig_rdwr2llink_int_err : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    IP2Bus_MstRd_dst_rdy : in STD_LOGIC;
    sig_doing_read_reg : in STD_LOGIC;
    sig_cmd2all_doing_read : in STD_LOGIC;
    sig_llink_busy_reg_3 : in STD_LOGIC;
    mstr_src_rdy_n : in STD_LOGIC;
    bus2ip_mreset : in STD_LOGIC;
    eof_n_reg : in STD_LOGIC;
    eof_n : in STD_LOGIC;
    sig_rd_llink_enable : in STD_LOGIC;
    \sig_data_reg_out_reg[23]\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_rd_llink;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_rd_llink is
  signal \I_WR_LLINK_ADAPTER/sig_wr_error_reg\ : STD_LOGIC;
  signal sig_allow_rd_requests_i_1_n_0 : STD_LOGIC;
  signal \^sig_llink2rd_allow_addr_req\ : STD_LOGIC;
  signal sig_llink_busy0 : STD_LOGIC;
  signal sig_llink_busy_i_1_n_0 : STD_LOGIC;
  signal \^sig_llink_busy_reg_0\ : STD_LOGIC;
  signal sig_rd_discontinue_i_1_n_0 : STD_LOGIC;
  signal \^sig_rd_discontinue_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of eof_n_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of sig_llink_busy_i_3 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of sig_m_valid_dup_i_2 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \trans_cnt[0]_i_2\ : label is "soft_lutpair10";
begin
  sig_llink2rd_allow_addr_req <= \^sig_llink2rd_allow_addr_req\;
  sig_llink_busy_reg_0 <= \^sig_llink_busy_reg_0\;
  sig_rd_discontinue_reg_0 <= \^sig_rd_discontinue_reg_0\;
\AXI_DATA_WIDTH_32.mstr_src_rdy_n_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF07FF"
    )
        port map (
      I0 => \^sig_llink_busy_reg_0\,
      I1 => \^sig_rd_discontinue_reg_0\,
      I2 => sig_llink_busy_reg_3,
      I3 => mstr_src_rdy_n,
      I4 => bus2ip_mreset,
      O => sig_llink_busy_reg_2
    );
eof_n_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => eof_n_reg,
      I1 => \^sig_rd_discontinue_reg_0\,
      I2 => \^sig_llink_busy_reg_0\,
      O => bus2ip_mstrd_eof_n
    );
sig_allow_rd_requests_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5540000055405540"
    )
        port map (
      I0 => \out\,
      I1 => IP2Bus_MstRd_dst_rdy,
      I2 => \^sig_llink_busy_reg_0\,
      I3 => \^sig_llink2rd_allow_addr_req\,
      I4 => sig_doing_read_reg,
      I5 => sig_cmd2all_doing_read,
      O => sig_allow_rd_requests_i_1_n_0
    );
sig_allow_rd_requests_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_allow_rd_requests_i_1_n_0,
      Q => \^sig_llink2rd_allow_addr_req\,
      R => '0'
    );
\sig_data_reg_out[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => IP2Bus_MstRd_dst_rdy,
      I1 => \^sig_llink_busy_reg_0\,
      I2 => \sig_data_reg_out_reg[23]\,
      O => IP2Bus_MstRd_dst_rdy_reg(0)
    );
sig_llink_busy_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF4CCC"
    )
        port map (
      I0 => IP2Bus_MstRd_dst_rdy,
      I1 => \^sig_llink_busy_reg_0\,
      I2 => sig_llink_busy_reg_3,
      I3 => eof_n_reg,
      I4 => sig_rd_llink_enable,
      I5 => sig_llink_busy0,
      O => sig_llink_busy_i_1_n_0
    );
sig_llink_busy_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => \out\,
      I1 => \^sig_llink_busy_reg_0\,
      I2 => \^sig_rd_discontinue_reg_0\,
      I3 => IP2Bus_MstRd_dst_rdy,
      O => sig_llink_busy0
    );
sig_llink_busy_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_llink_busy_i_1_n_0,
      Q => \^sig_llink_busy_reg_0\,
      R => '0'
    );
sig_m_valid_dup_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^sig_llink_busy_reg_0\,
      I1 => IP2Bus_MstRd_dst_rdy,
      O => sig_llink_busy_reg_1
    );
sig_rd_discontinue_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000F22FF00"
    )
        port map (
      I0 => sig_rdwr2llink_int_err,
      I1 => \I_WR_LLINK_ADAPTER/sig_wr_error_reg\,
      I2 => IP2Bus_MstRd_dst_rdy,
      I3 => \^sig_rd_discontinue_reg_0\,
      I4 => \^sig_llink_busy_reg_0\,
      I5 => \out\,
      O => sig_rd_discontinue_i_1_n_0
    );
sig_rd_discontinue_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_rd_discontinue_i_1_n_0,
      Q => \^sig_rd_discontinue_reg_0\,
      R => '0'
    );
sig_rd_error_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_rdwr2llink_int_err,
      Q => \I_WR_LLINK_ADAPTER/sig_wr_error_reg\,
      R => \out\
    );
\trans_cnt[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0007"
    )
        port map (
      I0 => \^sig_llink_busy_reg_0\,
      I1 => \^sig_rd_discontinue_reg_0\,
      I2 => eof_n_reg,
      I3 => eof_n,
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_rd_status_cntl is
  port (
    sig_rsc2stat_status_valid : out STD_LOGIC;
    sig_rsc2rdc_ready : out STD_LOGIC;
    sig_rd_sts_interr_reg_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_rsc2stat_status : out STD_LOGIC_VECTOR ( 1 downto 0 );
    sig_rd_sts_slverr_reg_reg_0 : out STD_LOGIC;
    sig_rd_sts_tag_reg0 : in STD_LOGIC;
    sig_push_rd_sts_reg : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    sig_rd_sts_interr_reg0 : in STD_LOGIC;
    sig_rd_sts_decerr_reg0 : in STD_LOGIC;
    sig_rd_sts_slverr_reg0 : in STD_LOGIC;
    sig_push_status1_out : in STD_LOGIC;
    md_error : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_rd_status_cntl;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_rd_status_cntl is
  signal \^sig_rd_sts_interr_reg_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^sig_rsc2stat_status\ : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  sig_rd_sts_interr_reg_reg_0(0) <= \^sig_rd_sts_interr_reg_reg_0\(0);
  sig_rsc2stat_status(1 downto 0) <= \^sig_rsc2stat_status\(1 downto 0);
sig_error_sh_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFE00"
    )
        port map (
      I0 => \^sig_rsc2stat_status\(1),
      I1 => \^sig_rsc2stat_status\(0),
      I2 => \^sig_rd_sts_interr_reg_reg_0\(0),
      I3 => sig_push_status1_out,
      I4 => md_error,
      O => sig_rd_sts_slverr_reg_reg_0
    );
sig_rd_sts_decerr_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_rd_sts_reg,
      D => sig_rd_sts_decerr_reg0,
      Q => \^sig_rsc2stat_status\(0),
      R => sig_rd_sts_tag_reg0
    );
sig_rd_sts_interr_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_rd_sts_reg,
      D => sig_rd_sts_interr_reg0,
      Q => \^sig_rd_sts_interr_reg_reg_0\(0),
      R => sig_rd_sts_tag_reg0
    );
sig_rd_sts_reg_empty_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_rd_sts_reg,
      D => '0',
      Q => sig_rsc2rdc_ready,
      S => sig_rd_sts_tag_reg0
    );
sig_rd_sts_reg_full_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_rd_sts_reg,
      D => '1',
      Q => sig_rsc2stat_status_valid,
      R => sig_rd_sts_tag_reg0
    );
sig_rd_sts_slverr_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_rd_sts_reg,
      D => sig_rd_sts_slverr_reg0,
      Q => \^sig_rsc2stat_status\(1),
      R => sig_rd_sts_tag_reg0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_rddata_cntl is
  port (
    sig_rdc2pcc_cmd_ready : out STD_LOGIC;
    sig_next_calc_error_reg : out STD_LOGIC;
    sig_last_dbeat_reg_0 : out STD_LOGIC;
    m_axi_rvalid_0 : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    sig_rdc2rdskid_tlast : out STD_LOGIC;
    sig_push_rd_sts_reg : out STD_LOGIC;
    sig_rd_sts_interr_reg0 : out STD_LOGIC;
    sig_rd_sts_decerr_reg0 : out STD_LOGIC;
    sig_rd_sts_slverr_reg0 : out STD_LOGIC;
    sig_dqual_reg_empty_reg_0 : out STD_LOGIC;
    sig_pcc2data_cmd_cmplt : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    sig_pcc2data_calc_error : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    sig_pcc2data_sequential : in STD_LOGIC;
    sig_pcc2data_eof : in STD_LOGIC;
    m_axi_rlast : in STD_LOGIC;
    \sig_dbeat_cntr_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sig_next_cmd_cmplt_reg_reg_0 : in STD_LOGIC;
    sig_pcc2data_cmd_valid : in STD_LOGIC;
    sig_status_reg_empty : in STD_LOGIC;
    sig_rsc2stat_status_valid : in STD_LOGIC;
    sig_cmd2all_doing_read : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready_0 : in STD_LOGIC;
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sig_rsc2rdc_ready : in STD_LOGIC;
    sig_rd_sts_interr_reg_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_rsc2stat_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sig_last_dbeat_reg_1 : in STD_LOGIC;
    \sig_addr_posted_cntr_reg[2]_0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_rddata_cntl;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_rddata_cntl is
  signal m_axi_rready_INST_0_i_1_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sig_addr_posted_cntr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \sig_addr_posted_cntr[0]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_posted_cntr[1]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_posted_cntr[2]_i_1_n_0\ : STD_LOGIC;
  signal sig_clr_dqual_reg : STD_LOGIC;
  signal sig_cmd_cmplt_last_dbeat : STD_LOGIC;
  signal sig_coelsc_decerr_reg0 : STD_LOGIC;
  signal sig_coelsc_interr_reg0 : STD_LOGIC;
  signal sig_coelsc_reg_full_i_4_n_0 : STD_LOGIC;
  signal sig_coelsc_slverr_reg0 : STD_LOGIC;
  signal sig_coelsc_tag_reg0 : STD_LOGIC;
  signal sig_dbeat_cntr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \sig_dbeat_cntr[7]_i_1_n_0\ : STD_LOGIC;
  signal \sig_dbeat_cntr[7]_i_3_n_0\ : STD_LOGIC;
  signal sig_dqual_reg_empty : STD_LOGIC;
  signal sig_dqual_reg_full : STD_LOGIC;
  signal sig_last_dbeat_i_1_n_0 : STD_LOGIC;
  signal sig_last_dbeat_i_3_n_0 : STD_LOGIC;
  signal sig_last_dbeat_i_4_n_0 : STD_LOGIC;
  signal \^sig_last_dbeat_reg_0\ : STD_LOGIC;
  signal sig_last_dbeat_reg_n_0 : STD_LOGIC;
  signal sig_last_mmap_dbeat : STD_LOGIC;
  signal sig_ld_new_cmd_reg : STD_LOGIC;
  signal sig_ld_new_cmd_reg_i_1_n_0 : STD_LOGIC;
  signal \^sig_next_calc_error_reg\ : STD_LOGIC;
  signal sig_next_cmd_cmplt_reg : STD_LOGIC;
  signal sig_next_cmd_cmplt_reg_i_3_n_0 : STD_LOGIC;
  signal sig_next_cmd_cmplt_reg_i_4_n_0 : STD_LOGIC;
  signal sig_next_cmd_cmplt_reg_i_5_n_0 : STD_LOGIC;
  signal sig_next_eof_reg : STD_LOGIC;
  signal sig_next_sequential_reg : STD_LOGIC;
  signal sig_push_coelsc_reg : STD_LOGIC;
  signal sig_rd2llink_xfer_cmplt : STD_LOGIC;
  signal \^sig_rdc2pcc_cmd_ready\ : STD_LOGIC;
  signal sig_rdc2rsc_calc_err : STD_LOGIC;
  signal sig_rdc2rsc_decerr : STD_LOGIC;
  signal sig_rdc2rsc_slverr : STD_LOGIC;
  signal sig_rdc2rsc_valid : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of sig_coelsc_decerr_reg_i_1 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of sig_coelsc_interr_reg_i_1 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of sig_coelsc_reg_full_i_3 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of sig_coelsc_slverr_reg_i_1 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \sig_dbeat_cntr[0]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \sig_dbeat_cntr[1]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \sig_dbeat_cntr[6]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \sig_dbeat_cntr[7]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of sig_last_skid_reg_i_1 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of sig_next_cmd_cmplt_reg_i_4 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of sig_next_cmd_cmplt_reg_i_5 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of sig_rd_sts_interr_reg_i_1 : label is "soft_lutpair27";
begin
  sig_last_dbeat_reg_0 <= \^sig_last_dbeat_reg_0\;
  sig_next_calc_error_reg <= \^sig_next_calc_error_reg\;
  sig_rdc2pcc_cmd_ready <= \^sig_rdc2pcc_cmd_ready\;
m_axi_rready_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => sig_rdc2rsc_valid,
      I1 => sig_dqual_reg_full,
      I2 => m_axi_rready_0,
      I3 => m_axi_rready_INST_0_i_1_n_0,
      I4 => \^sig_next_calc_error_reg\,
      O => m_axi_rready
    );
m_axi_rready_INST_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => sig_addr_posted_cntr(0),
      I1 => sig_addr_posted_cntr(1),
      I2 => sig_addr_posted_cntr(2),
      O => m_axi_rready_INST_0_i_1_n_0
    );
\sig_addr_posted_cntr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F87878778787808"
    )
        port map (
      I0 => sig_cmd2all_doing_read,
      I1 => \sig_addr_posted_cntr_reg[2]_0\,
      I2 => sig_rd2llink_xfer_cmplt,
      I3 => sig_addr_posted_cntr(2),
      I4 => sig_addr_posted_cntr(1),
      I5 => sig_addr_posted_cntr(0),
      O => \sig_addr_posted_cntr[0]_i_1_n_0\
    );
\sig_addr_posted_cntr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCE698CC98CC98CC"
    )
        port map (
      I0 => sig_addr_posted_cntr(0),
      I1 => sig_addr_posted_cntr(1),
      I2 => sig_addr_posted_cntr(2),
      I3 => sig_rd2llink_xfer_cmplt,
      I4 => \sig_addr_posted_cntr_reg[2]_0\,
      I5 => sig_cmd2all_doing_read,
      O => \sig_addr_posted_cntr[1]_i_1_n_0\
    );
\sig_addr_posted_cntr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F8E0F0E0F0E0F0"
    )
        port map (
      I0 => sig_addr_posted_cntr(0),
      I1 => sig_addr_posted_cntr(1),
      I2 => sig_addr_posted_cntr(2),
      I3 => sig_rd2llink_xfer_cmplt,
      I4 => \sig_addr_posted_cntr_reg[2]_0\,
      I5 => sig_cmd2all_doing_read,
      O => \sig_addr_posted_cntr[2]_i_1_n_0\
    );
\sig_addr_posted_cntr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_addr_posted_cntr[0]_i_1_n_0\,
      Q => sig_addr_posted_cntr(0),
      R => \out\
    );
\sig_addr_posted_cntr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_addr_posted_cntr[1]_i_1_n_0\,
      Q => sig_addr_posted_cntr(1),
      R => \out\
    );
\sig_addr_posted_cntr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_addr_posted_cntr[2]_i_1_n_0\,
      Q => sig_addr_posted_cntr(2),
      R => \out\
    );
sig_coelsc_decerr_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => sig_rdc2rsc_decerr,
      I1 => m_axi_rresp(0),
      I2 => m_axi_rresp(1),
      O => sig_coelsc_decerr_reg0
    );
sig_coelsc_decerr_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_coelsc_reg,
      D => sig_coelsc_decerr_reg0,
      Q => sig_rdc2rsc_decerr,
      R => sig_coelsc_tag_reg0
    );
sig_coelsc_interr_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sig_next_calc_error_reg\,
      I1 => sig_rdc2rsc_calc_err,
      O => sig_coelsc_interr_reg0
    );
sig_coelsc_interr_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_coelsc_reg,
      D => sig_coelsc_interr_reg0,
      Q => sig_rdc2rsc_calc_err,
      R => sig_coelsc_tag_reg0
    );
sig_coelsc_reg_full_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFAAAAAA"
    )
        port map (
      I0 => \out\,
      I1 => \^sig_next_calc_error_reg\,
      I2 => sig_ld_new_cmd_reg,
      I3 => sig_rdc2rsc_valid,
      I4 => sig_rsc2rdc_ready,
      O => sig_coelsc_tag_reg0
    );
sig_coelsc_reg_full_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => sig_coelsc_reg_full_i_4_n_0,
      I1 => sig_ld_new_cmd_reg,
      I2 => \^sig_next_calc_error_reg\,
      O => sig_push_coelsc_reg
    );
sig_coelsc_reg_full_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => \^sig_next_calc_error_reg\,
      I1 => m_axi_rvalid,
      I2 => m_axi_rlast,
      I3 => sig_next_cmd_cmplt_reg,
      O => sig_cmd_cmplt_last_dbeat
    );
sig_coelsc_reg_full_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => sig_dqual_reg_full,
      I1 => sig_rdc2rsc_valid,
      I2 => m_axi_rvalid,
      I3 => m_axi_rready_0,
      I4 => m_axi_rready_INST_0_i_1_n_0,
      I5 => \^sig_next_calc_error_reg\,
      O => sig_coelsc_reg_full_i_4_n_0
    );
sig_coelsc_reg_full_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_coelsc_reg,
      D => sig_cmd_cmplt_last_dbeat,
      Q => sig_rdc2rsc_valid,
      R => sig_coelsc_tag_reg0
    );
sig_coelsc_slverr_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => sig_rdc2rsc_slverr,
      I1 => m_axi_rresp(0),
      I2 => m_axi_rresp(1),
      O => sig_coelsc_slverr_reg0
    );
sig_coelsc_slverr_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_coelsc_reg,
      D => sig_coelsc_slverr_reg0,
      Q => sig_rdc2rsc_slverr,
      R => sig_coelsc_tag_reg0
    );
\sig_dbeat_cntr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \sig_dbeat_cntr_reg[3]_0\(0),
      I1 => \^sig_rdc2pcc_cmd_ready\,
      I2 => sig_dbeat_cntr(0),
      O => p_1_in(0)
    );
\sig_dbeat_cntr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => \sig_dbeat_cntr_reg[3]_0\(1),
      I1 => \^sig_rdc2pcc_cmd_ready\,
      I2 => sig_dbeat_cntr(1),
      I3 => sig_dbeat_cntr(0),
      O => p_1_in(1)
    );
\sig_dbeat_cntr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8888B"
    )
        port map (
      I0 => \sig_dbeat_cntr_reg[3]_0\(2),
      I1 => \^sig_rdc2pcc_cmd_ready\,
      I2 => sig_dbeat_cntr(1),
      I3 => sig_dbeat_cntr(0),
      I4 => sig_dbeat_cntr(2),
      O => p_1_in(2)
    );
\sig_dbeat_cntr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB88888888B"
    )
        port map (
      I0 => \sig_dbeat_cntr_reg[3]_0\(3),
      I1 => \^sig_rdc2pcc_cmd_ready\,
      I2 => sig_dbeat_cntr(2),
      I3 => sig_dbeat_cntr(0),
      I4 => sig_dbeat_cntr(1),
      I5 => sig_dbeat_cntr(3),
      O => p_1_in(3)
    );
\sig_dbeat_cntr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555400000001"
    )
        port map (
      I0 => \^sig_rdc2pcc_cmd_ready\,
      I1 => sig_dbeat_cntr(3),
      I2 => sig_dbeat_cntr(1),
      I3 => sig_dbeat_cntr(0),
      I4 => sig_dbeat_cntr(2),
      I5 => sig_dbeat_cntr(4),
      O => p_1_in(4)
    );
\sig_dbeat_cntr[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \sig_dbeat_cntr[7]_i_3_n_0\,
      I1 => sig_dbeat_cntr(5),
      I2 => \^sig_rdc2pcc_cmd_ready\,
      O => p_1_in(5)
    );
\sig_dbeat_cntr[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D2"
    )
        port map (
      I0 => \sig_dbeat_cntr[7]_i_3_n_0\,
      I1 => sig_dbeat_cntr(5),
      I2 => sig_dbeat_cntr(6),
      I3 => \^sig_rdc2pcc_cmd_ready\,
      O => p_1_in(6)
    );
\sig_dbeat_cntr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFBAAAAAAAA"
    )
        port map (
      I0 => \^sig_rdc2pcc_cmd_ready\,
      I1 => \sig_dbeat_cntr[7]_i_3_n_0\,
      I2 => sig_dbeat_cntr(5),
      I3 => sig_dbeat_cntr(7),
      I4 => sig_dbeat_cntr(6),
      I5 => sig_coelsc_reg_full_i_4_n_0,
      O => \sig_dbeat_cntr[7]_i_1_n_0\
    );
\sig_dbeat_cntr[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FB04"
    )
        port map (
      I0 => sig_dbeat_cntr(5),
      I1 => \sig_dbeat_cntr[7]_i_3_n_0\,
      I2 => sig_dbeat_cntr(6),
      I3 => sig_dbeat_cntr(7),
      I4 => \^sig_rdc2pcc_cmd_ready\,
      O => p_1_in(7)
    );
\sig_dbeat_cntr[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => sig_dbeat_cntr(4),
      I1 => sig_dbeat_cntr(2),
      I2 => sig_dbeat_cntr(0),
      I3 => sig_dbeat_cntr(1),
      I4 => sig_dbeat_cntr(3),
      O => \sig_dbeat_cntr[7]_i_3_n_0\
    );
\sig_dbeat_cntr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_dbeat_cntr[7]_i_1_n_0\,
      D => p_1_in(0),
      Q => sig_dbeat_cntr(0),
      R => \out\
    );
\sig_dbeat_cntr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_dbeat_cntr[7]_i_1_n_0\,
      D => p_1_in(1),
      Q => sig_dbeat_cntr(1),
      R => \out\
    );
\sig_dbeat_cntr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_dbeat_cntr[7]_i_1_n_0\,
      D => p_1_in(2),
      Q => sig_dbeat_cntr(2),
      R => \out\
    );
\sig_dbeat_cntr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_dbeat_cntr[7]_i_1_n_0\,
      D => p_1_in(3),
      Q => sig_dbeat_cntr(3),
      R => \out\
    );
\sig_dbeat_cntr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_dbeat_cntr[7]_i_1_n_0\,
      D => p_1_in(4),
      Q => sig_dbeat_cntr(4),
      R => \out\
    );
\sig_dbeat_cntr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_dbeat_cntr[7]_i_1_n_0\,
      D => p_1_in(5),
      Q => sig_dbeat_cntr(5),
      R => \out\
    );
\sig_dbeat_cntr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_dbeat_cntr[7]_i_1_n_0\,
      D => p_1_in(6),
      Q => sig_dbeat_cntr(6),
      R => \out\
    );
\sig_dbeat_cntr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_dbeat_cntr[7]_i_1_n_0\,
      D => p_1_in(7),
      Q => sig_dbeat_cntr(7),
      R => \out\
    );
sig_dqual_reg_empty_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \^sig_rdc2pcc_cmd_ready\,
      D => '0',
      Q => sig_dqual_reg_empty,
      S => sig_clr_dqual_reg
    );
sig_dqual_reg_full_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \^sig_rdc2pcc_cmd_ready\,
      D => \^sig_rdc2pcc_cmd_ready\,
      Q => sig_dqual_reg_full,
      R => sig_clr_dqual_reg
    );
sig_last_dbeat_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEFEEE0"
    )
        port map (
      I0 => sig_last_dbeat_reg_1,
      I1 => sig_last_dbeat_i_3_n_0,
      I2 => \out\,
      I3 => \sig_dbeat_cntr[7]_i_1_n_0\,
      I4 => sig_last_dbeat_reg_n_0,
      O => sig_last_dbeat_i_1_n_0
    );
sig_last_dbeat_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => sig_next_cmd_cmplt_reg_i_3_n_0,
      I1 => sig_dbeat_cntr(5),
      I2 => sig_dbeat_cntr(7),
      I3 => sig_dbeat_cntr(6),
      I4 => sig_last_dbeat_i_4_n_0,
      I5 => sig_coelsc_reg_full_i_4_n_0,
      O => sig_last_dbeat_i_3_n_0
    );
sig_last_dbeat_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => sig_dbeat_cntr(0),
      I1 => sig_dbeat_cntr(1),
      I2 => \out\,
      I3 => sig_dbeat_cntr(3),
      I4 => sig_dbeat_cntr(2),
      I5 => sig_dbeat_cntr(4),
      O => sig_last_dbeat_i_4_n_0
    );
sig_last_dbeat_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_last_dbeat_i_1_n_0,
      Q => sig_last_dbeat_reg_n_0,
      R => '0'
    );
sig_last_mmap_dbeat_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axi_rlast,
      I1 => sig_coelsc_reg_full_i_4_n_0,
      O => sig_last_mmap_dbeat
    );
sig_last_mmap_dbeat_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_last_mmap_dbeat,
      Q => sig_rd2llink_xfer_cmplt,
      R => \out\
    );
sig_last_skid_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sig_next_eof_reg,
      I1 => m_axi_rlast,
      I2 => m_axi_rvalid,
      O => sig_rdc2rdskid_tlast
    );
sig_ld_new_cmd_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \out\,
      I1 => \^sig_rdc2pcc_cmd_ready\,
      I2 => sig_ld_new_cmd_reg,
      O => sig_ld_new_cmd_reg_i_1_n_0
    );
sig_ld_new_cmd_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_ld_new_cmd_reg_i_1_n_0,
      Q => sig_ld_new_cmd_reg,
      R => '0'
    );
sig_m_valid_dup_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFDF"
    )
        port map (
      I0 => m_axi_rvalid,
      I1 => sig_rdc2rsc_valid,
      I2 => sig_dqual_reg_full,
      I3 => m_axi_rready_INST_0_i_1_n_0,
      I4 => \^sig_next_calc_error_reg\,
      O => m_axi_rvalid_0
    );
sig_next_calc_error_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \^sig_rdc2pcc_cmd_ready\,
      D => sig_pcc2data_calc_error,
      Q => \^sig_next_calc_error_reg\,
      R => sig_clr_dqual_reg
    );
sig_next_cmd_cmplt_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAAAAA"
    )
        port map (
      I0 => \out\,
      I1 => sig_next_cmd_cmplt_reg_i_3_n_0,
      I2 => \^sig_next_calc_error_reg\,
      I3 => m_axi_rlast,
      I4 => sig_next_cmd_cmplt_reg_i_4_n_0,
      O => sig_clr_dqual_reg
    );
sig_next_cmd_cmplt_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000F2"
    )
        port map (
      I0 => sig_next_cmd_cmplt_reg_i_5_n_0,
      I1 => m_axi_rready_INST_0_i_1_n_0,
      I2 => sig_dqual_reg_empty,
      I3 => \^sig_last_dbeat_reg_0\,
      I4 => sig_next_cmd_cmplt_reg_reg_0,
      I5 => \^sig_next_calc_error_reg\,
      O => \^sig_rdc2pcc_cmd_ready\
    );
sig_next_cmd_cmplt_reg_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBBFFFF"
    )
        port map (
      I0 => \^sig_last_dbeat_reg_0\,
      I1 => sig_pcc2data_cmd_valid,
      I2 => sig_status_reg_empty,
      I3 => sig_rsc2stat_status_valid,
      I4 => sig_cmd2all_doing_read,
      O => sig_next_cmd_cmplt_reg_i_3_n_0
    );
sig_next_cmd_cmplt_reg_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => sig_dqual_reg_full,
      I1 => sig_rdc2rsc_valid,
      I2 => m_axi_rvalid,
      I3 => m_axi_rready_0,
      I4 => m_axi_rready_INST_0_i_1_n_0,
      O => sig_next_cmd_cmplt_reg_i_4_n_0
    );
sig_next_cmd_cmplt_reg_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => m_axi_rready_0,
      I1 => m_axi_rvalid,
      I2 => sig_rdc2rsc_valid,
      I3 => sig_dqual_reg_full,
      O => sig_next_cmd_cmplt_reg_i_5_n_0
    );
sig_next_cmd_cmplt_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \^sig_rdc2pcc_cmd_ready\,
      D => sig_pcc2data_cmd_cmplt,
      Q => sig_next_cmd_cmplt_reg,
      R => sig_clr_dqual_reg
    );
sig_next_eof_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \^sig_rdc2pcc_cmd_ready\,
      D => sig_pcc2data_eof,
      Q => sig_next_eof_reg,
      R => sig_clr_dqual_reg
    );
sig_next_sequential_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \^sig_rdc2pcc_cmd_ready\,
      D => sig_pcc2data_sequential,
      Q => sig_next_sequential_reg,
      R => sig_clr_dqual_reg
    );
sig_rd_sts_decerr_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sig_rdc2rsc_decerr,
      I1 => sig_rsc2stat_status(0),
      O => sig_rd_sts_decerr_reg0
    );
sig_rd_sts_interr_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sig_rdc2rsc_calc_err,
      I1 => sig_rd_sts_interr_reg_reg(0),
      O => sig_rd_sts_interr_reg0
    );
sig_rd_sts_reg_full_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sig_rdc2rsc_valid,
      I1 => sig_rsc2rdc_ready,
      O => sig_push_rd_sts_reg
    );
sig_rd_sts_slverr_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sig_rdc2rsc_slverr,
      I1 => sig_rsc2stat_status(1),
      O => sig_rd_sts_slverr_reg0
    );
sig_xfer_reg_empty_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF07070707070707"
    )
        port map (
      I0 => sig_last_dbeat_reg_n_0,
      I1 => sig_next_sequential_reg,
      I2 => sig_dqual_reg_empty,
      I3 => sig_addr_posted_cntr(2),
      I4 => sig_addr_posted_cntr(0),
      I5 => sig_addr_posted_cntr(1),
      O => \^sig_last_dbeat_reg_0\
    );
sig_xfer_reg_empty_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555455555555555"
    )
        port map (
      I0 => sig_dqual_reg_empty,
      I1 => m_axi_rready_INST_0_i_1_n_0,
      I2 => m_axi_rready_0,
      I3 => m_axi_rvalid,
      I4 => sig_rdc2rsc_valid,
      I5 => sig_dqual_reg_full,
      O => sig_dqual_reg_empty_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_reset is
  port (
    \out\ : out STD_LOGIC;
    sig_rdwr_reset_reg_reg_0 : out STD_LOGIC;
    sig_llink_reset_reg_reg_0 : out STD_LOGIC;
    sig_axi_por2rst_out : out STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    sig_llink_reset_reg_reg_1 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_reset;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_reset is
  signal sig_axi_por2rst : STD_LOGIC;
  signal sig_axi_por2rst_out_i_2_n_0 : STD_LOGIC;
  signal sig_axi_por_reg1 : STD_LOGIC;
  signal sig_axi_por_reg2 : STD_LOGIC;
  signal sig_axi_por_reg3 : STD_LOGIC;
  signal sig_axi_por_reg4 : STD_LOGIC;
  signal sig_axi_por_reg5 : STD_LOGIC;
  signal sig_axi_por_reg6 : STD_LOGIC;
  signal sig_axi_por_reg7 : STD_LOGIC;
  signal sig_axi_por_reg8 : STD_LOGIC;
  signal sig_cmd_reset_reg : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of sig_cmd_reset_reg : signal is "true";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of sig_cmd_reset_reg : signal is "no";
  signal sig_llink_reset_reg : STD_LOGIC;
  attribute RTL_KEEP of sig_llink_reset_reg : signal is "true";
  attribute equivalent_register_removal of sig_llink_reset_reg : signal is "no";
  signal sig_rdwr_reset_reg : STD_LOGIC;
  attribute RTL_KEEP of sig_rdwr_reset_reg : signal is "true";
  attribute equivalent_register_removal of sig_rdwr_reset_reg : signal is "no";
  attribute KEEP : string;
  attribute KEEP of sig_cmd_reset_reg_reg : label is "yes";
  attribute equivalent_register_removal of sig_cmd_reset_reg_reg : label is "no";
  attribute KEEP of sig_llink_reset_reg_reg : label is "yes";
  attribute equivalent_register_removal of sig_llink_reset_reg_reg : label is "no";
  attribute KEEP of sig_rdwr_reset_reg_reg : label is "yes";
  attribute equivalent_register_removal of sig_rdwr_reset_reg_reg : label is "no";
begin
  \out\ <= sig_cmd_reset_reg;
  sig_llink_reset_reg_reg_0 <= sig_llink_reset_reg;
  sig_rdwr_reset_reg_reg_0 <= sig_rdwr_reset_reg;
sig_axi_por2rst_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => sig_axi_por_reg7,
      I1 => sig_axi_por_reg6,
      I2 => sig_axi_por_reg1,
      I3 => sig_axi_por_reg8,
      I4 => sig_axi_por2rst_out_i_2_n_0,
      O => sig_axi_por2rst
    );
sig_axi_por2rst_out_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => sig_axi_por_reg4,
      I1 => sig_axi_por_reg5,
      I2 => sig_axi_por_reg2,
      I3 => sig_axi_por_reg3,
      O => sig_axi_por2rst_out_i_2_n_0
    );
sig_axi_por2rst_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_axi_por2rst,
      Q => sig_axi_por2rst_out,
      R => '0'
    );
sig_axi_por_reg1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => '1',
      Q => sig_axi_por_reg1,
      R => '0'
    );
sig_axi_por_reg2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_axi_por_reg1,
      Q => sig_axi_por_reg2,
      R => '0'
    );
sig_axi_por_reg3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_axi_por_reg2,
      Q => sig_axi_por_reg3,
      R => '0'
    );
sig_axi_por_reg4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_axi_por_reg3,
      Q => sig_axi_por_reg4,
      R => '0'
    );
sig_axi_por_reg5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_axi_por_reg4,
      Q => sig_axi_por_reg5,
      R => '0'
    );
sig_axi_por_reg6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_axi_por_reg5,
      Q => sig_axi_por_reg6,
      R => '0'
    );
sig_axi_por_reg7_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_axi_por_reg6,
      Q => sig_axi_por_reg7,
      R => '0'
    );
sig_axi_por_reg8_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_axi_por_reg7,
      Q => sig_axi_por_reg8,
      R => '0'
    );
sig_cmd_reset_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_llink_reset_reg_reg_1,
      Q => sig_cmd_reset_reg,
      R => '0'
    );
sig_llink_reset_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_llink_reset_reg_reg_1,
      Q => sig_llink_reset_reg,
      R => '0'
    );
sig_rdwr_reset_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_llink_reset_reg_reg_1,
      Q => sig_rdwr_reset_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_skid2mm_buf is
  port (
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_aclk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    sig_init_reg : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_skid2mm_buf;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_skid2mm_buf is
  signal \^m_axi_wstrb\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sig_m_valid_dup : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of sig_m_valid_dup : signal is "true";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of sig_m_valid_dup : signal is "no";
  signal \sig_m_valid_dup_i_1__0_n_0\ : STD_LOGIC;
  signal sig_m_valid_out : STD_LOGIC;
  attribute RTL_KEEP of sig_m_valid_out : signal is "true";
  attribute equivalent_register_removal of sig_m_valid_out : signal is "no";
  signal sig_s_ready_dup : STD_LOGIC;
  attribute RTL_KEEP of sig_s_ready_dup : signal is "true";
  attribute equivalent_register_removal of sig_s_ready_dup : signal is "no";
  signal \sig_s_ready_dup_i_1__1_n_0\ : STD_LOGIC;
  signal sig_s_ready_out : STD_LOGIC;
  attribute RTL_KEEP of sig_s_ready_out : signal is "true";
  attribute equivalent_register_removal of sig_s_ready_out : signal is "no";
  signal \sig_strb_reg_out[3]_i_1_n_0\ : STD_LOGIC;
  signal sig_strb_skid_reg : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute KEEP : string;
  attribute KEEP of sig_m_valid_dup_reg : label is "yes";
  attribute equivalent_register_removal of sig_m_valid_dup_reg : label is "no";
  attribute KEEP of sig_m_valid_out_reg : label is "yes";
  attribute equivalent_register_removal of sig_m_valid_out_reg : label is "no";
  attribute KEEP of sig_s_ready_dup_reg : label is "yes";
  attribute equivalent_register_removal of sig_s_ready_dup_reg : label is "no";
  attribute KEEP of sig_s_ready_out_reg : label is "yes";
  attribute equivalent_register_removal of sig_s_ready_out_reg : label is "no";
begin
  m_axi_wstrb(0) <= \^m_axi_wstrb\(0);
  m_axi_wvalid <= sig_m_valid_out;
\sig_m_valid_dup_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01110000"
    )
        port map (
      I0 => sig_init_reg,
      I1 => \out\,
      I2 => m_axi_wready,
      I3 => sig_s_ready_dup,
      I4 => sig_m_valid_dup,
      O => \sig_m_valid_dup_i_1__0_n_0\
    );
sig_m_valid_dup_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_m_valid_dup_i_1__0_n_0\,
      Q => sig_m_valid_dup,
      R => '0'
    );
sig_m_valid_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_m_valid_dup_i_1__0_n_0\,
      Q => sig_m_valid_out,
      R => '0'
    );
\sig_s_ready_dup_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => sig_s_ready_dup,
      I1 => m_axi_wready,
      I2 => sig_init_reg,
      O => \sig_s_ready_dup_i_1__1_n_0\
    );
sig_s_ready_dup_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_s_ready_dup_i_1__1_n_0\,
      Q => sig_s_ready_dup,
      R => \out\
    );
sig_s_ready_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_s_ready_dup_i_1__1_n_0\,
      Q => sig_s_ready_out,
      R => \out\
    );
\sig_strb_reg_out[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEEE0EE"
    )
        port map (
      I0 => sig_s_ready_dup,
      I1 => sig_strb_skid_reg(3),
      I2 => m_axi_wready,
      I3 => sig_m_valid_dup,
      I4 => \^m_axi_wstrb\(0),
      O => \sig_strb_reg_out[3]_i_1_n_0\
    );
\sig_strb_reg_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_strb_reg_out[3]_i_1_n_0\,
      Q => \^m_axi_wstrb\(0),
      R => \out\
    );
\sig_strb_skid_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => '1',
      Q => sig_strb_skid_reg(3),
      R => \out\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_skid_buf is
  port (
    sig_m_valid_dup_reg_0 : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    sig_m_valid_out_reg_0 : out STD_LOGIC;
    sig_rd2llink_strm_tlast : out STD_LOGIC;
    \sig_data_reg_out_reg[23]_0\ : out STD_LOGIC_VECTOR ( 17 downto 0 );
    m_axi_aclk : in STD_LOGIC;
    sig_s_ready_out_reg_0 : in STD_LOGIC;
    sig_rdc2rdskid_tlast : in STD_LOGIC;
    sig_init_reg : in STD_LOGIC;
    sig_m_valid_out_reg_1 : in STD_LOGIC;
    sig_s_ready_dup_reg_0 : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 17 downto 0 );
    sig_llink2cmd_rd_busy : in STD_LOGIC;
    IP2Bus_MstRd_dst_rdy : in STD_LOGIC;
    \sig_data_reg_out_reg[23]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_skid_buf;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_skid_buf is
  signal sig_data_skid_mux_out : STD_LOGIC_VECTOR ( 23 downto 2 );
  signal sig_data_skid_reg : STD_LOGIC_VECTOR ( 23 downto 2 );
  signal sig_last_reg_out_i_1_n_0 : STD_LOGIC;
  signal sig_last_skid_reg : STD_LOGIC;
  signal sig_m_valid_dup : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of sig_m_valid_dup : signal is "true";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of sig_m_valid_dup : signal is "no";
  signal sig_m_valid_dup_i_1_n_0 : STD_LOGIC;
  signal sig_m_valid_out : STD_LOGIC;
  attribute RTL_KEEP of sig_m_valid_out : signal is "true";
  attribute equivalent_register_removal of sig_m_valid_out : signal is "no";
  signal \^sig_rd2llink_strm_tlast\ : STD_LOGIC;
  signal sig_s_ready_dup : STD_LOGIC;
  attribute RTL_KEEP of sig_s_ready_dup : signal is "true";
  attribute equivalent_register_removal of sig_s_ready_dup : signal is "no";
  signal \sig_s_ready_dup_i_1__0_n_0\ : STD_LOGIC;
  signal sig_s_ready_out : STD_LOGIC;
  attribute RTL_KEEP of sig_s_ready_out : signal is "true";
  attribute equivalent_register_removal of sig_s_ready_out : signal is "no";
  attribute KEEP : string;
  attribute KEEP of sig_m_valid_dup_reg : label is "yes";
  attribute equivalent_register_removal of sig_m_valid_dup_reg : label is "no";
  attribute KEEP of sig_m_valid_out_reg : label is "yes";
  attribute equivalent_register_removal of sig_m_valid_out_reg : label is "no";
  attribute KEEP of sig_s_ready_dup_reg : label is "yes";
  attribute equivalent_register_removal of sig_s_ready_dup_reg : label is "no";
  attribute KEEP of sig_s_ready_out_reg : label is "yes";
  attribute equivalent_register_removal of sig_s_ready_out_reg : label is "no";
begin
  \out\ <= sig_s_ready_out;
  sig_m_valid_dup_reg_0 <= sig_m_valid_dup;
  sig_m_valid_out_reg_0 <= sig_m_valid_out;
  sig_rd2llink_strm_tlast <= \^sig_rd2llink_strm_tlast\;
\sig_data_reg_out[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(6),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(10),
      O => sig_data_skid_mux_out(10)
    );
\sig_data_reg_out[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(7),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(11),
      O => sig_data_skid_mux_out(11)
    );
\sig_data_reg_out[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(8),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(12),
      O => sig_data_skid_mux_out(12)
    );
\sig_data_reg_out[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(9),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(13),
      O => sig_data_skid_mux_out(13)
    );
\sig_data_reg_out[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(10),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(14),
      O => sig_data_skid_mux_out(14)
    );
\sig_data_reg_out[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(11),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(15),
      O => sig_data_skid_mux_out(15)
    );
\sig_data_reg_out[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(12),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(18),
      O => sig_data_skid_mux_out(18)
    );
\sig_data_reg_out[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(13),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(19),
      O => sig_data_skid_mux_out(19)
    );
\sig_data_reg_out[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(14),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(20),
      O => sig_data_skid_mux_out(20)
    );
\sig_data_reg_out[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(15),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(21),
      O => sig_data_skid_mux_out(21)
    );
\sig_data_reg_out[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(16),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(22),
      O => sig_data_skid_mux_out(22)
    );
\sig_data_reg_out[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(17),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(23),
      O => sig_data_skid_mux_out(23)
    );
\sig_data_reg_out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(0),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(2),
      O => sig_data_skid_mux_out(2)
    );
\sig_data_reg_out[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(1),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(3),
      O => sig_data_skid_mux_out(3)
    );
\sig_data_reg_out[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(2),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(4),
      O => sig_data_skid_mux_out(4)
    );
\sig_data_reg_out[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(3),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(5),
      O => sig_data_skid_mux_out(5)
    );
\sig_data_reg_out[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(4),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(6),
      O => sig_data_skid_mux_out(6)
    );
\sig_data_reg_out[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(5),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(7),
      O => sig_data_skid_mux_out(7)
    );
\sig_data_reg_out_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_data_reg_out_reg[23]_1\(0),
      D => sig_data_skid_mux_out(10),
      Q => \sig_data_reg_out_reg[23]_0\(6),
      R => '0'
    );
\sig_data_reg_out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_data_reg_out_reg[23]_1\(0),
      D => sig_data_skid_mux_out(11),
      Q => \sig_data_reg_out_reg[23]_0\(7),
      R => '0'
    );
\sig_data_reg_out_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_data_reg_out_reg[23]_1\(0),
      D => sig_data_skid_mux_out(12),
      Q => \sig_data_reg_out_reg[23]_0\(8),
      R => '0'
    );
\sig_data_reg_out_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_data_reg_out_reg[23]_1\(0),
      D => sig_data_skid_mux_out(13),
      Q => \sig_data_reg_out_reg[23]_0\(9),
      R => '0'
    );
\sig_data_reg_out_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_data_reg_out_reg[23]_1\(0),
      D => sig_data_skid_mux_out(14),
      Q => \sig_data_reg_out_reg[23]_0\(10),
      R => '0'
    );
\sig_data_reg_out_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_data_reg_out_reg[23]_1\(0),
      D => sig_data_skid_mux_out(15),
      Q => \sig_data_reg_out_reg[23]_0\(11),
      R => '0'
    );
\sig_data_reg_out_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_data_reg_out_reg[23]_1\(0),
      D => sig_data_skid_mux_out(18),
      Q => \sig_data_reg_out_reg[23]_0\(12),
      R => '0'
    );
\sig_data_reg_out_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_data_reg_out_reg[23]_1\(0),
      D => sig_data_skid_mux_out(19),
      Q => \sig_data_reg_out_reg[23]_0\(13),
      R => '0'
    );
\sig_data_reg_out_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_data_reg_out_reg[23]_1\(0),
      D => sig_data_skid_mux_out(20),
      Q => \sig_data_reg_out_reg[23]_0\(14),
      R => '0'
    );
\sig_data_reg_out_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_data_reg_out_reg[23]_1\(0),
      D => sig_data_skid_mux_out(21),
      Q => \sig_data_reg_out_reg[23]_0\(15),
      R => '0'
    );
\sig_data_reg_out_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_data_reg_out_reg[23]_1\(0),
      D => sig_data_skid_mux_out(22),
      Q => \sig_data_reg_out_reg[23]_0\(16),
      R => '0'
    );
\sig_data_reg_out_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_data_reg_out_reg[23]_1\(0),
      D => sig_data_skid_mux_out(23),
      Q => \sig_data_reg_out_reg[23]_0\(17),
      R => '0'
    );
\sig_data_reg_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_data_reg_out_reg[23]_1\(0),
      D => sig_data_skid_mux_out(2),
      Q => \sig_data_reg_out_reg[23]_0\(0),
      R => '0'
    );
\sig_data_reg_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_data_reg_out_reg[23]_1\(0),
      D => sig_data_skid_mux_out(3),
      Q => \sig_data_reg_out_reg[23]_0\(1),
      R => '0'
    );
\sig_data_reg_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_data_reg_out_reg[23]_1\(0),
      D => sig_data_skid_mux_out(4),
      Q => \sig_data_reg_out_reg[23]_0\(2),
      R => '0'
    );
\sig_data_reg_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_data_reg_out_reg[23]_1\(0),
      D => sig_data_skid_mux_out(5),
      Q => \sig_data_reg_out_reg[23]_0\(3),
      R => '0'
    );
\sig_data_reg_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_data_reg_out_reg[23]_1\(0),
      D => sig_data_skid_mux_out(6),
      Q => \sig_data_reg_out_reg[23]_0\(4),
      R => '0'
    );
\sig_data_reg_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_data_reg_out_reg[23]_1\(0),
      D => sig_data_skid_mux_out(7),
      Q => \sig_data_reg_out_reg[23]_0\(5),
      R => '0'
    );
\sig_data_skid_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(6),
      Q => sig_data_skid_reg(10),
      R => '0'
    );
\sig_data_skid_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(7),
      Q => sig_data_skid_reg(11),
      R => '0'
    );
\sig_data_skid_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(8),
      Q => sig_data_skid_reg(12),
      R => '0'
    );
\sig_data_skid_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(9),
      Q => sig_data_skid_reg(13),
      R => '0'
    );
\sig_data_skid_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(10),
      Q => sig_data_skid_reg(14),
      R => '0'
    );
\sig_data_skid_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(11),
      Q => sig_data_skid_reg(15),
      R => '0'
    );
\sig_data_skid_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(12),
      Q => sig_data_skid_reg(18),
      R => '0'
    );
\sig_data_skid_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(13),
      Q => sig_data_skid_reg(19),
      R => '0'
    );
\sig_data_skid_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(14),
      Q => sig_data_skid_reg(20),
      R => '0'
    );
\sig_data_skid_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(15),
      Q => sig_data_skid_reg(21),
      R => '0'
    );
\sig_data_skid_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(16),
      Q => sig_data_skid_reg(22),
      R => '0'
    );
\sig_data_skid_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(17),
      Q => sig_data_skid_reg(23),
      R => '0'
    );
\sig_data_skid_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(0),
      Q => sig_data_skid_reg(2),
      R => '0'
    );
\sig_data_skid_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(1),
      Q => sig_data_skid_reg(3),
      R => '0'
    );
\sig_data_skid_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(2),
      Q => sig_data_skid_reg(4),
      R => '0'
    );
\sig_data_skid_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(3),
      Q => sig_data_skid_reg(5),
      R => '0'
    );
\sig_data_skid_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(4),
      Q => sig_data_skid_reg(6),
      R => '0'
    );
\sig_data_skid_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(5),
      Q => sig_data_skid_reg(7),
      R => '0'
    );
sig_last_reg_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => sig_rdc2rdskid_tlast,
      I1 => sig_s_ready_dup,
      I2 => sig_last_skid_reg,
      I3 => \sig_data_reg_out_reg[23]_1\(0),
      I4 => \^sig_rd2llink_strm_tlast\,
      O => sig_last_reg_out_i_1_n_0
    );
sig_last_reg_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_last_reg_out_i_1_n_0,
      Q => \^sig_rd2llink_strm_tlast\,
      R => sig_s_ready_out_reg_0
    );
sig_last_skid_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => sig_rdc2rdskid_tlast,
      Q => sig_last_skid_reg,
      R => sig_s_ready_out_reg_0
    );
sig_m_valid_dup_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010101011111111"
    )
        port map (
      I0 => sig_init_reg,
      I1 => sig_s_ready_out_reg_0,
      I2 => sig_m_valid_dup,
      I3 => sig_m_valid_out_reg_1,
      I4 => sig_s_ready_dup,
      I5 => sig_s_ready_dup_reg_0,
      O => sig_m_valid_dup_i_1_n_0
    );
sig_m_valid_dup_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_m_valid_dup_i_1_n_0,
      Q => sig_m_valid_dup,
      R => '0'
    );
sig_m_valid_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_m_valid_dup_i_1_n_0,
      Q => sig_m_valid_out,
      R => '0'
    );
\sig_s_ready_dup_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8FFFFF8F8F8F8"
    )
        port map (
      I0 => sig_llink2cmd_rd_busy,
      I1 => IP2Bus_MstRd_dst_rdy,
      I2 => sig_init_reg,
      I3 => sig_s_ready_dup_reg_0,
      I4 => sig_m_valid_dup,
      I5 => sig_s_ready_dup,
      O => \sig_s_ready_dup_i_1__0_n_0\
    );
sig_s_ready_dup_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_s_ready_dup_i_1__0_n_0\,
      Q => sig_s_ready_dup,
      R => sig_s_ready_out_reg_0
    );
sig_s_ready_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_s_ready_dup_i_1__0_n_0\,
      Q => sig_s_ready_out,
      R => sig_s_ready_out_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_skid_buf_9 is
  port (
    \out\ : out STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    sig_s_ready_out_reg_0 : in STD_LOGIC;
    sig_s_ready_out_reg_1 : in STD_LOGIC;
    sig_init_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_skid_buf_9 : entity is "axi_master_burst_skid_buf";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_skid_buf_9;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_skid_buf_9 is
  signal sig_m_valid_dup : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of sig_m_valid_dup : signal is "true";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of sig_m_valid_dup : signal is "no";
  signal \sig_m_valid_dup_i_1__1_n_0\ : STD_LOGIC;
  signal sig_m_valid_out : STD_LOGIC;
  attribute RTL_KEEP of sig_m_valid_out : signal is "true";
  attribute equivalent_register_removal of sig_m_valid_out : signal is "no";
  signal sig_s_ready_dup : STD_LOGIC;
  attribute RTL_KEEP of sig_s_ready_dup : signal is "true";
  attribute equivalent_register_removal of sig_s_ready_dup : signal is "no";
  signal sig_s_ready_out : STD_LOGIC;
  attribute RTL_KEEP of sig_s_ready_out : signal is "true";
  attribute equivalent_register_removal of sig_s_ready_out : signal is "no";
  attribute KEEP : string;
  attribute KEEP of sig_m_valid_dup_reg : label is "yes";
  attribute equivalent_register_removal of sig_m_valid_dup_reg : label is "no";
  attribute KEEP of sig_m_valid_out_reg : label is "yes";
  attribute equivalent_register_removal of sig_m_valid_out_reg : label is "no";
  attribute KEEP of sig_s_ready_dup_reg : label is "yes";
  attribute equivalent_register_removal of sig_s_ready_dup_reg : label is "no";
  attribute KEEP of sig_s_ready_out_reg : label is "yes";
  attribute equivalent_register_removal of sig_s_ready_out_reg : label is "no";
begin
  \out\ <= sig_s_ready_dup;
\sig_m_valid_dup_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => sig_m_valid_dup,
      I1 => sig_init_reg,
      I2 => sig_s_ready_out_reg_0,
      O => \sig_m_valid_dup_i_1__1_n_0\
    );
sig_m_valid_dup_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_m_valid_dup_i_1__1_n_0\,
      Q => sig_m_valid_dup,
      R => '0'
    );
sig_m_valid_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_m_valid_dup_i_1__1_n_0\,
      Q => sig_m_valid_out,
      R => '0'
    );
sig_s_ready_dup_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_s_ready_out_reg_1,
      Q => sig_s_ready_dup,
      R => sig_s_ready_out_reg_0
    );
sig_s_ready_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_s_ready_out_reg_1,
      Q => sig_s_ready_out,
      R => sig_s_ready_out_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft_v2_0_22_h_sync is
  port (
    vsync_rst : out STD_LOGIC;
    h_pix_cnt_tc : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \HSYNC_cs_reg[1]_0\ : out STD_LOGIC;
    H_bp_cnt_tc_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk_ce_pos0 : out STD_LOGIC;
    \HSYNC_cs_reg[0]_0\ : out STD_LOGIC;
    clk_ce_neg0 : out STD_LOGIC;
    HSYNC_i : out STD_LOGIC;
    sys_tft_clk : in STD_LOGIC;
    tft_rst : in STD_LOGIC;
    \RED_reg[5]\ : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    scndry_out : in STD_LOGIC;
    \RED_reg[5]_0\ : in STD_LOGIC;
    clk_stb_d1 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft_v2_0_22_h_sync;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft_v2_0_22_h_sync is
  signal HSYNC_cs : STD_LOGIC_VECTOR ( 0 to 4 );
  signal \^hsync_cs_reg[1]_0\ : STD_LOGIC;
  signal \HSYNC_ns__0\ : STD_LOGIC_VECTOR ( 0 to 4 );
  signal HSYNC_ns_n_0 : STD_LOGIC;
  signal H_bp_cnt_tc2_i_1_n_0 : STD_LOGIC;
  signal H_bp_cnt_tc_i_1_n_0 : STD_LOGIC;
  signal H_bp_cnt_tc_i_2_n_0 : STD_LOGIC;
  signal H_bp_cnt_tc_i_3_n_0 : STD_LOGIC;
  signal H_pix_cnt_tc_i_1_n_0 : STD_LOGIC;
  signal H_pix_cnt_tc_i_2_n_0 : STD_LOGIC;
  signal H_pix_cnt_tc_i_3_n_0 : STD_LOGIC;
  signal H_pix_cnt_tc_i_4_n_0 : STD_LOGIC;
  signal H_pix_cnt_tc_i_5_n_0 : STD_LOGIC;
  signal h_bp_cnt : STD_LOGIC_VECTOR ( 0 to 5 );
  signal h_bp_cnt0 : STD_LOGIC;
  signal \h_bp_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \h_bp_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \h_bp_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \h_bp_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \h_bp_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \h_bp_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal h_bp_cnt_tc : STD_LOGIC;
  signal h_bp_cnt_tc2 : STD_LOGIC;
  signal h_fp_cnt : STD_LOGIC_VECTOR ( 0 to 3 );
  signal h_fp_cnt0 : STD_LOGIC;
  signal \h_fp_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \h_fp_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \h_fp_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \h_fp_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \h_fp_cnt_tc__0\ : STD_LOGIC;
  signal h_fp_cnt_tc_n_0 : STD_LOGIC;
  signal h_p_cnt : STD_LOGIC_VECTOR ( 0 to 6 );
  signal h_p_cnt0 : STD_LOGIC;
  signal \h_p_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal h_p_cnt_0 : STD_LOGIC_VECTOR ( 0 to 6 );
  signal h_p_cnt_tc : STD_LOGIC;
  signal h_p_cnt_tc_i_2_n_0 : STD_LOGIC;
  signal h_p_cnt_tc_reg_n_0 : STD_LOGIC;
  signal h_pix_cnt : STD_LOGIC_VECTOR ( 0 to 10 );
  signal h_pix_cnt0 : STD_LOGIC;
  signal \h_pix_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \h_pix_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \h_pix_cnt[10]_i_1_n_0\ : STD_LOGIC;
  signal \h_pix_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \h_pix_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \h_pix_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \h_pix_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \h_pix_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \h_pix_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \h_pix_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \h_pix_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \h_pix_cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal \^h_pix_cnt_tc\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of FDR_DE_i_2 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of FDS_HSYNC_i_2 : label is "soft_lutpair33";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \HSYNC_cs_reg[0]\ : label is "SET_COUNTERS:00001,BACK_PORCH:00100,PIXEL:01000,PULSE:00010,FRONT_PORCH:10000";
  attribute FSM_ENCODED_STATES of \HSYNC_cs_reg[1]\ : label is "SET_COUNTERS:00001,BACK_PORCH:00100,PIXEL:01000,PULSE:00010,FRONT_PORCH:10000";
  attribute FSM_ENCODED_STATES of \HSYNC_cs_reg[2]\ : label is "SET_COUNTERS:00001,BACK_PORCH:00100,PIXEL:01000,PULSE:00010,FRONT_PORCH:10000";
  attribute FSM_ENCODED_STATES of \HSYNC_cs_reg[3]\ : label is "SET_COUNTERS:00001,BACK_PORCH:00100,PIXEL:01000,PULSE:00010,FRONT_PORCH:10000";
  attribute FSM_ENCODED_STATES of \HSYNC_cs_reg[4]\ : label is "SET_COUNTERS:00001,BACK_PORCH:00100,PIXEL:01000,PULSE:00010,FRONT_PORCH:10000";
  attribute SOFT_HLUTNM of HSYNC_ns : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of H_pix_cnt_tc_i_1 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of clk_stb_d1_i_1 : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \h_bp_cnt[1]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \h_bp_cnt[2]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \h_bp_cnt[3]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \h_bp_cnt[4]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \h_fp_cnt[0]_i_2\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \h_fp_cnt[1]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \h_fp_cnt[2]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of h_fp_cnt_tc : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \h_p_cnt[0]_i_3\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \h_p_cnt[2]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \h_p_cnt[3]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \h_p_cnt[4]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \h_p_cnt[5]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of h_p_cnt_tc_i_1 : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \h_pix_cnt[10]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \h_pix_cnt[1]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \h_pix_cnt[2]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \h_pix_cnt[3]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \h_pix_cnt[4]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \h_pix_cnt[6]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \h_pix_cnt[7]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \h_pix_cnt[8]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \h_pix_cnt[9]_i_1\ : label is "soft_lutpair31";
begin
  \HSYNC_cs_reg[1]_0\ <= \^hsync_cs_reg[1]_0\;
  h_pix_cnt_tc <= \^h_pix_cnt_tc\;
\BRAM_TFT_addr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEFEFFE"
    )
        port map (
      I0 => tft_rst,
      I1 => \RED_reg[5]\,
      I2 => h_bp_cnt_tc,
      I3 => h_bp_cnt_tc2,
      I4 => \^hsync_cs_reg[1]_0\,
      O => H_bp_cnt_tc_reg_0(0)
    );
FDR_DE_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => HSYNC_cs(1),
      I1 => HSYNC_cs(3),
      I2 => HSYNC_cs(2),
      I3 => HSYNC_cs(4),
      I4 => HSYNC_cs(0),
      O => \^hsync_cs_reg[1]_0\
    );
FDS_HSYNC_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => HSYNC_cs(3),
      I1 => HSYNC_cs(1),
      I2 => HSYNC_cs(2),
      I3 => HSYNC_cs(4),
      I4 => HSYNC_cs(0),
      O => HSYNC_i
    );
\HSYNC_cs[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080F080"
    )
        port map (
      I0 => \^h_pix_cnt_tc\,
      I1 => HSYNC_cs(1),
      I2 => HSYNC_ns_n_0,
      I3 => HSYNC_cs(0),
      I4 => \h_fp_cnt_tc__0\,
      O => \HSYNC_ns__0\(0)
    );
\HSYNC_cs[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080F080"
    )
        port map (
      I0 => h_bp_cnt_tc,
      I1 => HSYNC_cs(2),
      I2 => HSYNC_ns_n_0,
      I3 => HSYNC_cs(1),
      I4 => \^h_pix_cnt_tc\,
      O => \HSYNC_ns__0\(1)
    );
\HSYNC_cs[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080F080"
    )
        port map (
      I0 => h_p_cnt_tc_reg_n_0,
      I1 => HSYNC_cs(3),
      I2 => HSYNC_ns_n_0,
      I3 => HSYNC_cs(2),
      I4 => h_bp_cnt_tc,
      O => \HSYNC_ns__0\(2)
    );
\HSYNC_cs[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF8F8800000000"
    )
        port map (
      I0 => \h_fp_cnt_tc__0\,
      I1 => HSYNC_cs(0),
      I2 => h_p_cnt_tc_reg_n_0,
      I3 => HSYNC_cs(3),
      I4 => HSYNC_cs(4),
      I5 => HSYNC_ns_n_0,
      O => \HSYNC_ns__0\(3)
    );
\HSYNC_cs[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => HSYNC_ns_n_0,
      O => \HSYNC_ns__0\(4)
    );
\HSYNC_cs_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \HSYNC_ns__0\(0),
      Q => HSYNC_cs(0),
      R => tft_rst
    );
\HSYNC_cs_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \HSYNC_ns__0\(1),
      Q => HSYNC_cs(1),
      R => tft_rst
    );
\HSYNC_cs_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \HSYNC_ns__0\(2),
      Q => HSYNC_cs(2),
      R => tft_rst
    );
\HSYNC_cs_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \HSYNC_ns__0\(3),
      Q => HSYNC_cs(3),
      R => tft_rst
    );
\HSYNC_cs_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \HSYNC_ns__0\(4),
      Q => HSYNC_cs(4),
      S => tft_rst
    );
HSYNC_ns: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010116"
    )
        port map (
      I0 => HSYNC_cs(4),
      I1 => HSYNC_cs(3),
      I2 => HSYNC_cs(2),
      I3 => HSYNC_cs(1),
      I4 => HSYNC_cs(0),
      O => HSYNC_ns_n_0
    );
H_bp_cnt_tc2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => h_bp_cnt(3),
      I1 => h_bp_cnt(2),
      I2 => h_bp_cnt(5),
      I3 => h_bp_cnt(4),
      I4 => h_bp_cnt(1),
      I5 => h_bp_cnt(0),
      O => H_bp_cnt_tc2_i_1_n_0
    );
H_bp_cnt_tc2_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => H_bp_cnt_tc2_i_1_n_0,
      Q => h_bp_cnt_tc2,
      R => h_bp_cnt0
    );
H_bp_cnt_tc_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => H_bp_cnt_tc_i_2_n_0,
      I1 => H_bp_cnt_tc_i_3_n_0,
      I2 => h_bp_cnt(5),
      I3 => h_bp_cnt(4),
      I4 => h_bp_cnt(2),
      I5 => h_bp_cnt(3),
      O => H_bp_cnt_tc_i_1_n_0
    );
H_bp_cnt_tc_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => HSYNC_cs(3),
      I1 => HSYNC_cs(1),
      I2 => HSYNC_cs(0),
      I3 => HSYNC_cs(4),
      I4 => HSYNC_cs(2),
      I5 => tft_rst,
      O => H_bp_cnt_tc_i_2_n_0
    );
H_bp_cnt_tc_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_bp_cnt(0),
      I1 => h_bp_cnt(1),
      O => H_bp_cnt_tc_i_3_n_0
    );
H_bp_cnt_tc_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => H_bp_cnt_tc_i_1_n_0,
      Q => h_bp_cnt_tc,
      R => '0'
    );
H_pix_cnt_tc_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABAAA8A"
    )
        port map (
      I0 => H_pix_cnt_tc_i_2_n_0,
      I1 => H_pix_cnt_tc_i_3_n_0,
      I2 => h_pix_cnt(10),
      I3 => h_pix_cnt(9),
      I4 => \^h_pix_cnt_tc\,
      O => H_pix_cnt_tc_i_1_n_0
    );
H_pix_cnt_tc_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => h_pix_cnt(0),
      I1 => h_pix_cnt(1),
      I2 => h_pix_cnt(8),
      I3 => h_pix_cnt(9),
      I4 => h_pix_cnt(10),
      I5 => H_pix_cnt_tc_i_4_n_0,
      O => H_pix_cnt_tc_i_2_n_0
    );
H_pix_cnt_tc_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => h_pix_cnt(7),
      I1 => h_pix_cnt(8),
      I2 => h_pix_cnt(6),
      I3 => h_pix_cnt(5),
      I4 => H_pix_cnt_tc_i_5_n_0,
      O => H_pix_cnt_tc_i_3_n_0
    );
H_pix_cnt_tc_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => h_pix_cnt(5),
      I1 => h_pix_cnt(4),
      I2 => h_pix_cnt(7),
      I3 => h_pix_cnt(6),
      I4 => h_pix_cnt(2),
      I5 => h_pix_cnt(3),
      O => H_pix_cnt_tc_i_4_n_0
    );
H_pix_cnt_tc_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFDFF"
    )
        port map (
      I0 => h_pix_cnt(4),
      I1 => h_pix_cnt(3),
      I2 => h_pix_cnt(0),
      I3 => h_pix_cnt(1),
      I4 => h_pix_cnt(2),
      O => H_pix_cnt_tc_i_5_n_0
    );
H_pix_cnt_tc_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => H_pix_cnt_tc_i_1_n_0,
      Q => \^h_pix_cnt_tc\,
      R => h_pix_cnt0
    );
\RED[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6FFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^hsync_cs_reg[1]_0\,
      I1 => h_bp_cnt_tc,
      I2 => \RED_reg[5]\,
      I3 => \out\,
      I4 => scndry_out,
      I5 => \RED_reg[5]_0\,
      O => SR(0)
    );
VSYNC_Rst_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => tft_rst,
      Q => vsync_rst,
      R => '0'
    );
clk_ce_neg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00000000"
    )
        port map (
      I0 => HSYNC_cs(0),
      I1 => HSYNC_cs(4),
      I2 => HSYNC_cs(2),
      I3 => HSYNC_cs(1),
      I4 => HSYNC_cs(3),
      I5 => clk_stb_d1,
      O => clk_ce_neg0
    );
clk_ce_pos_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => HSYNC_cs(0),
      I1 => HSYNC_cs(4),
      I2 => HSYNC_cs(2),
      I3 => HSYNC_cs(1),
      I4 => HSYNC_cs(3),
      I5 => clk_stb_d1,
      O => clk_ce_pos0
    );
clk_stb_d1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => HSYNC_cs(0),
      I1 => HSYNC_cs(4),
      I2 => HSYNC_cs(2),
      I3 => HSYNC_cs(1),
      I4 => HSYNC_cs(3),
      O => \HSYNC_cs_reg[0]_0\
    );
\h_bp_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => tft_rst,
      I1 => HSYNC_cs(2),
      I2 => HSYNC_cs(4),
      I3 => HSYNC_cs(0),
      I4 => HSYNC_cs(1),
      I5 => HSYNC_cs(3),
      O => h_bp_cnt0
    );
\h_bp_cnt[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => h_bp_cnt(1),
      I1 => h_bp_cnt(3),
      I2 => h_bp_cnt(5),
      I3 => h_bp_cnt(4),
      I4 => h_bp_cnt(2),
      I5 => h_bp_cnt(0),
      O => \h_bp_cnt[0]_i_2_n_0\
    );
\h_bp_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => h_bp_cnt(2),
      I1 => h_bp_cnt(4),
      I2 => h_bp_cnt(5),
      I3 => h_bp_cnt(3),
      I4 => h_bp_cnt(1),
      O => \h_bp_cnt[1]_i_1_n_0\
    );
\h_bp_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => h_bp_cnt(3),
      I1 => h_bp_cnt(5),
      I2 => h_bp_cnt(4),
      I3 => h_bp_cnt(2),
      O => \h_bp_cnt[2]_i_1_n_0\
    );
\h_bp_cnt[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => h_bp_cnt(4),
      I1 => h_bp_cnt(5),
      I2 => h_bp_cnt(3),
      O => \h_bp_cnt[3]_i_1_n_0\
    );
\h_bp_cnt[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => h_bp_cnt(5),
      I1 => h_bp_cnt(4),
      O => \h_bp_cnt[4]_i_1_n_0\
    );
\h_bp_cnt[5]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_bp_cnt(5),
      O => \h_bp_cnt[5]_i_1_n_0\
    );
\h_bp_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_bp_cnt[0]_i_2_n_0\,
      Q => h_bp_cnt(0),
      R => h_bp_cnt0
    );
\h_bp_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_bp_cnt[1]_i_1_n_0\,
      Q => h_bp_cnt(1),
      R => h_bp_cnt0
    );
\h_bp_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_bp_cnt[2]_i_1_n_0\,
      Q => h_bp_cnt(2),
      R => h_bp_cnt0
    );
\h_bp_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_bp_cnt[3]_i_1_n_0\,
      Q => h_bp_cnt(3),
      R => h_bp_cnt0
    );
\h_bp_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_bp_cnt[4]_i_1_n_0\,
      Q => h_bp_cnt(4),
      R => h_bp_cnt0
    );
\h_bp_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_bp_cnt[5]_i_1_n_0\,
      Q => h_bp_cnt(5),
      R => h_bp_cnt0
    );
\h_fp_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAABAABE"
    )
        port map (
      I0 => tft_rst,
      I1 => HSYNC_cs(4),
      I2 => HSYNC_cs(2),
      I3 => HSYNC_cs(0),
      I4 => HSYNC_cs(1),
      I5 => HSYNC_cs(3),
      O => h_fp_cnt0
    );
\h_fp_cnt[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6CCC"
    )
        port map (
      I0 => h_fp_cnt(2),
      I1 => h_fp_cnt(0),
      I2 => h_fp_cnt(3),
      I3 => h_fp_cnt(1),
      O => \h_fp_cnt[0]_i_2_n_0\
    );
\h_fp_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => h_fp_cnt(2),
      I1 => h_fp_cnt(3),
      I2 => h_fp_cnt(1),
      O => \h_fp_cnt[1]_i_1_n_0\
    );
\h_fp_cnt[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => h_fp_cnt(2),
      I1 => h_fp_cnt(3),
      O => \h_fp_cnt[2]_i_1_n_0\
    );
\h_fp_cnt[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_fp_cnt(3),
      O => \h_fp_cnt[3]_i_1_n_0\
    );
\h_fp_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_fp_cnt[0]_i_2_n_0\,
      Q => h_fp_cnt(0),
      R => h_fp_cnt0
    );
\h_fp_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_fp_cnt[1]_i_1_n_0\,
      Q => h_fp_cnt(1),
      R => h_fp_cnt0
    );
\h_fp_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_fp_cnt[2]_i_1_n_0\,
      Q => h_fp_cnt(2),
      R => h_fp_cnt0
    );
\h_fp_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_fp_cnt[3]_i_1_n_0\,
      Q => h_fp_cnt(3),
      R => h_fp_cnt0
    );
h_fp_cnt_tc: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => h_fp_cnt(3),
      I1 => h_fp_cnt(1),
      I2 => h_fp_cnt(0),
      I3 => h_fp_cnt(2),
      O => h_fp_cnt_tc_n_0
    );
h_fp_cnt_tc_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => h_fp_cnt_tc_n_0,
      Q => \h_fp_cnt_tc__0\,
      R => h_fp_cnt0
    );
\h_p_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => HSYNC_cs(0),
      I1 => HSYNC_cs(4),
      I2 => HSYNC_cs(2),
      I3 => HSYNC_cs(1),
      I4 => HSYNC_cs(3),
      I5 => tft_rst,
      O => h_p_cnt0
    );
\h_p_cnt[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => h_p_cnt(1),
      I1 => \h_p_cnt[0]_i_3_n_0\,
      I2 => h_p_cnt(0),
      O => h_p_cnt_0(0)
    );
\h_p_cnt[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => h_p_cnt(3),
      I1 => h_p_cnt(5),
      I2 => h_p_cnt(6),
      I3 => h_p_cnt(4),
      I4 => h_p_cnt(2),
      O => \h_p_cnt[0]_i_3_n_0\
    );
\h_p_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => h_p_cnt(2),
      I1 => h_p_cnt(4),
      I2 => h_p_cnt(6),
      I3 => h_p_cnt(5),
      I4 => h_p_cnt(3),
      I5 => h_p_cnt(1),
      O => h_p_cnt_0(1)
    );
\h_p_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => h_p_cnt(3),
      I1 => h_p_cnt(5),
      I2 => h_p_cnt(6),
      I3 => h_p_cnt(4),
      I4 => h_p_cnt(2),
      O => h_p_cnt_0(2)
    );
\h_p_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => h_p_cnt(4),
      I1 => h_p_cnt(6),
      I2 => h_p_cnt(5),
      I3 => h_p_cnt(3),
      O => h_p_cnt_0(3)
    );
\h_p_cnt[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => h_p_cnt(5),
      I1 => h_p_cnt(6),
      I2 => h_p_cnt(4),
      O => h_p_cnt_0(4)
    );
\h_p_cnt[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => h_p_cnt(6),
      I1 => h_p_cnt(5),
      O => h_p_cnt_0(5)
    );
\h_p_cnt[6]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_p_cnt(6),
      O => h_p_cnt_0(6)
    );
\h_p_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => h_p_cnt_0(0),
      Q => h_p_cnt(0),
      R => h_p_cnt0
    );
\h_p_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => h_p_cnt_0(1),
      Q => h_p_cnt(1),
      R => h_p_cnt0
    );
\h_p_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => h_p_cnt_0(2),
      Q => h_p_cnt(2),
      R => h_p_cnt0
    );
\h_p_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => h_p_cnt_0(3),
      Q => h_p_cnt(3),
      R => h_p_cnt0
    );
\h_p_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => h_p_cnt_0(4),
      Q => h_p_cnt(4),
      R => h_p_cnt0
    );
\h_p_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => h_p_cnt_0(5),
      Q => h_p_cnt(5),
      R => h_p_cnt0
    );
\h_p_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => h_p_cnt_0(6),
      Q => h_p_cnt(6),
      R => h_p_cnt0
    );
h_p_cnt_tc_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_p_cnt_tc_i_2_n_0,
      I1 => h_p_cnt(6),
      O => h_p_cnt_tc
    );
h_p_cnt_tc_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => h_p_cnt(3),
      I1 => h_p_cnt(2),
      I2 => h_p_cnt(5),
      I3 => h_p_cnt(4),
      I4 => h_p_cnt(1),
      I5 => h_p_cnt(0),
      O => h_p_cnt_tc_i_2_n_0
    );
h_p_cnt_tc_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => h_p_cnt_tc,
      Q => h_p_cnt_tc_reg_n_0,
      R => h_p_cnt0
    );
\h_pix_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => tft_rst,
      I1 => HSYNC_cs(0),
      I2 => HSYNC_cs(4),
      I3 => HSYNC_cs(2),
      I4 => HSYNC_cs(3),
      I5 => HSYNC_cs(1),
      O => h_pix_cnt0
    );
\h_pix_cnt[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC6CCCCCCCCCCCCC"
    )
        port map (
      I0 => h_pix_cnt(1),
      I1 => h_pix_cnt(0),
      I2 => h_pix_cnt(3),
      I3 => \h_pix_cnt[0]_i_3_n_0\,
      I4 => h_pix_cnt(4),
      I5 => h_pix_cnt(2),
      O => \h_pix_cnt[0]_i_2_n_0\
    );
\h_pix_cnt[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => h_pix_cnt(6),
      I1 => h_pix_cnt(8),
      I2 => h_pix_cnt(10),
      I3 => h_pix_cnt(9),
      I4 => h_pix_cnt(7),
      I5 => h_pix_cnt(5),
      O => \h_pix_cnt[0]_i_3_n_0\
    );
\h_pix_cnt[10]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_pix_cnt(10),
      O => \h_pix_cnt[10]_i_1_n_0\
    );
\h_pix_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => h_pix_cnt(2),
      I1 => h_pix_cnt(4),
      I2 => \h_pix_cnt[0]_i_3_n_0\,
      I3 => h_pix_cnt(3),
      I4 => h_pix_cnt(1),
      O => \h_pix_cnt[1]_i_1_n_0\
    );
\h_pix_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => h_pix_cnt(3),
      I1 => \h_pix_cnt[0]_i_3_n_0\,
      I2 => h_pix_cnt(4),
      I3 => h_pix_cnt(2),
      O => \h_pix_cnt[2]_i_1_n_0\
    );
\h_pix_cnt[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => h_pix_cnt(4),
      I1 => \h_pix_cnt[0]_i_3_n_0\,
      I2 => h_pix_cnt(3),
      O => \h_pix_cnt[3]_i_1_n_0\
    );
\h_pix_cnt[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \h_pix_cnt[0]_i_3_n_0\,
      I1 => h_pix_cnt(4),
      O => \h_pix_cnt[4]_i_1_n_0\
    );
\h_pix_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => h_pix_cnt(6),
      I1 => h_pix_cnt(8),
      I2 => h_pix_cnt(10),
      I3 => h_pix_cnt(9),
      I4 => h_pix_cnt(7),
      I5 => h_pix_cnt(5),
      O => \h_pix_cnt[5]_i_1_n_0\
    );
\h_pix_cnt[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => h_pix_cnt(7),
      I1 => h_pix_cnt(9),
      I2 => h_pix_cnt(10),
      I3 => h_pix_cnt(8),
      I4 => h_pix_cnt(6),
      O => \h_pix_cnt[6]_i_1_n_0\
    );
\h_pix_cnt[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => h_pix_cnt(8),
      I1 => h_pix_cnt(10),
      I2 => h_pix_cnt(9),
      I3 => h_pix_cnt(7),
      O => \h_pix_cnt[7]_i_1_n_0\
    );
\h_pix_cnt[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => h_pix_cnt(9),
      I1 => h_pix_cnt(10),
      I2 => h_pix_cnt(8),
      O => \h_pix_cnt[8]_i_1_n_0\
    );
\h_pix_cnt[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => h_pix_cnt(10),
      I1 => h_pix_cnt(9),
      O => \h_pix_cnt[9]_i_1_n_0\
    );
\h_pix_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_pix_cnt[0]_i_2_n_0\,
      Q => h_pix_cnt(0),
      R => h_pix_cnt0
    );
\h_pix_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_pix_cnt[10]_i_1_n_0\,
      Q => h_pix_cnt(10),
      R => h_pix_cnt0
    );
\h_pix_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_pix_cnt[1]_i_1_n_0\,
      Q => h_pix_cnt(1),
      R => h_pix_cnt0
    );
\h_pix_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_pix_cnt[2]_i_1_n_0\,
      Q => h_pix_cnt(2),
      R => h_pix_cnt0
    );
\h_pix_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_pix_cnt[3]_i_1_n_0\,
      Q => h_pix_cnt(3),
      R => h_pix_cnt0
    );
\h_pix_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_pix_cnt[4]_i_1_n_0\,
      Q => h_pix_cnt(4),
      R => h_pix_cnt0
    );
\h_pix_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_pix_cnt[5]_i_1_n_0\,
      Q => h_pix_cnt(5),
      R => h_pix_cnt0
    );
\h_pix_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_pix_cnt[6]_i_1_n_0\,
      Q => h_pix_cnt(6),
      R => h_pix_cnt0
    );
\h_pix_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_pix_cnt[7]_i_1_n_0\,
      Q => h_pix_cnt(7),
      R => h_pix_cnt0
    );
\h_pix_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_pix_cnt[8]_i_1_n_0\,
      Q => h_pix_cnt(8),
      R => h_pix_cnt0
    );
\h_pix_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_pix_cnt[9]_i_1_n_0\,
      Q => h_pix_cnt(9),
      R => h_pix_cnt0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft_v2_0_22_slave_register is
  port (
    TFT_iic_xfer : out STD_LOGIC;
    \IP2Bus_Data_reg[0]_0\ : out STD_LOGIC_VECTOR ( 26 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 10 downto 0 );
    bus2ip_rdce_d1_reg_0 : out STD_LOGIC;
    bus2ip_rdce_d2_reg_0 : out STD_LOGIC;
    TFT_status_reg : out STD_LOGIC;
    prmry_in : out STD_LOGIC;
    TFT_on_reg_reg_0 : out STD_LOGIC;
    tft_dps : out STD_LOGIC;
    cs_ce_clr : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    bus2ip_rdce_d1_reg_1 : out STD_LOGIC;
    bus2ip_wrce_d1_reg_0 : out STD_LOGIC;
    s_axi_wdata_0_sp_1 : out STD_LOGIC;
    \TFT_iic_reg_data_reg[4]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    bus2ip_sreset : in STD_LOGIC;
    bus2ip_wrce : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 26 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    \IP2Bus_Data_reg[1]_0\ : in STD_LOGIC;
    \IP2Bus_Data_reg[16]_0\ : in STD_LOGIC;
    tft_status_i : in STD_LOGIC;
    bus2ip_rdce_or : in STD_LOGIC;
    bus2ip_wrce_or : in STD_LOGIC;
    TFT_status_reg_reg_0 : in STD_LOGIC;
    TFT_intr_en_reg_0 : in STD_LOGIC;
    TFT_on_reg_reg_1 : in STD_LOGIC;
    TFT_dps_reg_reg_0 : in STD_LOGIC;
    \IP2Bus_Data_reg[0]_1\ : in STD_LOGIC;
    \IP2Bus_Data_reg[28]_0\ : in STD_LOGIC;
    \IP2Bus_Data_reg[30]_0\ : in STD_LOGIC;
    \IP2Bus_Data_reg[31]_0\ : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_rvalid_i_reg : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \state1__2\ : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_rvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_bvalid : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft_v2_0_22_slave_register;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft_v2_0_22_slave_register is
  signal \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rvalid_i0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal TFT_iic_reg_addr : STD_LOGIC_VECTOR ( 0 to 7 );
  signal TFT_iic_reg_data : STD_LOGIC_VECTOR ( 0 to 5 );
  signal \^tft_status_reg\ : STD_LOGIC;
  signal \^bus2ip_rdce_d1_reg_0\ : STD_LOGIC;
  signal \^bus2ip_rdce_d2_reg_0\ : STD_LOGIC;
  signal bus2ip_wrce_d1 : STD_LOGIC;
  signal bus2ip_wrce_d2 : STD_LOGIC;
  signal s_axi_wdata_0_sn_1 : STD_LOGIC;
  signal tft_status_d1 : STD_LOGIC;
  signal tft_status_d2 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_2\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of s_axi_rvalid_i_i_1 : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of s_axi_wready_INST_0 : label is "soft_lutpair99";
begin
  Q(10 downto 0) <= \^q\(10 downto 0);
  TFT_status_reg <= \^tft_status_reg\;
  bus2ip_rdce_d1_reg_0 <= \^bus2ip_rdce_d1_reg_0\;
  bus2ip_rdce_d2_reg_0 <= \^bus2ip_rdce_d2_reg_0\;
  s_axi_wdata_0_sp_1 <= s_axi_wdata_0_sn_1;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF2020FF20"
    )
        port map (
      I0 => bus2ip_wrce_d1,
      I1 => bus2ip_wrce_d2,
      I2 => s_axi_rvalid_i_reg(1),
      I3 => s_axi_rvalid_i_reg(0),
      I4 => \state1__2\,
      I5 => \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rvalid_i0\,
      O => D(0)
    );
\FSM_onehot_state[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_axi_rvalid_i_reg(2),
      I1 => \^bus2ip_rdce_d2_reg_0\,
      I2 => \^bus2ip_rdce_d1_reg_0\,
      O => \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rvalid_i0\
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22F2FFFF"
    )
        port map (
      I0 => bus2ip_wrce_d1,
      I1 => bus2ip_wrce_d2,
      I2 => \^bus2ip_rdce_d1_reg_0\,
      I3 => \^bus2ip_rdce_d2_reg_0\,
      I4 => s_axi_aresetn,
      O => cs_ce_clr
    );
\IP2Bus_Data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IP2Bus_Data_reg[0]_1\,
      Q => \IP2Bus_Data_reg[0]_0\(26),
      R => '0'
    );
\IP2Bus_Data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^q\(0),
      Q => \IP2Bus_Data_reg[0]_0\(16),
      R => \IP2Bus_Data_reg[1]_0\
    );
\IP2Bus_Data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => TFT_iic_reg_addr(0),
      Q => \IP2Bus_Data_reg[0]_0\(15),
      R => \IP2Bus_Data_reg[16]_0\
    );
\IP2Bus_Data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => TFT_iic_reg_addr(1),
      Q => \IP2Bus_Data_reg[0]_0\(14),
      R => \IP2Bus_Data_reg[16]_0\
    );
\IP2Bus_Data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => TFT_iic_reg_addr(2),
      Q => \IP2Bus_Data_reg[0]_0\(13),
      R => \IP2Bus_Data_reg[16]_0\
    );
\IP2Bus_Data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => TFT_iic_reg_addr(3),
      Q => \IP2Bus_Data_reg[0]_0\(12),
      R => \IP2Bus_Data_reg[16]_0\
    );
\IP2Bus_Data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^q\(9),
      Q => \IP2Bus_Data_reg[0]_0\(25),
      R => \IP2Bus_Data_reg[1]_0\
    );
\IP2Bus_Data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => TFT_iic_reg_addr(4),
      Q => \IP2Bus_Data_reg[0]_0\(11),
      R => \IP2Bus_Data_reg[16]_0\
    );
\IP2Bus_Data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => TFT_iic_reg_addr(5),
      Q => \IP2Bus_Data_reg[0]_0\(10),
      R => \IP2Bus_Data_reg[16]_0\
    );
\IP2Bus_Data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => TFT_iic_reg_addr(6),
      Q => \IP2Bus_Data_reg[0]_0\(9),
      R => \IP2Bus_Data_reg[16]_0\
    );
\IP2Bus_Data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => TFT_iic_reg_addr(7),
      Q => \IP2Bus_Data_reg[0]_0\(8),
      R => \IP2Bus_Data_reg[16]_0\
    );
\IP2Bus_Data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => TFT_iic_reg_data(0),
      Q => \IP2Bus_Data_reg[0]_0\(7),
      R => \IP2Bus_Data_reg[16]_0\
    );
\IP2Bus_Data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => TFT_iic_reg_data(1),
      Q => \IP2Bus_Data_reg[0]_0\(6),
      R => \IP2Bus_Data_reg[16]_0\
    );
\IP2Bus_Data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => TFT_iic_reg_data(2),
      Q => \IP2Bus_Data_reg[0]_0\(5),
      R => \IP2Bus_Data_reg[16]_0\
    );
\IP2Bus_Data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => TFT_iic_reg_data(3),
      Q => \IP2Bus_Data_reg[0]_0\(4),
      R => \IP2Bus_Data_reg[16]_0\
    );
\IP2Bus_Data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IP2Bus_Data_reg[28]_0\,
      Q => \IP2Bus_Data_reg[0]_0\(3),
      R => '0'
    );
\IP2Bus_Data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => TFT_iic_reg_data(5),
      Q => \IP2Bus_Data_reg[0]_0\(2),
      R => \IP2Bus_Data_reg[16]_0\
    );
\IP2Bus_Data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^q\(8),
      Q => \IP2Bus_Data_reg[0]_0\(24),
      R => \IP2Bus_Data_reg[1]_0\
    );
\IP2Bus_Data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IP2Bus_Data_reg[30]_0\,
      Q => \IP2Bus_Data_reg[0]_0\(1),
      R => '0'
    );
\IP2Bus_Data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IP2Bus_Data_reg[31]_0\,
      Q => \IP2Bus_Data_reg[0]_0\(0),
      R => '0'
    );
\IP2Bus_Data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^q\(7),
      Q => \IP2Bus_Data_reg[0]_0\(23),
      R => \IP2Bus_Data_reg[1]_0\
    );
\IP2Bus_Data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^q\(6),
      Q => \IP2Bus_Data_reg[0]_0\(22),
      R => \IP2Bus_Data_reg[1]_0\
    );
\IP2Bus_Data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^q\(5),
      Q => \IP2Bus_Data_reg[0]_0\(21),
      R => \IP2Bus_Data_reg[1]_0\
    );
\IP2Bus_Data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^q\(4),
      Q => \IP2Bus_Data_reg[0]_0\(20),
      R => \IP2Bus_Data_reg[1]_0\
    );
\IP2Bus_Data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^q\(3),
      Q => \IP2Bus_Data_reg[0]_0\(19),
      R => \IP2Bus_Data_reg[1]_0\
    );
\IP2Bus_Data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^q\(2),
      Q => \IP2Bus_Data_reg[0]_0\(18),
      R => \IP2Bus_Data_reg[1]_0\
    );
\IP2Bus_Data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^q\(1),
      Q => \IP2Bus_Data_reg[0]_0\(17),
      R => \IP2Bus_Data_reg[1]_0\
    );
\TFT_base_addr_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(26),
      Q => \^q\(10),
      S => bus2ip_sreset
    );
\TFT_base_addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(16),
      Q => \^q\(0),
      R => bus2ip_sreset
    );
\TFT_base_addr_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(25),
      Q => \^q\(9),
      S => bus2ip_sreset
    );
\TFT_base_addr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(24),
      Q => \^q\(8),
      S => bus2ip_sreset
    );
\TFT_base_addr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(23),
      Q => \^q\(7),
      S => bus2ip_sreset
    );
\TFT_base_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(22),
      Q => \^q\(6),
      R => bus2ip_sreset
    );
\TFT_base_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(21),
      Q => \^q\(5),
      R => bus2ip_sreset
    );
\TFT_base_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(20),
      Q => \^q\(4),
      R => bus2ip_sreset
    );
\TFT_base_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(19),
      Q => \^q\(3),
      R => bus2ip_sreset
    );
\TFT_base_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(18),
      Q => \^q\(2),
      R => bus2ip_sreset
    );
\TFT_base_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(17),
      Q => \^q\(1),
      R => bus2ip_sreset
    );
TFT_dps_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => TFT_dps_reg_reg_0,
      Q => tft_dps,
      R => bus2ip_sreset
    );
\TFT_iic_reg_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(0),
      D => s_axi_wdata(15),
      Q => TFT_iic_reg_addr(0),
      R => bus2ip_sreset
    );
\TFT_iic_reg_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(0),
      D => s_axi_wdata(14),
      Q => TFT_iic_reg_addr(1),
      R => bus2ip_sreset
    );
\TFT_iic_reg_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(0),
      D => s_axi_wdata(13),
      Q => TFT_iic_reg_addr(2),
      R => bus2ip_sreset
    );
\TFT_iic_reg_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(0),
      D => s_axi_wdata(12),
      Q => TFT_iic_reg_addr(3),
      R => bus2ip_sreset
    );
\TFT_iic_reg_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(0),
      D => s_axi_wdata(11),
      Q => TFT_iic_reg_addr(4),
      R => bus2ip_sreset
    );
\TFT_iic_reg_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(0),
      D => s_axi_wdata(10),
      Q => TFT_iic_reg_addr(5),
      R => bus2ip_sreset
    );
\TFT_iic_reg_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(0),
      D => s_axi_wdata(9),
      Q => TFT_iic_reg_addr(6),
      R => bus2ip_sreset
    );
\TFT_iic_reg_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(0),
      D => s_axi_wdata(8),
      Q => TFT_iic_reg_addr(7),
      R => bus2ip_sreset
    );
\TFT_iic_reg_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(0),
      D => s_axi_wdata(7),
      Q => TFT_iic_reg_data(0),
      R => bus2ip_sreset
    );
\TFT_iic_reg_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(0),
      D => s_axi_wdata(6),
      Q => TFT_iic_reg_data(1),
      R => bus2ip_sreset
    );
\TFT_iic_reg_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(0),
      D => s_axi_wdata(5),
      Q => TFT_iic_reg_data(2),
      R => bus2ip_sreset
    );
\TFT_iic_reg_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(0),
      D => s_axi_wdata(4),
      Q => TFT_iic_reg_data(3),
      R => bus2ip_sreset
    );
\TFT_iic_reg_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(0),
      D => s_axi_wdata(3),
      Q => \TFT_iic_reg_data_reg[4]_0\(2),
      R => bus2ip_sreset
    );
\TFT_iic_reg_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(0),
      D => s_axi_wdata(2),
      Q => TFT_iic_reg_data(5),
      R => bus2ip_sreset
    );
\TFT_iic_reg_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(0),
      D => s_axi_wdata(1),
      Q => \TFT_iic_reg_data_reg[4]_0\(1),
      R => bus2ip_sreset
    );
\TFT_iic_reg_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(0),
      D => s_axi_wdata(0),
      Q => \TFT_iic_reg_data_reg[4]_0\(0),
      R => bus2ip_sreset
    );
TFT_iic_xfer_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(0),
      D => s_axi_wdata(26),
      Q => TFT_iic_xfer,
      R => bus2ip_sreset
    );
TFT_intr_en_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => TFT_intr_en_reg_0,
      Q => prmry_in,
      R => bus2ip_sreset
    );
TFT_on_reg_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => TFT_on_reg_reg_1,
      Q => TFT_on_reg_reg_0,
      S => bus2ip_sreset
    );
TFT_status_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAFCCAC"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => tft_status_d2,
      I2 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I3 => Bus_RNW_reg,
      I4 => \^tft_status_reg\,
      O => s_axi_wdata_0_sn_1
    );
TFT_status_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => TFT_status_reg_reg_0,
      Q => \^tft_status_reg\,
      R => '0'
    );
bus2ip_rdce_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => bus2ip_rdce_or,
      Q => \^bus2ip_rdce_d1_reg_0\,
      R => bus2ip_sreset
    );
bus2ip_rdce_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^bus2ip_rdce_d1_reg_0\,
      Q => \^bus2ip_rdce_d2_reg_0\,
      R => bus2ip_sreset
    );
bus2ip_wrce_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => bus2ip_wrce_or,
      Q => bus2ip_wrce_d1,
      R => bus2ip_sreset
    );
bus2ip_wrce_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => bus2ip_wrce_d1,
      Q => bus2ip_wrce_d2,
      R => bus2ip_sreset
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bus2ip_rdce_d1_reg_0\,
      I1 => \^bus2ip_rdce_d2_reg_0\,
      O => s_axi_arready
    );
s_axi_bvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20FF2020"
    )
        port map (
      I0 => bus2ip_wrce_d1,
      I1 => bus2ip_wrce_d2,
      I2 => s_axi_rvalid_i_reg(1),
      I3 => s_axi_bready,
      I4 => s_axi_bvalid,
      O => bus2ip_wrce_d1_reg_0
    );
s_axi_rvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20FF2020"
    )
        port map (
      I0 => \^bus2ip_rdce_d1_reg_0\,
      I1 => \^bus2ip_rdce_d2_reg_0\,
      I2 => s_axi_rvalid_i_reg(2),
      I3 => s_axi_rready,
      I4 => s_axi_rvalid,
      O => bus2ip_rdce_d1_reg_1
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bus2ip_wrce_d1,
      I1 => bus2ip_wrce_d2,
      O => s_axi_awready
    );
tft_status_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => tft_status_i,
      Q => tft_status_d1,
      R => bus2ip_sreset
    );
tft_status_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => tft_status_d1,
      Q => tft_status_d2,
      R => bus2ip_sreset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft_v2_0_22_tft_interface is
  port (
    tft_vga_clk : out STD_LOGIC;
    tft_vga_r : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tft_vga_g : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tft_vga_b : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tft_hsync : out STD_LOGIC;
    tft_vsync : out STD_LOGIC;
    tft_de : out STD_LOGIC;
    sys_tft_clk : in STD_LOGIC;
    tft_rst : in STD_LOGIC;
    \gen_vga_if.FDR_R5_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    C0 : in STD_LOGIC;
    \gen_vga_if.FDR_G5_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \gen_vga_if.FDR_B5_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    HSYNC_i : in STD_LOGIC;
    VSYNC_i : in STD_LOGIC;
    DE_i : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft_v2_0_22_tft_interface;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft_v2_0_22_tft_interface is
  signal \NLW_gen_vga_if.gen_7s.TFT_CLK_ODDR_S_UNCONNECTED\ : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of FDR_DE : label is "FDR";
  attribute box_type : string;
  attribute box_type of FDR_DE : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of FDS_HSYNC : label is "FDS";
  attribute box_type of FDS_HSYNC : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of FDS_VSYNC : label is "FDS";
  attribute box_type of FDS_VSYNC : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_B0\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_B0\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_B1\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_B1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_B2\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_B2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_B3\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_B3\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_B4\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_B4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_B5\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_B5\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_G0\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_G0\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_G1\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_G1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_G2\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_G2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_G3\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_G3\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_G4\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_G4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_G5\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_G5\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_R0\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_R0\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_R1\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_R1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_R2\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_R2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_R3\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_R3\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_R4\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_R4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_R5\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_R5\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \gen_vga_if.gen_7s.TFT_CLK_ODDR\ : label is "MLO";
  attribute \__SRVAL\ : string;
  attribute \__SRVAL\ of \gen_vga_if.gen_7s.TFT_CLK_ODDR\ : label is "FALSE";
  attribute box_type of \gen_vga_if.gen_7s.TFT_CLK_ODDR\ : label is "PRIMITIVE";
begin
FDR_DE: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => DE_i,
      Q => tft_de,
      R => tft_rst
    );
FDS_HSYNC: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => C0,
      CE => '1',
      D => HSYNC_i,
      Q => tft_hsync,
      S => tft_rst
    );
FDS_VSYNC: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => C0,
      CE => '1',
      D => VSYNC_i,
      Q => tft_vsync,
      S => tft_rst
    );
\gen_vga_if.FDR_B0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \gen_vga_if.FDR_B5_0\(0),
      Q => tft_vga_b(0),
      R => tft_rst
    );
\gen_vga_if.FDR_B1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \gen_vga_if.FDR_B5_0\(1),
      Q => tft_vga_b(1),
      R => tft_rst
    );
\gen_vga_if.FDR_B2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \gen_vga_if.FDR_B5_0\(2),
      Q => tft_vga_b(2),
      R => tft_rst
    );
\gen_vga_if.FDR_B3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \gen_vga_if.FDR_B5_0\(3),
      Q => tft_vga_b(3),
      R => tft_rst
    );
\gen_vga_if.FDR_B4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \gen_vga_if.FDR_B5_0\(4),
      Q => tft_vga_b(4),
      R => tft_rst
    );
\gen_vga_if.FDR_B5\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \gen_vga_if.FDR_B5_0\(5),
      Q => tft_vga_b(5),
      R => tft_rst
    );
\gen_vga_if.FDR_G0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \gen_vga_if.FDR_G5_0\(0),
      Q => tft_vga_g(0),
      R => tft_rst
    );
\gen_vga_if.FDR_G1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \gen_vga_if.FDR_G5_0\(1),
      Q => tft_vga_g(1),
      R => tft_rst
    );
\gen_vga_if.FDR_G2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \gen_vga_if.FDR_G5_0\(2),
      Q => tft_vga_g(2),
      R => tft_rst
    );
\gen_vga_if.FDR_G3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \gen_vga_if.FDR_G5_0\(3),
      Q => tft_vga_g(3),
      R => tft_rst
    );
\gen_vga_if.FDR_G4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \gen_vga_if.FDR_G5_0\(4),
      Q => tft_vga_g(4),
      R => tft_rst
    );
\gen_vga_if.FDR_G5\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \gen_vga_if.FDR_G5_0\(5),
      Q => tft_vga_g(5),
      R => tft_rst
    );
\gen_vga_if.FDR_R0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \gen_vga_if.FDR_R5_0\(0),
      Q => tft_vga_r(0),
      R => tft_rst
    );
\gen_vga_if.FDR_R1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \gen_vga_if.FDR_R5_0\(1),
      Q => tft_vga_r(1),
      R => tft_rst
    );
\gen_vga_if.FDR_R2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \gen_vga_if.FDR_R5_0\(2),
      Q => tft_vga_r(2),
      R => tft_rst
    );
\gen_vga_if.FDR_R3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \gen_vga_if.FDR_R5_0\(3),
      Q => tft_vga_r(3),
      R => tft_rst
    );
\gen_vga_if.FDR_R4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \gen_vga_if.FDR_R5_0\(4),
      Q => tft_vga_r(4),
      R => tft_rst
    );
\gen_vga_if.FDR_R5\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \gen_vga_if.FDR_R5_0\(5),
      Q => tft_vga_r(5),
      R => tft_rst
    );
\gen_vga_if.gen_7s.TFT_CLK_ODDR\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D1 => '0',
      D2 => '1',
      Q => tft_vga_clk,
      R => tft_rst,
      S => \NLW_gen_vga_if.gen_7s.TFT_CLK_ODDR_S_UNCONNECTED\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft_v2_0_22_v_sync is
  port (
    clk_stb_d1 : out STD_LOGIC;
    v_bp_cnt_tc : out STD_LOGIC;
    v_p_cnt_tc : out STD_LOGIC;
    get_line_start : out STD_LOGIC;
    \VSYNC_cs_reg[1]_0\ : out STD_LOGIC;
    DE_i : out STD_LOGIC;
    VSYNC_i : out STD_LOGIC;
    clk_stb_d1_reg_0 : in STD_LOGIC;
    sys_tft_clk : in STD_LOGIC;
    clk_ce_pos0 : in STD_LOGIC;
    clk_ce_neg0 : in STD_LOGIC;
    get_line_start_d1_reg : in STD_LOGIC;
    h_pix_cnt_tc : in STD_LOGIC;
    vsync_rst : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft_v2_0_22_v_sync;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft_v2_0_22_v_sync is
  signal VSYNC_cs : STD_LOGIC_VECTOR ( 0 to 4 );
  signal \^vsync_cs_reg[1]_0\ : STD_LOGIC;
  signal \VSYNC_ns__0\ : STD_LOGIC_VECTOR ( 0 to 4 );
  signal VSYNC_ns_n_0 : STD_LOGIC;
  signal V_bp_cnt_tc_n_0 : STD_LOGIC;
  signal V_l_cnt_tc : STD_LOGIC;
  signal V_p_cnt_tc_i_1_n_0 : STD_LOGIC;
  signal clk_ce_neg : STD_LOGIC;
  signal clk_ce_pos : STD_LOGIC;
  signal v_bp_cnt : STD_LOGIC_VECTOR ( 0 to 4 );
  signal v_bp_cnt0 : STD_LOGIC;
  signal \v_bp_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \v_bp_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \v_bp_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \v_bp_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \v_bp_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \^v_bp_cnt_tc\ : STD_LOGIC;
  signal v_fp_cnt : STD_LOGIC_VECTOR ( 0 to 3 );
  signal v_fp_cnt0 : STD_LOGIC;
  signal \v_fp_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \v_fp_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \v_fp_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \v_fp_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \v_fp_cnt_tc__0\ : STD_LOGIC;
  signal v_fp_cnt_tc_n_0 : STD_LOGIC;
  signal v_l_cnt : STD_LOGIC_VECTOR ( 0 to 8 );
  signal v_l_cnt0 : STD_LOGIC;
  signal \v_l_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal v_l_cnt_0 : STD_LOGIC_VECTOR ( 0 to 8 );
  signal \^v_l_cnt_tc\ : STD_LOGIC;
  signal v_p_cnt : STD_LOGIC_VECTOR ( 0 to 1 );
  signal v_p_cnt0 : STD_LOGIC;
  signal \v_p_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \v_p_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \^v_p_cnt_tc\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of FDS_VSYNC_i_1 : label is "soft_lutpair102";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \VSYNC_cs_reg[0]\ : label is "SET_COUNTERS:00001,BACK_PORCH:00100,LINE:01000,PULSE:00010,FRONT_PORCH:10000";
  attribute FSM_ENCODED_STATES of \VSYNC_cs_reg[1]\ : label is "SET_COUNTERS:00001,BACK_PORCH:00100,LINE:01000,PULSE:00010,FRONT_PORCH:10000";
  attribute FSM_ENCODED_STATES of \VSYNC_cs_reg[2]\ : label is "SET_COUNTERS:00001,BACK_PORCH:00100,LINE:01000,PULSE:00010,FRONT_PORCH:10000";
  attribute FSM_ENCODED_STATES of \VSYNC_cs_reg[3]\ : label is "SET_COUNTERS:00001,BACK_PORCH:00100,LINE:01000,PULSE:00010,FRONT_PORCH:10000";
  attribute FSM_ENCODED_STATES of \VSYNC_cs_reg[4]\ : label is "SET_COUNTERS:00001,BACK_PORCH:00100,LINE:01000,PULSE:00010,FRONT_PORCH:10000";
  attribute SOFT_HLUTNM of VSYNC_ns : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of v_bp_cnt_tc_RnM : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of V_l_cnt_tc_i_1 : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of V_p_cnt_tc_i_1 : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \v_bp_cnt[0]_i_2\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \v_bp_cnt[1]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \v_bp_cnt[2]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \v_bp_cnt[3]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \v_bp_cnt[4]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \v_fp_cnt[0]_i_2\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \v_fp_cnt[1]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \v_fp_cnt[2]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of v_fp_cnt_tc : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \v_l_cnt[0]_i_2\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \v_l_cnt[0]_i_3\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \v_l_cnt[1]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \v_l_cnt[2]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \v_l_cnt[4]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \v_l_cnt[5]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \v_l_cnt[6]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \v_l_cnt[7]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \v_l_cnt[8]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \v_p_cnt[0]_i_1\ : label is "soft_lutpair103";
begin
  \VSYNC_cs_reg[1]_0\ <= \^vsync_cs_reg[1]_0\;
  v_bp_cnt_tc <= \^v_bp_cnt_tc\;
  v_p_cnt_tc <= \^v_p_cnt_tc\;
\BRAM_TFT_addr[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => VSYNC_cs(1),
      I1 => VSYNC_cs(3),
      I2 => VSYNC_cs(2),
      I3 => VSYNC_cs(4),
      I4 => VSYNC_cs(0),
      O => \^vsync_cs_reg[1]_0\
    );
FDR_DE_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => VSYNC_cs(0),
      I1 => VSYNC_cs(4),
      I2 => VSYNC_cs(2),
      I3 => VSYNC_cs(3),
      I4 => VSYNC_cs(1),
      I5 => get_line_start_d1_reg,
      O => DE_i
    );
FDS_VSYNC_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => VSYNC_cs(3),
      I1 => VSYNC_cs(1),
      I2 => VSYNC_cs(2),
      I3 => VSYNC_cs(4),
      I4 => VSYNC_cs(0),
      O => VSYNC_i
    );
\VSYNC_cs[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080F080"
    )
        port map (
      I0 => \^v_l_cnt_tc\,
      I1 => VSYNC_cs(1),
      I2 => VSYNC_ns_n_0,
      I3 => VSYNC_cs(0),
      I4 => \v_fp_cnt_tc__0\,
      O => \VSYNC_ns__0\(0)
    );
\VSYNC_cs[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0202020"
    )
        port map (
      I0 => VSYNC_cs(1),
      I1 => \^v_l_cnt_tc\,
      I2 => VSYNC_ns_n_0,
      I3 => VSYNC_cs(2),
      I4 => \^v_bp_cnt_tc\,
      O => \VSYNC_ns__0\(1)
    );
\VSYNC_cs[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0202020"
    )
        port map (
      I0 => VSYNC_cs(2),
      I1 => \^v_bp_cnt_tc\,
      I2 => VSYNC_ns_n_0,
      I3 => VSYNC_cs(3),
      I4 => \^v_p_cnt_tc\,
      O => \VSYNC_ns__0\(2)
    );
\VSYNC_cs[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF44400000000"
    )
        port map (
      I0 => \^v_p_cnt_tc\,
      I1 => VSYNC_cs(3),
      I2 => \v_fp_cnt_tc__0\,
      I3 => VSYNC_cs(0),
      I4 => VSYNC_cs(4),
      I5 => VSYNC_ns_n_0,
      O => \VSYNC_ns__0\(3)
    );
\VSYNC_cs[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => VSYNC_ns_n_0,
      O => \VSYNC_ns__0\(4)
    );
\VSYNC_cs_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_pos,
      D => \VSYNC_ns__0\(0),
      Q => VSYNC_cs(0),
      R => vsync_rst
    );
\VSYNC_cs_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_pos,
      D => \VSYNC_ns__0\(1),
      Q => VSYNC_cs(1),
      R => vsync_rst
    );
\VSYNC_cs_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_pos,
      D => \VSYNC_ns__0\(2),
      Q => VSYNC_cs(2),
      R => vsync_rst
    );
\VSYNC_cs_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_pos,
      D => \VSYNC_ns__0\(3),
      Q => VSYNC_cs(3),
      R => vsync_rst
    );
\VSYNC_cs_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_pos,
      D => \VSYNC_ns__0\(4),
      Q => VSYNC_cs(4),
      S => vsync_rst
    );
VSYNC_ns: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010116"
    )
        port map (
      I0 => VSYNC_cs(4),
      I1 => VSYNC_cs(3),
      I2 => VSYNC_cs(2),
      I3 => VSYNC_cs(1),
      I4 => VSYNC_cs(0),
      O => VSYNC_ns_n_0
    );
v_bp_cnt_tc_RnM: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => v_bp_cnt(4),
      I1 => v_bp_cnt(1),
      I2 => v_bp_cnt(0),
      I3 => v_bp_cnt(3),
      I4 => v_bp_cnt(2),
      O => V_bp_cnt_tc_n_0
    );
V_bp_cnt_tc_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => V_bp_cnt_tc_n_0,
      Q => \^v_bp_cnt_tc\,
      R => v_bp_cnt0
    );
V_l_cnt_tc_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \v_l_cnt[0]_i_3_n_0\,
      I1 => v_l_cnt(3),
      I2 => v_l_cnt(0),
      I3 => v_l_cnt(2),
      I4 => v_l_cnt(1),
      O => V_l_cnt_tc
    );
V_l_cnt_tc_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => V_l_cnt_tc,
      Q => \^v_l_cnt_tc\,
      R => v_l_cnt0
    );
V_p_cnt_tc_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002E22"
    )
        port map (
      I0 => \^v_p_cnt_tc\,
      I1 => clk_ce_neg,
      I2 => v_p_cnt(0),
      I3 => v_p_cnt(1),
      I4 => v_p_cnt0,
      O => V_p_cnt_tc_i_1_n_0
    );
V_p_cnt_tc_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => V_p_cnt_tc_i_1_n_0,
      Q => \^v_p_cnt_tc\,
      R => '0'
    );
clk_ce_neg_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => clk_ce_neg0,
      Q => clk_ce_neg,
      R => '0'
    );
clk_ce_pos_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => clk_ce_pos0,
      Q => clk_ce_pos,
      R => '0'
    );
clk_stb_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => clk_stb_d1_reg_0,
      Q => clk_stb_d1,
      R => '0'
    );
get_line_start_d1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF010000"
    )
        port map (
      I0 => get_line_start_d1_reg,
      I1 => \^v_l_cnt_tc\,
      I2 => \^vsync_cs_reg[1]_0\,
      I3 => \^v_bp_cnt_tc\,
      I4 => h_pix_cnt_tc,
      O => get_line_start
    );
\v_bp_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => VSYNC_cs(4),
      I1 => VSYNC_cs(0),
      I2 => VSYNC_cs(3),
      I3 => VSYNC_cs(1),
      I4 => VSYNC_cs(2),
      I5 => vsync_rst,
      O => v_bp_cnt0
    );
\v_bp_cnt[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78F0F0F0"
    )
        port map (
      I0 => v_bp_cnt(2),
      I1 => v_bp_cnt(1),
      I2 => v_bp_cnt(0),
      I3 => v_bp_cnt(3),
      I4 => v_bp_cnt(4),
      O => \v_bp_cnt[0]_i_2_n_0\
    );
\v_bp_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6CCC"
    )
        port map (
      I0 => v_bp_cnt(2),
      I1 => v_bp_cnt(1),
      I2 => v_bp_cnt(3),
      I3 => v_bp_cnt(4),
      O => \v_bp_cnt[1]_i_1_n_0\
    );
\v_bp_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => v_bp_cnt(2),
      I1 => v_bp_cnt(3),
      I2 => v_bp_cnt(4),
      O => \v_bp_cnt[2]_i_1_n_0\
    );
\v_bp_cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v_bp_cnt(3),
      I1 => v_bp_cnt(4),
      O => \v_bp_cnt[3]_i_1_n_0\
    );
\v_bp_cnt[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_bp_cnt(4),
      O => \v_bp_cnt[4]_i_1_n_0\
    );
\v_bp_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => \v_bp_cnt[0]_i_2_n_0\,
      Q => v_bp_cnt(0),
      R => v_bp_cnt0
    );
\v_bp_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => \v_bp_cnt[1]_i_1_n_0\,
      Q => v_bp_cnt(1),
      R => v_bp_cnt0
    );
\v_bp_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => \v_bp_cnt[2]_i_1_n_0\,
      Q => v_bp_cnt(2),
      R => v_bp_cnt0
    );
\v_bp_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => \v_bp_cnt[3]_i_1_n_0\,
      Q => v_bp_cnt(3),
      R => v_bp_cnt0
    );
\v_bp_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => \v_bp_cnt[4]_i_1_n_0\,
      Q => v_bp_cnt(4),
      R => v_bp_cnt0
    );
\v_fp_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00010112"
    )
        port map (
      I0 => VSYNC_cs(4),
      I1 => VSYNC_cs(0),
      I2 => VSYNC_cs(2),
      I3 => VSYNC_cs(1),
      I4 => VSYNC_cs(3),
      I5 => vsync_rst,
      O => v_fp_cnt0
    );
\v_fp_cnt[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => v_fp_cnt(2),
      I1 => v_fp_cnt(3),
      I2 => v_fp_cnt(1),
      I3 => v_fp_cnt(0),
      O => \v_fp_cnt[0]_i_2_n_0\
    );
\v_fp_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => v_fp_cnt(2),
      I1 => v_fp_cnt(3),
      I2 => v_fp_cnt(1),
      O => \v_fp_cnt[1]_i_1_n_0\
    );
\v_fp_cnt[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v_fp_cnt(2),
      I1 => v_fp_cnt(3),
      O => \v_fp_cnt[2]_i_1_n_0\
    );
\v_fp_cnt[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_fp_cnt(3),
      O => \v_fp_cnt[3]_i_1_n_0\
    );
\v_fp_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => \v_fp_cnt[0]_i_2_n_0\,
      Q => v_fp_cnt(0),
      R => v_fp_cnt0
    );
\v_fp_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => \v_fp_cnt[1]_i_1_n_0\,
      Q => v_fp_cnt(1),
      R => v_fp_cnt0
    );
\v_fp_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => \v_fp_cnt[2]_i_1_n_0\,
      Q => v_fp_cnt(2),
      R => v_fp_cnt0
    );
\v_fp_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => \v_fp_cnt[3]_i_1_n_0\,
      Q => v_fp_cnt(3),
      R => v_fp_cnt0
    );
v_fp_cnt_tc: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => v_fp_cnt(1),
      I1 => v_fp_cnt(0),
      I2 => v_fp_cnt(2),
      I3 => v_fp_cnt(3),
      O => v_fp_cnt_tc_n_0
    );
v_fp_cnt_tc_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => v_fp_cnt_tc_n_0,
      Q => \v_fp_cnt_tc__0\,
      R => v_fp_cnt0
    );
\v_l_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => VSYNC_cs(0),
      I1 => VSYNC_cs(4),
      I2 => VSYNC_cs(2),
      I3 => VSYNC_cs(3),
      I4 => VSYNC_cs(1),
      I5 => vsync_rst,
      O => v_l_cnt0
    );
\v_l_cnt[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => v_l_cnt(0),
      I1 => v_l_cnt(2),
      I2 => \v_l_cnt[0]_i_3_n_0\,
      I3 => v_l_cnt(3),
      I4 => v_l_cnt(1),
      O => v_l_cnt_0(0)
    );
\v_l_cnt[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => v_l_cnt(4),
      I1 => v_l_cnt(6),
      I2 => v_l_cnt(5),
      I3 => v_l_cnt(8),
      I4 => v_l_cnt(7),
      O => \v_l_cnt[0]_i_3_n_0\
    );
\v_l_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => v_l_cnt(1),
      I1 => v_l_cnt(3),
      I2 => \v_l_cnt[0]_i_3_n_0\,
      I3 => v_l_cnt(2),
      O => v_l_cnt_0(1)
    );
\v_l_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => v_l_cnt(2),
      I1 => \v_l_cnt[0]_i_3_n_0\,
      I2 => v_l_cnt(3),
      O => v_l_cnt_0(2)
    );
\v_l_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => v_l_cnt(3),
      I1 => v_l_cnt(7),
      I2 => v_l_cnt(8),
      I3 => v_l_cnt(5),
      I4 => v_l_cnt(6),
      I5 => v_l_cnt(4),
      O => v_l_cnt_0(3)
    );
\v_l_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => v_l_cnt(4),
      I1 => v_l_cnt(6),
      I2 => v_l_cnt(5),
      I3 => v_l_cnt(8),
      I4 => v_l_cnt(7),
      O => v_l_cnt_0(4)
    );
\v_l_cnt[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => v_l_cnt(5),
      I1 => v_l_cnt(8),
      I2 => v_l_cnt(7),
      I3 => v_l_cnt(6),
      O => v_l_cnt_0(5)
    );
\v_l_cnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => v_l_cnt(8),
      I1 => v_l_cnt(7),
      I2 => v_l_cnt(6),
      O => v_l_cnt_0(6)
    );
\v_l_cnt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v_l_cnt(8),
      I1 => v_l_cnt(7),
      O => v_l_cnt_0(7)
    );
\v_l_cnt[8]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_l_cnt(8),
      O => v_l_cnt_0(8)
    );
\v_l_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => v_l_cnt_0(0),
      Q => v_l_cnt(0),
      R => v_l_cnt0
    );
\v_l_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => v_l_cnt_0(1),
      Q => v_l_cnt(1),
      R => v_l_cnt0
    );
\v_l_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => v_l_cnt_0(2),
      Q => v_l_cnt(2),
      R => v_l_cnt0
    );
\v_l_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => v_l_cnt_0(3),
      Q => v_l_cnt(3),
      R => v_l_cnt0
    );
\v_l_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => v_l_cnt_0(4),
      Q => v_l_cnt(4),
      R => v_l_cnt0
    );
\v_l_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => v_l_cnt_0(5),
      Q => v_l_cnt(5),
      R => v_l_cnt0
    );
\v_l_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => v_l_cnt_0(6),
      Q => v_l_cnt(6),
      R => v_l_cnt0
    );
\v_l_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => v_l_cnt_0(7),
      Q => v_l_cnt(7),
      R => v_l_cnt0
    );
\v_l_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => v_l_cnt_0(8),
      Q => v_l_cnt(8),
      R => v_l_cnt0
    );
\v_p_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => v_p_cnt(0),
      I1 => clk_ce_neg,
      I2 => v_p_cnt(1),
      I3 => v_p_cnt0,
      O => \v_p_cnt[0]_i_1_n_0\
    );
\v_p_cnt[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => VSYNC_cs(0),
      I1 => VSYNC_cs(4),
      I2 => VSYNC_cs(2),
      I3 => VSYNC_cs(1),
      I4 => VSYNC_cs(3),
      I5 => vsync_rst,
      O => v_p_cnt0
    );
\v_p_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => v_p_cnt(1),
      I1 => clk_ce_neg,
      I2 => v_p_cnt0,
      O => \v_p_cnt[1]_i_1_n_0\
    );
\v_p_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \v_p_cnt[0]_i_1_n_0\,
      Q => v_p_cnt(0),
      R => '0'
    );
\v_p_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \v_p_cnt[1]_i_1_n_0\,
      Q => v_p_cnt(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync is
  port (
    scndry_out : out STD_LOGIC;
    prmry_in : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync is
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "PRIMITIVE";
begin
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => prmry_in,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_d3,
      Q => scndry_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync_0 is
  port (
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\ : out STD_LOGIC;
    scndry_out : out STD_LOGIC;
    sig_cmdack_reg_reg : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_axi_por2rst_out : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    bus2ip_mst_cmdack : in STD_LOGIC;
    bus2ip_mreset : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ip2bus_mstrd_req : in STD_LOGIC;
    IP2Bus_MstRd_Req_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0\ : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync_0 : entity is "cdc_sync";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync_0 is
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal \^scndry_out\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of FDR_IP2INTC_Irpt_i_1 : label is "soft_lutpair101";
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of sig_cmd_reset_reg_i_1 : label is "soft_lutpair101";
begin
  scndry_out <= \^scndry_out\;
FDR_IP2INTC_Irpt_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => bus2ip_mreset,
      I1 => \^scndry_out\,
      O => SR(0)
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0\,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_d3,
      Q => \^scndry_out\,
      R => '0'
    );
IP2Bus_MstRd_Req_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004040400"
    )
        port map (
      I0 => bus2ip_mst_cmdack,
      I1 => \^scndry_out\,
      I2 => bus2ip_mreset,
      I3 => E(0),
      I4 => ip2bus_mstrd_req,
      I5 => IP2Bus_MstRd_Req_reg(0),
      O => sig_cmdack_reg_reg
    );
sig_cmd_reset_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \^scndry_out\,
      I1 => sig_axi_por2rst_out,
      I2 => m_axi_aresetn,
      O => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized0\ is
  port (
    IP2Bus_MstRd_dst_rdy_reg : out STD_LOGIC;
    mn_request_set : out STD_LOGIC;
    IP2Bus_Mst_Type_reg : out STD_LOGIC;
    tft_rst : in STD_LOGIC;
    sys_tft_clk : in STD_LOGIC;
    bus2ip_mreset : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    IP2Bus_MstRd_dst_rdy : in STD_LOGIC;
    scndry_out : in STD_LOGIC;
    IP2Bus_Mst_Type : in STD_LOGIC;
    bus2ip_mst_cmdack : in STD_LOGIC;
    bus2ip_mst_cmplt : in STD_LOGIC;
    \line_cnt_i_reg[8]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    get_line_start_d1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized0\ : entity is "cdc_sync";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized0\ is
  signal get_line : STD_LOGIC;
  signal \^mn_request_set\ : STD_LOGIC;
  signal p_in_d1_cdc_from : STD_LOGIC;
  signal prmry_in_xored : STD_LOGIC;
  signal s_out_d1_cdc_to : STD_LOGIC;
  signal s_out_d2 : STD_LOGIC;
  signal s_out_d3 : STD_LOGIC;
  signal s_out_d4 : STD_LOGIC;
  signal s_out_d5 : STD_LOGIC;
  signal \s_out_re__0\ : STD_LOGIC;
  signal srst_d1 : STD_LOGIC;
  signal srst_d2 : STD_LOGIC;
  signal srst_d3 : STD_LOGIC;
  signal srst_d4 : STD_LOGIC;
  signal srst_d5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5\ : label is "PRIMITIVE";
begin
  mn_request_set <= \^mn_request_set\;
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_out_d1_cdc_to,
      Q => s_out_d2,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_out_d2,
      Q => s_out_d3,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_out_d3,
      Q => s_out_d4,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_out_d4,
      Q => s_out_d5,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \s_out_re__0\,
      Q => get_line,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => p_in_d1_cdc_from,
      Q => s_out_d1_cdc_to,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => prmry_in_xored,
      Q => p_in_d1_cdc_from,
      R => tft_rst
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_in_d1_cdc_from,
      I1 => get_line_start_d1,
      O => prmry_in_xored
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => '1',
      Q => srst_d1,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => srst_d1,
      Q => srst_d2,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => srst_d2,
      Q => srst_d3,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => srst_d3,
      Q => srst_d4,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => srst_d4,
      Q => srst_d5,
      R => bus2ip_mreset
    );
IP2Bus_MstRd_dst_rdy_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00540000"
    )
        port map (
      I0 => E(0),
      I1 => \^mn_request_set\,
      I2 => IP2Bus_MstRd_dst_rdy,
      I3 => bus2ip_mreset,
      I4 => scndry_out,
      O => IP2Bus_MstRd_dst_rdy_reg
    );
IP2Bus_Mst_Type_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000E00"
    )
        port map (
      I0 => IP2Bus_Mst_Type,
      I1 => \^mn_request_set\,
      I2 => bus2ip_mreset,
      I3 => scndry_out,
      I4 => bus2ip_mst_cmdack,
      O => IP2Bus_Mst_Type_reg
    );
s_out_re: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => s_out_d4,
      I1 => s_out_d5,
      I2 => srst_d5,
      O => \s_out_re__0\
    );
\trans_cnt_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => bus2ip_mst_cmplt,
      I1 => \line_cnt_i_reg[8]\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      I5 => get_line,
      O => \^mn_request_set\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized0_2\ is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    tft_rst : in STD_LOGIC;
    sys_tft_clk : in STD_LOGIC;
    bus2ip_mreset : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    v_bp_cnt_tc : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized0_2\ : entity is "cdc_sync";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized0_2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized0_2\ is
  signal p_in_d1_cdc_from : STD_LOGIC;
  signal prmry_in_xored : STD_LOGIC;
  signal s_out_d1_cdc_to : STD_LOGIC;
  signal s_out_d2 : STD_LOGIC;
  signal s_out_d3 : STD_LOGIC;
  signal s_out_d4 : STD_LOGIC;
  signal s_out_d5 : STD_LOGIC;
  signal \s_out_re__0\ : STD_LOGIC;
  signal srst_d1 : STD_LOGIC;
  signal srst_d2 : STD_LOGIC;
  signal srst_d3 : STD_LOGIC;
  signal srst_d4 : STD_LOGIC;
  signal srst_d5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5\ : label is "PRIMITIVE";
begin
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_out_d1_cdc_to,
      Q => s_out_d2,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_out_d2,
      Q => s_out_d3,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_out_d3,
      Q => s_out_d4,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_out_d4,
      Q => s_out_d5,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \s_out_re__0\,
      Q => E(0),
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => p_in_d1_cdc_from,
      Q => s_out_d1_cdc_to,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => prmry_in_xored,
      Q => p_in_d1_cdc_from,
      R => tft_rst
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_in_d1_cdc_from,
      I1 => v_bp_cnt_tc,
      O => prmry_in_xored
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => '1',
      Q => srst_d1,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => srst_d1,
      Q => srst_d2,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => srst_d2,
      Q => srst_d3,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => srst_d3,
      Q => srst_d4,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => srst_d4,
      Q => srst_d5,
      R => bus2ip_mreset
    );
s_out_re: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => s_out_d4,
      I1 => s_out_d5,
      I2 => srst_d5,
      O => \s_out_re__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized0_3\ is
  port (
    p_in_d1_cdc_from : out STD_LOGIC;
    tft_status_i : out STD_LOGIC;
    bus2ip_mreset : in STD_LOGIC;
    prmry_in_xored : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    bus2ip_sreset : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized0_3\ : entity is "cdc_sync";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized0_3\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized0_3\ is
  signal \^p_in_d1_cdc_from\ : STD_LOGIC;
  signal s_out_d1_cdc_to : STD_LOGIC;
  signal s_out_d2 : STD_LOGIC;
  signal s_out_d3 : STD_LOGIC;
  signal s_out_d4 : STD_LOGIC;
  signal s_out_d5 : STD_LOGIC;
  signal \s_out_re__0\ : STD_LOGIC;
  signal srst_d1 : STD_LOGIC;
  signal srst_d2 : STD_LOGIC;
  signal srst_d3 : STD_LOGIC;
  signal srst_d4 : STD_LOGIC;
  signal srst_d5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5\ : label is "PRIMITIVE";
begin
  p_in_d1_cdc_from <= \^p_in_d1_cdc_from\;
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_out_d1_cdc_to,
      Q => s_out_d2,
      R => bus2ip_sreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_out_d2,
      Q => s_out_d3,
      R => bus2ip_sreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_out_d3,
      Q => s_out_d4,
      R => bus2ip_sreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_out_d4,
      Q => s_out_d5,
      R => bus2ip_sreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_out_re__0\,
      Q => tft_status_i,
      R => bus2ip_sreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^p_in_d1_cdc_from\,
      Q => s_out_d1_cdc_to,
      R => bus2ip_sreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => prmry_in_xored,
      Q => \^p_in_d1_cdc_from\,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => '1',
      Q => srst_d1,
      R => bus2ip_sreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => srst_d1,
      Q => srst_d2,
      R => bus2ip_sreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => srst_d2,
      Q => srst_d3,
      R => bus2ip_sreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => srst_d3,
      Q => srst_d4,
      R => bus2ip_sreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => srst_d4,
      Q => srst_d5,
      R => bus2ip_sreset
    );
s_out_re: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => s_out_d4,
      I1 => s_out_d5,
      I2 => srst_d5,
      O => \s_out_re__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized0_4\ is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    prmry_in_xored : out STD_LOGIC;
    ip2intc_irpt_i : out STD_LOGIC;
    tft_rst : in STD_LOGIC;
    sys_tft_clk : in STD_LOGIC;
    bus2ip_mreset : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    trans_cnt_tc : in STD_LOGIC;
    sig_llink2cmd_rd_busy : in STD_LOGIC;
    sig_rd_discontinue : in STD_LOGIC;
    sig_rd2llink_strm_tlast : in STD_LOGIC;
    eof_n : in STD_LOGIC;
    p_in_d1_cdc_from : in STD_LOGIC;
    scndry_out : in STD_LOGIC;
    FDR_IP2INTC_Irpt : in STD_LOGIC;
    v_p_cnt_tc : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized0_4\ : entity is "cdc_sync";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized0_4\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized0_4\ is
  signal \^generate_pulse_p_s_cdc_open_ended.p_in_cross2scndry_scndry_out_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_in_d1_cdc_from_0 : STD_LOGIC;
  signal prmry_in_xored_1 : STD_LOGIC;
  signal s_out_d1_cdc_to : STD_LOGIC;
  signal s_out_d2 : STD_LOGIC;
  signal s_out_d3 : STD_LOGIC;
  signal s_out_d4 : STD_LOGIC;
  signal s_out_d5 : STD_LOGIC;
  signal \s_out_re__0\ : STD_LOGIC;
  signal srst_d1 : STD_LOGIC;
  signal srst_d2 : STD_LOGIC;
  signal srst_d3 : STD_LOGIC;
  signal srst_d4 : STD_LOGIC;
  signal srst_d5 : STD_LOGIC;
  signal vsync_intr : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from_i_1\ : label is "soft_lutpair114";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \line_cnt[0]_i_1\ : label is "soft_lutpair114";
begin
  \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out_0\(0) <= \^generate_pulse_p_s_cdc_open_ended.p_in_cross2scndry_scndry_out_0\(0);
FDR_IP2INTC_Irpt_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => vsync_intr,
      I1 => FDR_IP2INTC_Irpt,
      O => ip2intc_irpt_i
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_out_d1_cdc_to,
      Q => s_out_d2,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_out_d2,
      Q => s_out_d3,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_out_d3,
      Q => s_out_d4,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_out_d4,
      Q => s_out_d5,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \s_out_re__0\,
      Q => vsync_intr,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => p_in_d1_cdc_from_0,
      Q => s_out_d1_cdc_to,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => prmry_in_xored_1,
      Q => p_in_d1_cdc_from_0,
      R => tft_rst
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => vsync_intr,
      I1 => p_in_d1_cdc_from,
      O => prmry_in_xored
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_in_d1_cdc_from_0,
      I1 => v_p_cnt_tc,
      O => prmry_in_xored_1
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => '1',
      Q => srst_d1,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => srst_d1,
      Q => srst_d2,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => srst_d2,
      Q => srst_d3,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => srst_d3,
      Q => srst_d4,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => srst_d4,
      Q => srst_d5,
      R => bus2ip_mreset
    );
\line_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => vsync_intr,
      I1 => scndry_out,
      I2 => bus2ip_mreset,
      O => \^generate_pulse_p_s_cdc_open_ended.p_in_cross2scndry_scndry_out_0\(0)
    );
s_out_re: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => s_out_d4,
      I1 => s_out_d5,
      I2 => srst_d5,
      O => \s_out_re__0\
    );
\trans_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAEEE"
    )
        port map (
      I0 => \^generate_pulse_p_s_cdc_open_ended.p_in_cross2scndry_scndry_out_0\(0),
      I1 => trans_cnt_tc,
      I2 => sig_llink2cmd_rd_busy,
      I3 => sig_rd_discontinue,
      I4 => sig_rd2llink_strm_tlast,
      I5 => eof_n,
      O => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized1\ is
  port (
    scndry_vect_out : out STD_LOGIC_VECTOR ( 10 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 10 downto 0 );
    m_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized1\ : entity is "cdc_sync";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized1\ is
  signal s_level_out_bus_d1_cdc_to_0 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_1 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_10 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_2 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_3 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_4 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_5 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_6 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_7 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_8 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_9 : STD_LOGIC;
  signal s_level_out_bus_d2_0 : STD_LOGIC;
  signal s_level_out_bus_d2_1 : STD_LOGIC;
  signal s_level_out_bus_d2_10 : STD_LOGIC;
  signal s_level_out_bus_d2_2 : STD_LOGIC;
  signal s_level_out_bus_d2_3 : STD_LOGIC;
  signal s_level_out_bus_d2_4 : STD_LOGIC;
  signal s_level_out_bus_d2_5 : STD_LOGIC;
  signal s_level_out_bus_d2_6 : STD_LOGIC;
  signal s_level_out_bus_d2_7 : STD_LOGIC;
  signal s_level_out_bus_d2_8 : STD_LOGIC;
  signal s_level_out_bus_d2_9 : STD_LOGIC;
  signal s_level_out_bus_d3_0 : STD_LOGIC;
  signal s_level_out_bus_d3_1 : STD_LOGIC;
  signal s_level_out_bus_d3_10 : STD_LOGIC;
  signal s_level_out_bus_d3_2 : STD_LOGIC;
  signal s_level_out_bus_d3_3 : STD_LOGIC;
  signal s_level_out_bus_d3_4 : STD_LOGIC;
  signal s_level_out_bus_d3_5 : STD_LOGIC;
  signal s_level_out_bus_d3_6 : STD_LOGIC;
  signal s_level_out_bus_d3_7 : STD_LOGIC;
  signal s_level_out_bus_d3_8 : STD_LOGIC;
  signal s_level_out_bus_d3_9 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[4].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[4].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[4].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[5].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[5].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[5].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[6].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[6].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[6].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[8].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[8].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[8].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[9].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[9].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[9].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
begin
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_0,
      Q => s_level_out_bus_d2_0,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_10,
      Q => s_level_out_bus_d2_10,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_1,
      Q => s_level_out_bus_d2_1,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_2,
      Q => s_level_out_bus_d2_2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_3,
      Q => s_level_out_bus_d2_3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_4,
      Q => s_level_out_bus_d2_4,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_5,
      Q => s_level_out_bus_d2_5,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_6,
      Q => s_level_out_bus_d2_6,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_7,
      Q => s_level_out_bus_d2_7,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_8,
      Q => s_level_out_bus_d2_8,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_9,
      Q => s_level_out_bus_d2_9,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_0,
      Q => s_level_out_bus_d3_0,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_10,
      Q => s_level_out_bus_d3_10,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_1,
      Q => s_level_out_bus_d3_1,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_2,
      Q => s_level_out_bus_d3_2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_3,
      Q => s_level_out_bus_d3_3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_4,
      Q => s_level_out_bus_d3_4,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_5,
      Q => s_level_out_bus_d3_5,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_6,
      Q => s_level_out_bus_d3_6,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_7,
      Q => s_level_out_bus_d3_7,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_8,
      Q => s_level_out_bus_d3_8,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_9,
      Q => s_level_out_bus_d3_9,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_0,
      Q => scndry_vect_out(0),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_10,
      Q => scndry_vect_out(10),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_1,
      Q => scndry_vect_out(1),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_2,
      Q => scndry_vect_out(2),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_3,
      Q => scndry_vect_out(3),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_4,
      Q => scndry_vect_out(4),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_5,
      Q => scndry_vect_out(5),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_6,
      Q => scndry_vect_out(6),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_7,
      Q => scndry_vect_out(7),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_8,
      Q => scndry_vect_out(8),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_9,
      Q => scndry_vect_out(9),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => Q(0),
      Q => s_level_out_bus_d1_cdc_to_0,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => Q(10),
      Q => s_level_out_bus_d1_cdc_to_10,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => Q(1),
      Q => s_level_out_bus_d1_cdc_to_1,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => Q(2),
      Q => s_level_out_bus_d1_cdc_to_2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => Q(3),
      Q => s_level_out_bus_d1_cdc_to_3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[4].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => Q(4),
      Q => s_level_out_bus_d1_cdc_to_4,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[5].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => Q(5),
      Q => s_level_out_bus_d1_cdc_to_5,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[6].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => Q(6),
      Q => s_level_out_bus_d1_cdc_to_6,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => Q(7),
      Q => s_level_out_bus_d1_cdc_to_7,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[8].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => Q(8),
      Q => s_level_out_bus_d1_cdc_to_8,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[9].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => Q(9),
      Q => s_level_out_bus_d1_cdc_to_9,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized2\ is
  port (
    tft_rst : out STD_LOGIC;
    scndry_out : out STD_LOGIC;
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from\ : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    sys_tft_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized2\ : entity is "cdc_sync";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized2\ is
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal \^scndry_out\ : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
begin
  scndry_out <= \^scndry_out\;
FDS_HSYNC_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^scndry_out\,
      I1 => \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from\,
      I2 => \out\,
      O => tft_rst
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => '1',
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => \^scndry_out\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized2_1\ is
  port (
    scndry_out : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0\ : in STD_LOGIC;
    sys_tft_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized2_1\ : entity is "cdc_sync";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized2_1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized2_1\ is
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
begin
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0\,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => scndry_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cntr_incr_decr_addn_f is
  port (
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    sig_inhibit_rdy_n : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[0]_0\ : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cntr_incr_decr_addn_f;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cntr_incr_decr_addn_f is
  signal \INFERRED_GEN.cnt_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.cnt_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal addr_i_p1 : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Cnt_p10 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \INFERRED_GEN.cnt_i[1]_i_1\ : label is "soft_lutpair28";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
Cnt_p10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => \^q\(0),
      I1 => sig_inhibit_rdy_n,
      I2 => \INFERRED_GEN.cnt_i_reg[0]_0\,
      I3 => m_axi_bvalid,
      O => addr_i_p1(0)
    );
\INFERRED_GEN.cnt_i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => \^q\(0),
      I1 => m_axi_bvalid,
      I2 => \INFERRED_GEN.cnt_i_reg[0]_0\,
      I3 => sig_inhibit_rdy_n,
      I4 => \^q\(1),
      O => \INFERRED_GEN.cnt_i[1]_i_1_n_0\
    );
\INFERRED_GEN.cnt_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => sig_inhibit_rdy_n,
      I2 => \INFERRED_GEN.cnt_i_reg[0]_0\,
      I3 => m_axi_bvalid,
      I4 => \^q\(0),
      I5 => \^q\(2),
      O => \INFERRED_GEN.cnt_i[2]_i_1_n_0\
    );
\INFERRED_GEN.cnt_i_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => addr_i_p1(0),
      Q => \^q\(0),
      S => \out\
    );
\INFERRED_GEN.cnt_i_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \INFERRED_GEN.cnt_i[1]_i_1_n_0\,
      Q => \^q\(1),
      S => \out\
    );
\INFERRED_GEN.cnt_i_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \INFERRED_GEN.cnt_i[2]_i_1_n_0\,
      Q => \^q\(2),
      S => \out\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f is
  port (
    ce_expnd_i_3 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f is
begin
CS: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\,
      I1 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\,
      O => ce_expnd_i_3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized1\ is
  port (
    ce_expnd_i_1 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized1\ : entity is "pselect_f";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized1\ is
begin
CS: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\,
      I1 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0\,
      O => ce_expnd_i_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray : entity is 1;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray : entity is 9;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray : entity is "GRAY";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray is
  signal async_path : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][8]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \src_gray_ff[6]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \src_gray_ff[7]_i_1\ : label is "soft_lutpair55";
begin
  dest_out_bin(8) <= \dest_graysync_ff[1]\(8);
  dest_out_bin(7 downto 0) <= \^dest_out_bin\(7 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(8),
      Q => \dest_graysync_ff[0]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(8),
      Q => \dest_graysync_ff[1]\(8),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \dest_graysync_ff[1]\(2),
      I2 => \^dest_out_bin\(3),
      I3 => \dest_graysync_ff[1]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \^dest_out_bin\(3),
      I2 => \dest_graysync_ff[1]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \^dest_out_bin\(3),
      O => \^dest_out_bin\(2)
    );
\dest_out_bin[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(5),
      I2 => \dest_graysync_ff[1]\(7),
      I3 => \dest_graysync_ff[1]\(8),
      I4 => \dest_graysync_ff[1]\(6),
      I5 => \dest_graysync_ff[1]\(4),
      O => \^dest_out_bin\(3)
    );
\dest_out_bin[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(6),
      I2 => \dest_graysync_ff[1]\(8),
      I3 => \dest_graysync_ff[1]\(7),
      I4 => \dest_graysync_ff[1]\(5),
      O => \^dest_out_bin\(4)
    );
\dest_out_bin[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(5),
      I1 => \dest_graysync_ff[1]\(7),
      I2 => \dest_graysync_ff[1]\(8),
      I3 => \dest_graysync_ff[1]\(6),
      O => \^dest_out_bin\(5)
    );
\dest_out_bin[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(6),
      I1 => \dest_graysync_ff[1]\(8),
      I2 => \dest_graysync_ff[1]\(7),
      O => \^dest_out_bin\(6)
    );
\dest_out_bin[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(7),
      I1 => \dest_graysync_ff[1]\(8),
      O => \^dest_out_bin\(7)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(4),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(5),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(7),
      I1 => src_in_bin(6),
      O => gray_enc(6)
    );
\src_gray_ff[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(8),
      I1 => src_in_bin(7),
      O => gray_enc(7)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(7),
      Q => async_path(7),
      R => '0'
    );
\src_gray_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(8),
      Q => async_path(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ : entity is 9;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ : entity is "GRAY";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ is
  signal async_path : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][8]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \src_gray_ff[6]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \src_gray_ff[7]_i_1\ : label is "soft_lutpair47";
begin
  dest_out_bin(8) <= \dest_graysync_ff[1]\(8);
  dest_out_bin(7 downto 0) <= \^dest_out_bin\(7 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(8),
      Q => \dest_graysync_ff[0]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(8),
      Q => \dest_graysync_ff[1]\(8),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \dest_graysync_ff[1]\(2),
      I2 => \^dest_out_bin\(3),
      I3 => \dest_graysync_ff[1]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \^dest_out_bin\(3),
      I2 => \dest_graysync_ff[1]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \^dest_out_bin\(3),
      O => \^dest_out_bin\(2)
    );
\dest_out_bin[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(5),
      I2 => \dest_graysync_ff[1]\(7),
      I3 => \dest_graysync_ff[1]\(8),
      I4 => \dest_graysync_ff[1]\(6),
      I5 => \dest_graysync_ff[1]\(4),
      O => \^dest_out_bin\(3)
    );
\dest_out_bin[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(6),
      I2 => \dest_graysync_ff[1]\(8),
      I3 => \dest_graysync_ff[1]\(7),
      I4 => \dest_graysync_ff[1]\(5),
      O => \^dest_out_bin\(4)
    );
\dest_out_bin[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(5),
      I1 => \dest_graysync_ff[1]\(7),
      I2 => \dest_graysync_ff[1]\(8),
      I3 => \dest_graysync_ff[1]\(6),
      O => \^dest_out_bin\(5)
    );
\dest_out_bin[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(6),
      I1 => \dest_graysync_ff[1]\(8),
      I2 => \dest_graysync_ff[1]\(7),
      O => \^dest_out_bin\(6)
    );
\dest_out_bin[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(7),
      I1 => \dest_graysync_ff[1]\(8),
      O => \^dest_out_bin\(7)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(4),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(5),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(7),
      I1 => src_in_bin(6),
      O => gray_enc(6)
    );
\src_gray_ff[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(8),
      I1 => src_in_bin(7),
      O => gray_enc(7)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(7),
      Q => async_path(7),
      R => '0'
    );
\src_gray_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(8),
      Q => async_path(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ : entity is 10;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ : entity is "GRAY";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ is
  signal async_path : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \dest_graysync_ff[2]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[2]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[2]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[2]\ : signal is "GRAY";
  signal \dest_graysync_ff[3]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[3]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[3]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[3]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][9]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][9]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][9]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][9]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][9]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][9]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][9]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][9]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][9]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][9]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][9]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][9]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \src_gray_ff[6]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \src_gray_ff[7]_i_1\ : label is "soft_lutpair51";
begin
  dest_out_bin(9) <= \dest_graysync_ff[3]\(9);
  dest_out_bin(8 downto 0) <= \^dest_out_bin\(8 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(8),
      Q => \dest_graysync_ff[0]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(9),
      Q => \dest_graysync_ff[0]\(9),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(8),
      Q => \dest_graysync_ff[1]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(9),
      Q => \dest_graysync_ff[1]\(9),
      R => '0'
    );
\dest_graysync_ff_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(0),
      Q => \dest_graysync_ff[2]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(1),
      Q => \dest_graysync_ff[2]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(2),
      Q => \dest_graysync_ff[2]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(3),
      Q => \dest_graysync_ff[2]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(4),
      Q => \dest_graysync_ff[2]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(5),
      Q => \dest_graysync_ff[2]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(6),
      Q => \dest_graysync_ff[2]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(7),
      Q => \dest_graysync_ff[2]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[2][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(8),
      Q => \dest_graysync_ff[2]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[2][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(9),
      Q => \dest_graysync_ff[2]\(9),
      R => '0'
    );
\dest_graysync_ff_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(0),
      Q => \dest_graysync_ff[3]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(1),
      Q => \dest_graysync_ff[3]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(2),
      Q => \dest_graysync_ff[3]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(3),
      Q => \dest_graysync_ff[3]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(4),
      Q => \dest_graysync_ff[3]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(5),
      Q => \dest_graysync_ff[3]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(6),
      Q => \dest_graysync_ff[3]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[3][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(7),
      Q => \dest_graysync_ff[3]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[3][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(8),
      Q => \dest_graysync_ff[3]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[3][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(9),
      Q => \dest_graysync_ff[3]\(9),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(0),
      I1 => \dest_graysync_ff[3]\(2),
      I2 => \^dest_out_bin\(4),
      I3 => \dest_graysync_ff[3]\(3),
      I4 => \dest_graysync_ff[3]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(1),
      I1 => \dest_graysync_ff[3]\(3),
      I2 => \^dest_out_bin\(4),
      I3 => \dest_graysync_ff[3]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(2),
      I1 => \^dest_out_bin\(4),
      I2 => \dest_graysync_ff[3]\(3),
      O => \^dest_out_bin\(2)
    );
\dest_out_bin[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(3),
      I1 => \^dest_out_bin\(4),
      O => \^dest_out_bin\(3)
    );
\dest_out_bin[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(4),
      I1 => \dest_graysync_ff[3]\(6),
      I2 => \dest_graysync_ff[3]\(8),
      I3 => \dest_graysync_ff[3]\(9),
      I4 => \dest_graysync_ff[3]\(7),
      I5 => \dest_graysync_ff[3]\(5),
      O => \^dest_out_bin\(4)
    );
\dest_out_bin[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(5),
      I1 => \dest_graysync_ff[3]\(7),
      I2 => \dest_graysync_ff[3]\(9),
      I3 => \dest_graysync_ff[3]\(8),
      I4 => \dest_graysync_ff[3]\(6),
      O => \^dest_out_bin\(5)
    );
\dest_out_bin[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(6),
      I1 => \dest_graysync_ff[3]\(8),
      I2 => \dest_graysync_ff[3]\(9),
      I3 => \dest_graysync_ff[3]\(7),
      O => \^dest_out_bin\(6)
    );
\dest_out_bin[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(7),
      I1 => \dest_graysync_ff[3]\(9),
      I2 => \dest_graysync_ff[3]\(8),
      O => \^dest_out_bin\(7)
    );
\dest_out_bin[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(8),
      I1 => \dest_graysync_ff[3]\(9),
      O => \^dest_out_bin\(8)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(4),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(5),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(7),
      I1 => src_in_bin(6),
      O => gray_enc(6)
    );
\src_gray_ff[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(8),
      I1 => src_in_bin(7),
      O => gray_enc(7)
    );
\src_gray_ff[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(9),
      I1 => src_in_bin(8),
      O => gray_enc(8)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(7),
      Q => async_path(7),
      R => '0'
    );
\src_gray_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(8),
      Q => async_path(8),
      R => '0'
    );
\src_gray_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(9),
      Q => async_path(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ : entity is 10;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ : entity is "GRAY";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ is
  signal async_path : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][9]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][9]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][9]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][9]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][9]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][9]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \src_gray_ff[7]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \src_gray_ff[8]_i_1\ : label is "soft_lutpair56";
begin
  dest_out_bin(9) <= \dest_graysync_ff[1]\(9);
  dest_out_bin(8 downto 0) <= \^dest_out_bin\(8 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(8),
      Q => \dest_graysync_ff[0]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(9),
      Q => \dest_graysync_ff[0]\(9),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(8),
      Q => \dest_graysync_ff[1]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(9),
      Q => \dest_graysync_ff[1]\(9),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \dest_graysync_ff[1]\(2),
      I2 => \^dest_out_bin\(4),
      I3 => \dest_graysync_ff[1]\(3),
      I4 => \dest_graysync_ff[1]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \^dest_out_bin\(4),
      I3 => \dest_graysync_ff[1]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \^dest_out_bin\(4),
      I2 => \dest_graysync_ff[1]\(3),
      O => \^dest_out_bin\(2)
    );
\dest_out_bin[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \^dest_out_bin\(4),
      O => \^dest_out_bin\(3)
    );
\dest_out_bin[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(6),
      I2 => \dest_graysync_ff[1]\(8),
      I3 => \dest_graysync_ff[1]\(9),
      I4 => \dest_graysync_ff[1]\(7),
      I5 => \dest_graysync_ff[1]\(5),
      O => \^dest_out_bin\(4)
    );
\dest_out_bin[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(5),
      I1 => \dest_graysync_ff[1]\(7),
      I2 => \dest_graysync_ff[1]\(9),
      I3 => \dest_graysync_ff[1]\(8),
      I4 => \dest_graysync_ff[1]\(6),
      O => \^dest_out_bin\(5)
    );
\dest_out_bin[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(6),
      I1 => \dest_graysync_ff[1]\(8),
      I2 => \dest_graysync_ff[1]\(9),
      I3 => \dest_graysync_ff[1]\(7),
      O => \^dest_out_bin\(6)
    );
\dest_out_bin[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(7),
      I1 => \dest_graysync_ff[1]\(9),
      I2 => \dest_graysync_ff[1]\(8),
      O => \^dest_out_bin\(7)
    );
\dest_out_bin[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(8),
      I1 => \dest_graysync_ff[1]\(9),
      O => \^dest_out_bin\(8)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(4),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(5),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(7),
      I1 => src_in_bin(6),
      O => gray_enc(6)
    );
\src_gray_ff[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(8),
      I1 => src_in_bin(7),
      O => gray_enc(7)
    );
\src_gray_ff[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(9),
      I1 => src_in_bin(8),
      O => gray_enc(8)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(7),
      Q => async_path(7),
      R => '0'
    );
\src_gray_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(8),
      Q => async_path(8),
      R => '0'
    );
\src_gray_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(9),
      Q => async_path(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is 2;
  attribute INIT : string;
  attribute INIT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is "SYNC_RST";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(1);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\ is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\ : entity is 2;
  attribute INIT : string;
  attribute INIT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\ : entity is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\ : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\ : entity is "SYNC_RST";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(1);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn is
  port (
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    wr_pntr_plus1_pf_carry : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[6]_0\ : in STD_LOGIC;
    wrst_busy : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    wr_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn is
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \count_value_i[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__2_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_2__1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1__2\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__2\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__2\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__2\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_1__2\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \count_value_i[8]_i_1__2\ : label is "soft_lutpair60";
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
\count_value_i[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1__2_n_0\
    );
\count_value_i[1]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1__2_n_0\
    );
\count_value_i[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__2_n_0\
    );
\count_value_i[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__2_n_0\
    );
\count_value_i[4]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__2_n_0\
    );
\count_value_i[5]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2__2_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1__2_n_0\
    );
\count_value_i[6]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2__2_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1__2_n_0\
    );
\count_value_i[6]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => wr_en,
      I2 => \count_value_i_reg[6]_0\,
      I3 => wrst_busy,
      I4 => rst_d1,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2__2_n_0\
    );
\count_value_i[7]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[8]_i_2__1_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \count_value_i[7]_i_1__2_n_0\
    );
\count_value_i[8]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i[8]_i_2__1_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(7),
      I4 => \^q\(8),
      O => \count_value_i[8]_i_1__2_n_0\
    );
\count_value_i[8]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => wr_pntr_plus1_pf_carry,
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[8]_i_2__1_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[0]_i_1__2_n_0\,
      Q => \^q\(0),
      S => wrst_busy
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[1]_i_1__2_n_0\,
      Q => \^q\(1),
      S => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[2]_i_1__2_n_0\,
      Q => \^q\(2),
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[3]_i_1__2_n_0\,
      Q => \^q\(3),
      R => wrst_busy
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[4]_i_1__2_n_0\,
      Q => \^q\(4),
      R => wrst_busy
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[5]_i_1__2_n_0\,
      Q => \^q\(5),
      R => wrst_busy
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[6]_i_1__2_n_0\,
      Q => \^q\(6),
      R => wrst_busy
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[7]_i_1__2_n_0\,
      Q => \^q\(7),
      R => wrst_busy
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[8]_i_1__2_n_0\,
      Q => \^q\(8),
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    wr_pntr_plus1_pf_carry : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[6]_0\ : in STD_LOGIC;
    wrst_busy : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \count_value_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \count_value_i[8]_i_1\ : label is "soft_lutpair76";
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
\count_value_i[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1_n_0\
    );
\count_value_i[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1_n_0\
    );
\count_value_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1_n_0\
    );
\count_value_i[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1_n_0\
    );
\count_value_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1_n_0\
    );
\count_value_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1_n_0\
    );
\count_value_i[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1_n_0\
    );
\count_value_i[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => wr_en,
      I2 => \count_value_i_reg[6]_0\,
      I3 => wrst_busy,
      I4 => rst_d1,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2_n_0\
    );
\count_value_i[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[8]_i_2_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \count_value_i[7]_i_1_n_0\
    );
\count_value_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i[8]_i_2_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(7),
      I4 => \^q\(8),
      O => \count_value_i[8]_i_1_n_0\
    );
\count_value_i[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => wr_pntr_plus1_pf_carry,
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[8]_i_2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[0]_i_1_n_0\,
      Q => \^q\(0),
      R => wrst_busy
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[1]_i_1_n_0\,
      Q => \^q\(1),
      S => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[2]_i_1_n_0\,
      Q => \^q\(2),
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[3]_i_1_n_0\,
      Q => \^q\(3),
      R => wrst_busy
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[4]_i_1_n_0\,
      Q => \^q\(4),
      R => wrst_busy
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[5]_i_1_n_0\,
      Q => \^q\(5),
      R => wrst_busy
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[6]_i_1_n_0\,
      Q => \^q\(6),
      R => wrst_busy
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[7]_i_1_n_0\,
      Q => \^q\(7),
      R => wrst_busy
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[8]_i_1_n_0\,
      Q => \^q\(8),
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1\ is
  port (
    S : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[1]_0\ : out STD_LOGIC;
    \count_value_i_reg[0]_0\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \grdc.rd_data_count_i_reg[3]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ram_empty_i : in STD_LOGIC;
    \count_value_i_reg[1]_1\ : in STD_LOGIC;
    \count_value_i_reg[1]_2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1\ is
  signal \^di\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \count_value_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_2_n_0\ : STD_LOGIC;
  signal \^count_value_i_reg[0]_0\ : STD_LOGIC;
  signal \^count_value_i_reg[1]_0\ : STD_LOGIC;
  attribute HLUTNM : string;
  attribute HLUTNM of \grdc.rd_data_count_i[3]_i_4\ : label is "lutpair0";
  attribute HLUTNM of \grdc.rd_data_count_i[3]_i_8\ : label is "lutpair0";
begin
  DI(0) <= \^di\(0);
  \count_value_i_reg[0]_0\ <= \^count_value_i_reg[0]_0\;
  \count_value_i_reg[1]_0\ <= \^count_value_i_reg[1]_0\;
\count_value_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0069006A00A50005"
    )
        port map (
      I0 => \^count_value_i_reg[0]_0\,
      I1 => rd_en,
      I2 => ram_empty_i,
      I3 => \count_value_i_reg[1]_1\,
      I4 => \count_value_i_reg[1]_2\(0),
      I5 => \count_value_i_reg[1]_2\(1),
      O => \count_value_i[0]_i_1_n_0\
    );
\count_value_i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A0A02"
    )
        port map (
      I0 => \count_value_i[1]_i_2_n_0\,
      I1 => ram_empty_i,
      I2 => \count_value_i_reg[1]_1\,
      I3 => \count_value_i_reg[1]_2\(0),
      I4 => \count_value_i_reg[1]_2\(1),
      O => \count_value_i[1]_i_1_n_0\
    );
\count_value_i[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFF755500008AA"
    )
        port map (
      I0 => \^count_value_i_reg[0]_0\,
      I1 => \count_value_i_reg[1]_2\(0),
      I2 => rd_en,
      I3 => \count_value_i_reg[1]_2\(1),
      I4 => ram_empty_i,
      I5 => \^count_value_i_reg[1]_0\,
      O => \count_value_i[1]_i_2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \count_value_i[0]_i_1_n_0\,
      Q => \^count_value_i_reg[0]_0\,
      R => '0'
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \count_value_i[1]_i_1_n_0\,
      Q => \^count_value_i_reg[1]_0\,
      R => '0'
    );
\grdc.rd_data_count_i[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^count_value_i_reg[0]_0\,
      I1 => \grdc.rd_data_count_i_reg[3]\(0),
      O => \^di\(0)
    );
\grdc.rd_data_count_i[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^di\(0),
      I1 => Q(1),
      I2 => \grdc.rd_data_count_i_reg[3]\(1),
      I3 => \^count_value_i_reg[1]_0\,
      O => S(1)
    );
\grdc.rd_data_count_i[3]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^count_value_i_reg[0]_0\,
      I1 => \grdc.rd_data_count_i_reg[3]\(0),
      I2 => Q(0),
      O => S(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_i0 : out STD_LOGIC;
    p_1_in : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    src_in_bin : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \count_value_i_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[6]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_value_i_reg[7]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[9]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \grdc.rd_data_count_i_reg[9]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \grdc.rd_data_count_i_reg[3]\ : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_0\ : in STD_LOGIC;
    \count_value_i_reg[9]_1\ : in STD_LOGIC;
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2\ is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \count_value_i[0]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__3_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_2__0_n_0\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10_n_0\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_11_n_0\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_12_n_0\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_13_n_0\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1_n_3\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_0\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_1\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_2\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_3\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_0\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_1\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_2\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_3\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4_n_0\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_5_n_0\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6_n_0\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_7_n_0\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_8_n_0\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_9_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_3_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_4_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_6_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_7_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_8_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_9_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_3_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_4_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_5_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_6_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_7_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_8_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_9_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_4_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_6_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_reg_i_2_n_2\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_reg_i_2_n_3\ : STD_LOGIC;
  signal leaving_empty : STD_LOGIC;
  signal \^p_1_in\ : STD_LOGIC;
  signal \NLW_gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gen_pf_ic_rc.ram_empty_i_reg_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_gen_pf_ic_rc.ram_empty_i_reg_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1__4\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__4\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__4\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__4\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_1__4\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \count_value_i[8]_i_1__4\ : label is "soft_lutpair63";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  E(0) <= \^e\(0);
  Q(9 downto 0) <= \^q\(9 downto 0);
  p_1_in <= \^p_1_in\;
\count_value_i[0]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5565"
    )
        port map (
      I0 => \^q\(0),
      I1 => \count_value_i_reg[9]_0\(0),
      I2 => \count_value_i_reg[9]_0\(1),
      I3 => rd_en,
      O => \count_value_i[0]_i_1__4_n_0\
    );
\count_value_i[1]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66666A66"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => rd_en,
      I3 => \count_value_i_reg[9]_0\(1),
      I4 => \count_value_i_reg[9]_0\(0),
      O => \count_value_i[1]_i_1__4_n_0\
    );
\count_value_i[2]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^p_1_in\,
      I3 => \^q\(0),
      O => \count_value_i[2]_i_1__4_n_0\
    );
\count_value_i[3]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA6AAAAA"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^p_1_in\,
      I4 => \^q\(1),
      O => \count_value_i[3]_i_1__4_n_0\
    );
\count_value_i[4]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6AAAAAAAAAAAAA"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^p_1_in\,
      I4 => \^q\(0),
      I5 => \^q\(2),
      O => \count_value_i[4]_i_1__4_n_0\
    );
\count_value_i[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AABA"
    )
        port map (
      I0 => ram_empty_i,
      I1 => rd_en,
      I2 => \count_value_i_reg[9]_0\(1),
      I3 => \count_value_i_reg[9]_0\(0),
      O => \^p_1_in\
    );
\count_value_i[5]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA6AAAAA"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \count_value_i[6]_i_2__3_n_0\,
      I4 => \^q\(3),
      O => \count_value_i[5]_i_1__4_n_0\
    );
\count_value_i[6]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6AAAAAAAAAAAAA"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(5),
      I2 => \^q\(3),
      I3 => \count_value_i[6]_i_2__3_n_0\,
      I4 => \^q\(2),
      I5 => \^q\(4),
      O => \count_value_i[6]_i_1__4_n_0\
    );
\count_value_i[6]_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDFDDFFFFFFFF"
    )
        port map (
      I0 => \^q\(0),
      I1 => ram_empty_i,
      I2 => rd_en,
      I3 => \count_value_i_reg[9]_0\(1),
      I4 => \count_value_i_reg[9]_0\(0),
      I5 => \^q\(1),
      O => \count_value_i[6]_i_2__3_n_0\
    );
\count_value_i[7]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(6),
      I2 => \count_value_i[9]_i_2__0_n_0\,
      I3 => \^q\(5),
      O => \count_value_i[7]_i_1__4_n_0\
    );
\count_value_i[8]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6AAAAAA"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(5),
      I2 => \count_value_i[9]_i_2__0_n_0\,
      I3 => \^q\(6),
      I4 => \^q\(7),
      O => \count_value_i[8]_i_1__4_n_0\
    );
\count_value_i[9]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA6AAAAAAAAAAA"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(8),
      I2 => \^q\(7),
      I3 => \^q\(6),
      I4 => \count_value_i[9]_i_2__0_n_0\,
      I5 => \^q\(5),
      O => \count_value_i[9]_i_1__0_n_0\
    );
\count_value_i[9]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^p_1_in\,
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => \^q\(4),
      O => \count_value_i[9]_i_2__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i[0]_i_1__4_n_0\,
      Q => \^q\(0),
      R => \count_value_i_reg[9]_1\
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i[1]_i_1__4_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[9]_1\
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i[2]_i_1__4_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[9]_1\
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i[3]_i_1__4_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[9]_1\
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i[4]_i_1__4_n_0\,
      Q => \^q\(4),
      R => \count_value_i_reg[9]_1\
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i[5]_i_1__4_n_0\,
      Q => \^q\(5),
      R => \count_value_i_reg[9]_1\
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i[6]_i_1__4_n_0\,
      Q => \^q\(6),
      R => \count_value_i_reg[9]_1\
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i[7]_i_1__4_n_0\,
      Q => \^q\(7),
      R => \count_value_i_reg[9]_1\
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i[8]_i_1__4_n_0\,
      Q => \^q\(8),
      R => \count_value_i_reg[9]_1\
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i[9]_i_1__0_n_0\,
      Q => \^q\(9),
      R => \count_value_i_reg[9]_1\
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_0\,
      CO(3 downto 1) => \NLW_gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^q\(8),
      O(3 downto 2) => \NLW_gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => src_in_bin(9 downto 8),
      S(3 downto 2) => B"00",
      S(1) => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4_n_0\,
      S(0) => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_5_n_0\
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(3),
      O => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10_n_0\
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(2),
      O => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_11_n_0\
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \grdc.rd_data_count_i_reg[3]\,
      O => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_12_n_0\
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_0\,
      O => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_13_n_0\
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_0\,
      CO(3) => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_0\,
      CO(2) => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_1\,
      CO(1) => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_2\,
      CO(0) => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(7 downto 4),
      O(3 downto 0) => src_in_bin(7 downto 4),
      S(3) => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6_n_0\,
      S(2) => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_7_n_0\,
      S(1) => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_8_n_0\,
      S(0) => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_9_n_0\
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_0\,
      CO(2) => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_1\,
      CO(1) => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_2\,
      CO(0) => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => \^q\(3 downto 0),
      O(3 downto 0) => src_in_bin(3 downto 0),
      S(3) => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10_n_0\,
      S(2) => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_11_n_0\,
      S(1) => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_12_n_0\,
      S(0) => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_13_n_0\
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(9),
      O => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4_n_0\
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(8),
      O => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_5_n_0\
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(7),
      O => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6_n_0\
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(6),
      O => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_7_n_0\
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(5),
      O => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_8_n_0\
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(4),
      O => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_9_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(3),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(2),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_3_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_4_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(3),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_6_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(2),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_7_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(1),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_8_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0400FB"
    )
        port map (
      I0 => \count_value_i_reg[9]_0\(0),
      I1 => \count_value_i_reg[9]_0\(1),
      I2 => rd_en,
      I3 => ram_empty_i,
      I4 => \^q\(0),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_9_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(7),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_2_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(6),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_3_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(5),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_4_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(4),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_5_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(7),
      I1 => \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(7),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_6_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(6),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_7_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(5),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_8_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(4),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_9_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_0\,
      CO(2) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_1\,
      CO(1) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_2\,
      CO(0) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_3\,
      CYINIT => \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(0),
      DI(3) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0\,
      DI(2) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_3_n_0\,
      DI(1) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_4_n_0\,
      DI(0) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]\(0),
      O(3 downto 0) => D(3 downto 0),
      S(3) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_6_n_0\,
      S(2) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_7_n_0\,
      S(1) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_8_n_0\,
      S(0) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_9_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_0\,
      CO(3) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_0\,
      CO(2) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_1\,
      CO(1) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_2\,
      CO(0) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_2_n_0\,
      DI(2) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_3_n_0\,
      DI(1) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_4_n_0\,
      DI(0) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_5_n_0\,
      O(3 downto 0) => D(7 downto 4),
      S(3) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_6_n_0\,
      S(2) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_7_n_0\,
      S(1) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_8_n_0\,
      S(0) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_9_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_0\,
      CO(3 downto 0) => \NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => D(8),
      S(3 downto 1) => B"000",
      S(0) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]\(0)
    );
\gen_pf_ic_rc.ram_empty_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBABBAAAAAAAA"
    )
        port map (
      I0 => leaving_empty,
      I1 => ram_empty_i,
      I2 => rd_en,
      I3 => \count_value_i_reg[9]_0\(1),
      I4 => \count_value_i_reg[9]_0\(0),
      I5 => CO(0),
      O => ram_empty_i0
    );
\gen_pf_ic_rc.ram_empty_i_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(8),
      I1 => \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(8),
      I2 => \^q\(6),
      I3 => \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(6),
      I4 => \^q\(7),
      I5 => \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(7),
      O => \gen_pf_ic_rc.ram_empty_i_i_4_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(1),
      I2 => \^q\(2),
      I3 => \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(2),
      I4 => \^q\(0),
      I5 => \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(0),
      O => \gen_pf_ic_rc.ram_empty_i_i_6_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_reg_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_gen_pf_ic_rc.ram_empty_i_reg_i_2_CO_UNCONNECTED\(3),
      CO(2) => leaving_empty,
      CO(1) => \gen_pf_ic_rc.ram_empty_i_reg_i_2_n_2\,
      CO(0) => \gen_pf_ic_rc.ram_empty_i_reg_i_2_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gen_pf_ic_rc.ram_empty_i_reg_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \gen_pf_ic_rc.ram_empty_i_i_4_n_0\,
      S(1) => S(0),
      S(0) => \gen_pf_ic_rc.ram_empty_i_i_6_n_0\
    );
\gen_sdpram.xpm_memory_base_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FB"
    )
        port map (
      I0 => \count_value_i_reg[9]_0\(0),
      I1 => \count_value_i_reg[9]_0\(1),
      I2 => rd_en,
      I3 => ram_empty_i,
      O => \^e\(0)
    );
\grdc.rd_data_count_i[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \^q\(1),
      I1 => \grdc.rd_data_count_i_reg[9]\(0),
      I2 => \grdc.rd_data_count_i_reg[3]\,
      O => DI(0)
    );
\grdc.rd_data_count_i[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(2),
      I1 => \grdc.rd_data_count_i_reg[9]\(1),
      I2 => \^q\(3),
      I3 => \grdc.rd_data_count_i_reg[9]\(2),
      O => \count_value_i_reg[2]_0\(0)
    );
\grdc.rd_data_count_i[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(6),
      I1 => \grdc.rd_data_count_i_reg[9]\(5),
      I2 => \^q\(7),
      I3 => \grdc.rd_data_count_i_reg[9]\(6),
      O => \count_value_i_reg[6]_0\(3)
    );
\grdc.rd_data_count_i[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(5),
      I1 => \grdc.rd_data_count_i_reg[9]\(4),
      I2 => \^q\(6),
      I3 => \grdc.rd_data_count_i_reg[9]\(5),
      O => \count_value_i_reg[6]_0\(2)
    );
\grdc.rd_data_count_i[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(4),
      I1 => \grdc.rd_data_count_i_reg[9]\(3),
      I2 => \^q\(5),
      I3 => \grdc.rd_data_count_i_reg[9]\(4),
      O => \count_value_i_reg[6]_0\(1)
    );
\grdc.rd_data_count_i[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(3),
      I1 => \grdc.rd_data_count_i_reg[9]\(2),
      I2 => \^q\(4),
      I3 => \grdc.rd_data_count_i_reg[9]\(3),
      O => \count_value_i_reg[6]_0\(0)
    );
\grdc.rd_data_count_i[9]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(7),
      I1 => \grdc.rd_data_count_i_reg[9]\(6),
      I2 => \^q\(8),
      I3 => \grdc.rd_data_count_i_reg[9]\(7),
      O => \count_value_i_reg[7]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_7\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    wr_pntr_plus1_pf_carry : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[6]_0\ : in STD_LOGIC;
    wrst_busy : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    \gwdc.wr_data_count_i_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_7\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_7\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_7\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \count_value_i[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__1_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_2_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[3]_i_2_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[3]_i_3_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[3]_i_4_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[3]_i_5_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_2_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_3_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_4_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_5_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[9]_i_2_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[9]_i_3_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[9]_i_1_n_3\ : STD_LOGIC;
  signal \NLW_gwdc.wr_data_count_i_reg[3]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_gwdc.wr_data_count_i_reg[9]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gwdc.wr_data_count_i_reg[9]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_1__1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \count_value_i[8]_i_1__1\ : label is "soft_lutpair70";
begin
  Q(9 downto 0) <= \^q\(9 downto 0);
\count_value_i[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1__1_n_0\
    );
\count_value_i[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1__1_n_0\
    );
\count_value_i[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__1_n_0\
    );
\count_value_i[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__1_n_0\
    );
\count_value_i[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__1_n_0\
    );
\count_value_i[5]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2__1_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1__1_n_0\
    );
\count_value_i[6]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2__1_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1__1_n_0\
    );
\count_value_i[6]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => wr_en,
      I2 => \count_value_i_reg[6]_0\,
      I3 => wrst_busy,
      I4 => rst_d1,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2__1_n_0\
    );
\count_value_i[7]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[9]_i_2_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \count_value_i[7]_i_1__1_n_0\
    );
\count_value_i[8]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i[9]_i_2_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(7),
      I4 => \^q\(8),
      O => \count_value_i[8]_i_1__1_n_0\
    );
\count_value_i[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(5),
      I2 => \count_value_i[9]_i_2_n_0\,
      I3 => \^q\(6),
      I4 => \^q\(8),
      I5 => \^q\(9),
      O => \count_value_i[9]_i_1_n_0\
    );
\count_value_i[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => wr_pntr_plus1_pf_carry,
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[9]_i_2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[0]_i_1__1_n_0\,
      Q => \^q\(0),
      R => wrst_busy
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[1]_i_1__1_n_0\,
      Q => \^q\(1),
      R => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[2]_i_1__1_n_0\,
      Q => \^q\(2),
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[3]_i_1__1_n_0\,
      Q => \^q\(3),
      R => wrst_busy
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[4]_i_1__1_n_0\,
      Q => \^q\(4),
      R => wrst_busy
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[5]_i_1__1_n_0\,
      Q => \^q\(5),
      R => wrst_busy
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[6]_i_1__1_n_0\,
      Q => \^q\(6),
      R => wrst_busy
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[7]_i_1__1_n_0\,
      Q => \^q\(7),
      R => wrst_busy
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[8]_i_1__1_n_0\,
      Q => \^q\(8),
      R => wrst_busy
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[9]_i_1_n_0\,
      Q => \^q\(9),
      R => wrst_busy
    );
\gwdc.wr_data_count_i[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gwdc.wr_data_count_i_reg[9]\(3),
      O => \gwdc.wr_data_count_i[3]_i_2_n_0\
    );
\gwdc.wr_data_count_i[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gwdc.wr_data_count_i_reg[9]\(2),
      O => \gwdc.wr_data_count_i[3]_i_3_n_0\
    );
\gwdc.wr_data_count_i[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gwdc.wr_data_count_i_reg[9]\(1),
      O => \gwdc.wr_data_count_i[3]_i_4_n_0\
    );
\gwdc.wr_data_count_i[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gwdc.wr_data_count_i_reg[9]\(0),
      O => \gwdc.wr_data_count_i[3]_i_5_n_0\
    );
\gwdc.wr_data_count_i[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(7),
      I1 => \gwdc.wr_data_count_i_reg[9]\(7),
      O => \gwdc.wr_data_count_i[7]_i_2_n_0\
    );
\gwdc.wr_data_count_i[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gwdc.wr_data_count_i_reg[9]\(6),
      O => \gwdc.wr_data_count_i[7]_i_3_n_0\
    );
\gwdc.wr_data_count_i[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \gwdc.wr_data_count_i_reg[9]\(5),
      O => \gwdc.wr_data_count_i[7]_i_4_n_0\
    );
\gwdc.wr_data_count_i[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \gwdc.wr_data_count_i_reg[9]\(4),
      O => \gwdc.wr_data_count_i[7]_i_5_n_0\
    );
\gwdc.wr_data_count_i[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(9),
      I1 => \gwdc.wr_data_count_i_reg[9]\(9),
      O => \gwdc.wr_data_count_i[9]_i_2_n_0\
    );
\gwdc.wr_data_count_i[9]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(8),
      I1 => \gwdc.wr_data_count_i_reg[9]\(8),
      O => \gwdc.wr_data_count_i[9]_i_3_n_0\
    );
\gwdc.wr_data_count_i_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gwdc.wr_data_count_i_reg[3]_i_1_n_0\,
      CO(2) => \gwdc.wr_data_count_i_reg[3]_i_1_n_1\,
      CO(1) => \gwdc.wr_data_count_i_reg[3]_i_1_n_2\,
      CO(0) => \gwdc.wr_data_count_i_reg[3]_i_1_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => \^q\(3 downto 0),
      O(3 downto 1) => D(2 downto 0),
      O(0) => \NLW_gwdc.wr_data_count_i_reg[3]_i_1_O_UNCONNECTED\(0),
      S(3) => \gwdc.wr_data_count_i[3]_i_2_n_0\,
      S(2) => \gwdc.wr_data_count_i[3]_i_3_n_0\,
      S(1) => \gwdc.wr_data_count_i[3]_i_4_n_0\,
      S(0) => \gwdc.wr_data_count_i[3]_i_5_n_0\
    );
\gwdc.wr_data_count_i_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gwdc.wr_data_count_i_reg[3]_i_1_n_0\,
      CO(3) => \gwdc.wr_data_count_i_reg[7]_i_1_n_0\,
      CO(2) => \gwdc.wr_data_count_i_reg[7]_i_1_n_1\,
      CO(1) => \gwdc.wr_data_count_i_reg[7]_i_1_n_2\,
      CO(0) => \gwdc.wr_data_count_i_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(7 downto 4),
      O(3 downto 0) => D(6 downto 3),
      S(3) => \gwdc.wr_data_count_i[7]_i_2_n_0\,
      S(2) => \gwdc.wr_data_count_i[7]_i_3_n_0\,
      S(1) => \gwdc.wr_data_count_i[7]_i_4_n_0\,
      S(0) => \gwdc.wr_data_count_i[7]_i_5_n_0\
    );
\gwdc.wr_data_count_i_reg[9]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gwdc.wr_data_count_i_reg[7]_i_1_n_0\,
      CO(3 downto 1) => \NLW_gwdc.wr_data_count_i_reg[9]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \gwdc.wr_data_count_i_reg[9]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^q\(8),
      O(3 downto 2) => \NLW_gwdc.wr_data_count_i_reg[9]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => D(8 downto 7),
      S(3 downto 2) => B"00",
      S(1) => \gwdc.wr_data_count_i[9]_i_2_n_0\,
      S(0) => \gwdc.wr_data_count_i[9]_i_3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3\ is
  port (
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_1_in : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    rd_en : in STD_LOGIC;
    \count_value_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_value_i_reg[0]_0\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3\ is
  signal \count_value_i[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_2__2_n_0\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[6]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[7]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[8]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_7_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_8_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_9_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_reg_i_3_n_2\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_reg_i_3_n_3\ : STD_LOGIC;
  signal \NLW_gen_pf_ic_rc.ram_empty_i_reg_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_gen_pf_ic_rc.ram_empty_i_reg_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__3\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__3\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \count_value_i[5]_i_1__3\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \count_value_i[6]_i_1__3\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_1__3\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \count_value_i[8]_i_1__3\ : label is "soft_lutpair66";
begin
\count_value_i[0]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5565"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[0]\,
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => \count_value_i_reg[1]_0\(1),
      I3 => rd_en,
      O => \count_value_i[0]_i_1__3_n_0\
    );
\count_value_i[1]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66666A66"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[1]\,
      I1 => \count_value_i_reg_n_0_[0]\,
      I2 => rd_en,
      I3 => \count_value_i_reg[1]_0\(1),
      I4 => \count_value_i_reg[1]_0\(0),
      O => \count_value_i[1]_i_1__3_n_0\
    );
\count_value_i[2]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[2]\,
      I1 => \count_value_i_reg_n_0_[0]\,
      I2 => p_1_in,
      I3 => \count_value_i_reg_n_0_[1]\,
      O => \count_value_i[2]_i_1__3_n_0\
    );
\count_value_i[3]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6AAAAAA"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[3]\,
      I1 => \count_value_i_reg_n_0_[1]\,
      I2 => p_1_in,
      I3 => \count_value_i_reg_n_0_[0]\,
      I4 => \count_value_i_reg_n_0_[2]\,
      O => \count_value_i[3]_i_1__3_n_0\
    );
\count_value_i[4]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6AAAAAAAAAAAAA"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[4]\,
      I1 => \count_value_i_reg_n_0_[2]\,
      I2 => \count_value_i_reg_n_0_[0]\,
      I3 => p_1_in,
      I4 => \count_value_i_reg_n_0_[1]\,
      I5 => \count_value_i_reg_n_0_[3]\,
      O => \count_value_i[4]_i_1__3_n_0\
    );
\count_value_i[5]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[5]\,
      I1 => \count_value_i[8]_i_2__2_n_0\,
      O => \count_value_i[5]_i_1__3_n_0\
    );
\count_value_i[6]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[6]\,
      I1 => \count_value_i[8]_i_2__2_n_0\,
      I2 => \count_value_i_reg_n_0_[5]\,
      O => \count_value_i[6]_i_1__3_n_0\
    );
\count_value_i[7]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[7]\,
      I1 => \count_value_i_reg_n_0_[5]\,
      I2 => \count_value_i[8]_i_2__2_n_0\,
      I3 => \count_value_i_reg_n_0_[6]\,
      O => \count_value_i[7]_i_1__3_n_0\
    );
\count_value_i[8]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6AAAAAA"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[8]\,
      I1 => \count_value_i_reg_n_0_[6]\,
      I2 => \count_value_i[8]_i_2__2_n_0\,
      I3 => \count_value_i_reg_n_0_[5]\,
      I4 => \count_value_i_reg_n_0_[7]\,
      O => \count_value_i[8]_i_1__3_n_0\
    );
\count_value_i[8]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[3]\,
      I1 => \count_value_i_reg_n_0_[1]\,
      I2 => p_1_in,
      I3 => \count_value_i_reg_n_0_[0]\,
      I4 => \count_value_i_reg_n_0_[2]\,
      I5 => \count_value_i_reg_n_0_[4]\,
      O => \count_value_i[8]_i_2__2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1__3_n_0\,
      Q => \count_value_i_reg_n_0_[0]\,
      S => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1__3_n_0\,
      Q => \count_value_i_reg_n_0_[1]\,
      R => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1__3_n_0\,
      Q => \count_value_i_reg_n_0_[2]\,
      R => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1__3_n_0\,
      Q => \count_value_i_reg_n_0_[3]\,
      R => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[4]_i_1__3_n_0\,
      Q => \count_value_i_reg_n_0_[4]\,
      R => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[5]_i_1__3_n_0\,
      Q => \count_value_i_reg_n_0_[5]\,
      R => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[6]_i_1__3_n_0\,
      Q => \count_value_i_reg_n_0_[6]\,
      R => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[7]_i_1__3_n_0\,
      Q => \count_value_i_reg_n_0_[7]\,
      R => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[8]_i_1__3_n_0\,
      Q => \count_value_i_reg_n_0_[8]\,
      R => \count_value_i_reg[0]_0\
    );
\gen_pf_ic_rc.ram_empty_i_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[8]\,
      I1 => Q(8),
      I2 => Q(6),
      I3 => \count_value_i_reg_n_0_[6]\,
      I4 => Q(7),
      I5 => \count_value_i_reg_n_0_[7]\,
      O => \gen_pf_ic_rc.ram_empty_i_i_7_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[5]\,
      I1 => Q(5),
      I2 => Q(3),
      I3 => \count_value_i_reg_n_0_[3]\,
      I4 => Q(4),
      I5 => \count_value_i_reg_n_0_[4]\,
      O => \gen_pf_ic_rc.ram_empty_i_i_8_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[1]\,
      I1 => Q(1),
      I2 => Q(2),
      I3 => \count_value_i_reg_n_0_[2]\,
      I4 => Q(0),
      I5 => \count_value_i_reg_n_0_[0]\,
      O => \gen_pf_ic_rc.ram_empty_i_i_9_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_reg_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_gen_pf_ic_rc.ram_empty_i_reg_i_3_CO_UNCONNECTED\(3),
      CO(2) => CO(0),
      CO(1) => \gen_pf_ic_rc.ram_empty_i_reg_i_3_n_2\,
      CO(0) => \gen_pf_ic_rc.ram_empty_i_reg_i_3_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gen_pf_ic_rc.ram_empty_i_reg_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \gen_pf_ic_rc.ram_empty_i_i_7_n_0\,
      S(1) => \gen_pf_ic_rc.ram_empty_i_i_8_n_0\,
      S(0) => \gen_pf_ic_rc.ram_empty_i_i_9_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_8\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    wr_pntr_plus1_pf_carry : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[6]_0\ : in STD_LOGIC;
    wrst_busy : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_8\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_8\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_8\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \count_value_i[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_2__0_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_3_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_4_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_5_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_3_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_4_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_5_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[9]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__0\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__0\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__0\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__0\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_1__0\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \count_value_i[8]_i_1__0\ : label is "soft_lutpair73";
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
\count_value_i[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1__0_n_0\
    );
\count_value_i[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1__0_n_0\
    );
\count_value_i[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__0_n_0\
    );
\count_value_i[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__0_n_0\
    );
\count_value_i[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__0_n_0\
    );
\count_value_i[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2__0_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1__0_n_0\
    );
\count_value_i[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2__0_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1__0_n_0\
    );
\count_value_i[6]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => wr_en,
      I2 => \count_value_i_reg[6]_0\,
      I3 => wrst_busy,
      I4 => rst_d1,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2__0_n_0\
    );
\count_value_i[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[8]_i_2__0_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \count_value_i[7]_i_1__0_n_0\
    );
\count_value_i[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i[8]_i_2__0_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(7),
      I4 => \^q\(8),
      O => \count_value_i[8]_i_1__0_n_0\
    );
\count_value_i[8]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => wr_pntr_plus1_pf_carry,
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[8]_i_2__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[0]_i_1__0_n_0\,
      Q => \^q\(0),
      S => wrst_busy
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[1]_i_1__0_n_0\,
      Q => \^q\(1),
      R => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[2]_i_1__0_n_0\,
      Q => \^q\(2),
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[3]_i_1__0_n_0\,
      Q => \^q\(3),
      R => wrst_busy
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[4]_i_1__0_n_0\,
      Q => \^q\(4),
      R => wrst_busy
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[5]_i_1__0_n_0\,
      Q => \^q\(5),
      R => wrst_busy
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[6]_i_1__0_n_0\,
      Q => \^q\(6),
      R => wrst_busy
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[7]_i_1__0_n_0\,
      Q => \^q\(7),
      R => wrst_busy
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[8]_i_1__0_n_0\,
      Q => \^q\(8),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]\(3),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]\(2),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_3_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]\(1),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_4_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]\(0),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_5_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(7),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]\(7),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_2_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]\(6),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_3_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]\(5),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_4_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]\(4),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_5_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(8),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]\(8),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[9]_i_2_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_0\,
      CO(2) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_1\,
      CO(1) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_2\,
      CO(0) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_3\,
      CYINIT => wr_pntr_plus1_pf_carry,
      DI(3 downto 0) => \^q\(3 downto 0),
      O(3) => D(0),
      O(2 downto 0) => \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_O_UNCONNECTED\(2 downto 0),
      S(3) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0\,
      S(2) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_3_n_0\,
      S(1) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_4_n_0\,
      S(0) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_5_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_0\,
      CO(3) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_0\,
      CO(2) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_1\,
      CO(1) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_2\,
      CO(0) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(7 downto 4),
      O(3 downto 0) => D(4 downto 1),
      S(3) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_2_n_0\,
      S(2) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_3_n_0\,
      S(1) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_4_n_0\,
      S(0) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_5_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_0\,
      CO(3 downto 0) => \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => D(5),
      S(3 downto 1) => B"000",
      S(0) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[9]_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit is
  port (
    rst_d1 : out STD_LOGIC;
    d_out_reg_0 : out STD_LOGIC;
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\ : out STD_LOGIC;
    overflow_i0 : out STD_LOGIC;
    wrst_busy : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    \gen_pf_ic_rc.gpf_ic.prog_full_i_reg\ : in STD_LOGIC;
    rst : in STD_LOGIC;
    \gof.overflow_i_reg\ : in STD_LOGIC;
    prog_full : in STD_LOGIC;
    wr_en : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit is
  signal \^rst_d1\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_4\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \gof.overflow_i_i_1\ : label is "soft_lutpair69";
begin
  rst_d1 <= \^rst_d1\;
d_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => wrst_busy,
      Q => \^rst_d1\,
      R => '0'
    );
\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1131"
    )
        port map (
      I0 => \gof.overflow_i_reg\,
      I1 => rst,
      I2 => \^rst_d1\,
      I3 => wrst_busy,
      O => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\
    );
\gen_pf_ic_rc.gpf_ic.prog_full_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F3A200A2"
    )
        port map (
      I0 => \gen_pf_ic_rc.gpf_ic.prog_full_i_reg\,
      I1 => \^rst_d1\,
      I2 => rst,
      I3 => \gof.overflow_i_reg\,
      I4 => prog_full,
      O => d_out_reg_0
    );
\gof.overflow_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \^rst_d1\,
      I1 => wrst_busy,
      I2 => \gof.overflow_i_reg\,
      I3 => wr_en,
      O => overflow_i0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec is
  port (
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    d_out_reg : out STD_LOGIC;
    wr_pntr_plus1_pf_carry : in STD_LOGIC;
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0\ : in STD_LOGIC;
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1\ : in STD_LOGIC;
    almost_full : in STD_LOGIC;
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_2_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_i_2_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    rst_d1 : in STD_LOGIC;
    rst : in STD_LOGIC;
    wrst_busy : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wr_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec is
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_5_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_6_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_7_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_i_2_n_2\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_i_2_n_3\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_6_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_7_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_8_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_9_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_2_n_2\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_2_n_3\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3_n_2\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3_n_3\ : STD_LOGIC;
  signal going_afull0 : STD_LOGIC;
  signal leaving_afull : STD_LOGIC;
  signal leaving_full : STD_LOGIC;
  signal \NLW_gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00EAFFFF00EA0000"
    )
        port map (
      I0 => leaving_afull,
      I1 => going_afull0,
      I2 => wr_pntr_plus1_pf_carry,
      I3 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0\,
      I4 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1\,
      I5 => almost_full,
      O => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg\
    );
\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_i_2_0\(6),
      I2 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_i_2_0\(8),
      I3 => \^q\(8),
      I4 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_i_2_0\(7),
      I5 => \^q\(7),
      O => \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_5_n_0\
    );
\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_i_2_0\(3),
      I2 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_i_2_0\(5),
      I3 => \^q\(5),
      I4 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_i_2_0\(4),
      I5 => \^q\(4),
      O => \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_6_n_0\
    );
\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_i_2_0\(0),
      I2 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_i_2_0\(2),
      I3 => \^q\(2),
      I4 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_i_2_0\(1),
      I5 => \^q\(1),
      O => \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_7_n_0\
    );
\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_i_2_CO_UNCONNECTED\(3),
      CO(2) => going_afull0,
      CO(1) => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_i_2_n_2\,
      CO(0) => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_i_2_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_5_n_0\,
      S(1) => \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_6_n_0\,
      S(0) => \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_7_n_0\
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEA00EA"
    )
        port map (
      I0 => leaving_full,
      I1 => leaving_afull,
      I2 => wr_pntr_plus1_pf_carry,
      I3 => rst_d1,
      I4 => rst,
      O => d_out_reg
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_2_0\(6),
      I2 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_2_0\(8),
      I3 => \^q\(8),
      I4 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_2_0\(7),
      I5 => \^q\(7),
      O => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4_n_0\
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_2_0\(3),
      I2 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_2_0\(5),
      I3 => \^q\(5),
      I4 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_2_0\(4),
      I5 => \^q\(4),
      O => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0\
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_2_0\(0),
      I2 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_2_0\(2),
      I3 => \^q\(2),
      I4 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_2_0\(1),
      I5 => \^q\(1),
      O => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_6_n_0\
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3_0\(6),
      I2 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3_0\(8),
      I3 => \^q\(8),
      I4 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3_0\(7),
      I5 => \^q\(7),
      O => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_7_n_0\
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3_0\(3),
      I2 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3_0\(5),
      I3 => \^q\(5),
      I4 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3_0\(4),
      I5 => \^q\(4),
      O => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_8_n_0\
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3_0\(0),
      I2 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3_0\(2),
      I3 => \^q\(2),
      I4 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3_0\(1),
      I5 => \^q\(1),
      O => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_9_n_0\
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_2_CO_UNCONNECTED\(3),
      CO(2) => leaving_full,
      CO(1) => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_2_n_2\,
      CO(0) => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_2_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4_n_0\,
      S(1) => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0\,
      S(0) => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_6_n_0\
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3_CO_UNCONNECTED\(3),
      CO(2) => leaving_afull,
      CO(1) => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3_n_2\,
      CO(0) => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_7_n_0\,
      S(1) => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_8_n_0\,
      S(0) => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_9_n_0\
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(0),
      Q => \^q\(0),
      R => wrst_busy
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(1),
      Q => \^q\(1),
      R => wrst_busy
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(2),
      Q => \^q\(2),
      R => wrst_busy
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(3),
      Q => \^q\(3),
      R => wrst_busy
    );
\reg_out_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(4),
      Q => \^q\(4),
      R => wrst_busy
    );
\reg_out_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(5),
      Q => \^q\(5),
      R => wrst_busy
    );
\reg_out_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(6),
      Q => \^q\(6),
      R => wrst_busy
    );
\reg_out_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(7),
      Q => \^q\(7),
      R => wrst_busy
    );
\reg_out_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(8),
      Q => \^q\(8),
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_5 is
  port (
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \reg_out_i_reg[8]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \reg_out_i_reg[0]_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 8 downto 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_5 : entity is "xpm_fifo_reg_vec";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_5;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_5 is
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(8),
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]\(3),
      O => \reg_out_i_reg[8]_0\(0)
    );
\gen_pf_ic_rc.ram_empty_i_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]\(0),
      I2 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]\(1),
      I3 => \^q\(4),
      I4 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]\(2),
      I5 => \^q\(5),
      O => S(0)
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(0),
      Q => \^q\(0),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(1),
      Q => \^q\(1),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(2),
      Q => \^q\(2),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(3),
      Q => \^q\(3),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(4),
      Q => \^q\(4),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(5),
      Q => \^q\(5),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(6),
      Q => \^q\(6),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(7),
      Q => \^q\(7),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(8),
      Q => \^q\(8),
      R => \reg_out_i_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    wrst_busy : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 9 downto 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0\ : entity is "xpm_fifo_reg_vec";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0\ is
begin
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(0),
      Q => Q(0),
      R => wrst_busy
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(1),
      Q => Q(1),
      R => wrst_busy
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(2),
      Q => Q(2),
      R => wrst_busy
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(3),
      Q => Q(3),
      R => wrst_busy
    );
\reg_out_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(4),
      Q => Q(4),
      R => wrst_busy
    );
\reg_out_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(5),
      Q => Q(5),
      R => wrst_busy
    );
\reg_out_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(6),
      Q => Q(6),
      R => wrst_busy
    );
\reg_out_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(7),
      Q => Q(7),
      R => wrst_busy
    );
\reg_out_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(8),
      Q => Q(8),
      R => wrst_busy
    );
\reg_out_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(9),
      Q => Q(9),
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_6\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \grdc.rd_data_count_i_reg[9]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \grdc.rd_data_count_i_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \grdc.rd_data_count_i_reg[9]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \grdc.rd_data_count_i_reg[3]\ : in STD_LOGIC;
    \reg_out_i_reg[9]_0\ : in STD_LOGIC;
    \reg_out_i_reg[9]_1\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_6\ : entity is "xpm_fifo_reg_vec";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_6\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_6\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \grdc.rd_data_count_i[3]_i_2_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i[3]_i_6_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i[7]_i_2_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i[7]_i_3_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i[7]_i_4_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i[7]_i_5_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i[9]_i_3_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i[9]_i_4_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \grdc.rd_data_count_i_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \grdc.rd_data_count_i_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \grdc.rd_data_count_i_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \grdc.rd_data_count_i_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \grdc.rd_data_count_i_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \grdc.rd_data_count_i_reg[9]_i_2_n_3\ : STD_LOGIC;
  signal \reg_out_i_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW_grdc.rd_data_count_i_reg[3]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_grdc.rd_data_count_i_reg[9]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_grdc.rd_data_count_i_reg[9]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \grdc.rd_data_count_i_reg[3]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \grdc.rd_data_count_i_reg[7]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \grdc.rd_data_count_i_reg[9]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
\grdc.rd_data_count_i[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(2),
      I1 => \grdc.rd_data_count_i_reg[9]\(1),
      O => \grdc.rd_data_count_i[3]_i_2_n_0\
    );
\grdc.rd_data_count_i[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \grdc.rd_data_count_i_reg[3]\,
      I1 => \^q\(1),
      I2 => \grdc.rd_data_count_i_reg[9]\(0),
      I3 => \grdc.rd_data_count_i_reg[9]\(1),
      I4 => \^q\(2),
      O => \grdc.rd_data_count_i[3]_i_6_n_0\
    );
\grdc.rd_data_count_i[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(6),
      I1 => \grdc.rd_data_count_i_reg[9]\(5),
      O => \grdc.rd_data_count_i[7]_i_2_n_0\
    );
\grdc.rd_data_count_i[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(5),
      I1 => \grdc.rd_data_count_i_reg[9]\(4),
      O => \grdc.rd_data_count_i[7]_i_3_n_0\
    );
\grdc.rd_data_count_i[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(4),
      I1 => \grdc.rd_data_count_i_reg[9]\(3),
      O => \grdc.rd_data_count_i[7]_i_4_n_0\
    );
\grdc.rd_data_count_i[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(3),
      I1 => \grdc.rd_data_count_i_reg[9]\(2),
      O => \grdc.rd_data_count_i[7]_i_5_n_0\
    );
\grdc.rd_data_count_i[9]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(7),
      I1 => \grdc.rd_data_count_i_reg[9]\(6),
      O => \grdc.rd_data_count_i[9]_i_3_n_0\
    );
\grdc.rd_data_count_i[9]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => \^q\(8),
      I1 => \grdc.rd_data_count_i_reg[9]\(7),
      I2 => \grdc.rd_data_count_i_reg[9]\(8),
      I3 => \reg_out_i_reg_n_0_[9]\,
      O => \grdc.rd_data_count_i[9]_i_4_n_0\
    );
\grdc.rd_data_count_i_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \grdc.rd_data_count_i_reg[3]_i_1_n_0\,
      CO(2) => \grdc.rd_data_count_i_reg[3]_i_1_n_1\,
      CO(1) => \grdc.rd_data_count_i_reg[3]_i_1_n_2\,
      CO(0) => \grdc.rd_data_count_i_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \grdc.rd_data_count_i[3]_i_2_n_0\,
      DI(2 downto 1) => DI(1 downto 0),
      DI(0) => \^q\(0),
      O(3 downto 1) => D(2 downto 0),
      O(0) => \NLW_grdc.rd_data_count_i_reg[3]_i_1_O_UNCONNECTED\(0),
      S(3) => S(2),
      S(2) => \grdc.rd_data_count_i[3]_i_6_n_0\,
      S(1 downto 0) => S(1 downto 0)
    );
\grdc.rd_data_count_i_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \grdc.rd_data_count_i_reg[3]_i_1_n_0\,
      CO(3) => \grdc.rd_data_count_i_reg[7]_i_1_n_0\,
      CO(2) => \grdc.rd_data_count_i_reg[7]_i_1_n_1\,
      CO(1) => \grdc.rd_data_count_i_reg[7]_i_1_n_2\,
      CO(0) => \grdc.rd_data_count_i_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \grdc.rd_data_count_i[7]_i_2_n_0\,
      DI(2) => \grdc.rd_data_count_i[7]_i_3_n_0\,
      DI(1) => \grdc.rd_data_count_i[7]_i_4_n_0\,
      DI(0) => \grdc.rd_data_count_i[7]_i_5_n_0\,
      O(3 downto 0) => D(6 downto 3),
      S(3 downto 0) => \grdc.rd_data_count_i_reg[7]\(3 downto 0)
    );
\grdc.rd_data_count_i_reg[9]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \grdc.rd_data_count_i_reg[7]_i_1_n_0\,
      CO(3 downto 1) => \NLW_grdc.rd_data_count_i_reg[9]_i_2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \grdc.rd_data_count_i_reg[9]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \grdc.rd_data_count_i[9]_i_3_n_0\,
      O(3 downto 2) => \NLW_grdc.rd_data_count_i_reg[9]_i_2_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => D(8 downto 7),
      S(3 downto 2) => B"00",
      S(1) => \grdc.rd_data_count_i[9]_i_4_n_0\,
      S(0) => \grdc.rd_data_count_i_reg[9]_0\(0)
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[9]_1\(0),
      Q => \^q\(0),
      R => \reg_out_i_reg[9]_0\
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[9]_1\(1),
      Q => \^q\(1),
      R => \reg_out_i_reg[9]_0\
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[9]_1\(2),
      Q => \^q\(2),
      R => \reg_out_i_reg[9]_0\
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[9]_1\(3),
      Q => \^q\(3),
      R => \reg_out_i_reg[9]_0\
    );
\reg_out_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[9]_1\(4),
      Q => \^q\(4),
      R => \reg_out_i_reg[9]_0\
    );
\reg_out_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[9]_1\(5),
      Q => \^q\(5),
      R => \reg_out_i_reg[9]_0\
    );
\reg_out_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[9]_1\(6),
      Q => \^q\(6),
      R => \reg_out_i_reg[9]_0\
    );
\reg_out_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[9]_1\(7),
      Q => \^q\(7),
      R => \reg_out_i_reg[9]_0\
    );
\reg_out_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[9]_1\(8),
      Q => \^q\(8),
      R => \reg_out_i_reg[9]_0\
    );
\reg_out_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[9]_1\(9),
      Q => \reg_out_i_reg_n_0_[9]\,
      R => \reg_out_i_reg[9]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base is
  port (
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 35 downto 0 );
    injectsbiterra : in STD_LOGIC;
    injectdbiterra : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 35 downto 0 );
    sbiterra : out STD_LOGIC;
    dbiterra : out STD_LOGIC;
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 35 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 35 downto 0 );
    sbiterrb : out STD_LOGIC;
    dbiterrb : out STD_LOGIC
  );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 9;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 9;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 36;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 36;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute ECC_MODE : integer;
  attribute ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 18432;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 512;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "block";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 36;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 36;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 36;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 36;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 36;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "no";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 9;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 9;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 9;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 9;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 36;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 36;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 36;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 36;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 36;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 36;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "TRUE";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 36;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 36;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base is
  signal \<const0>\ : STD_LOGIC;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ : integer;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 511;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "p4_d32";
  attribute \MEM.PORTA.DATA_LSB\ : integer;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTA.DATA_MSB\ : integer;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 35;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTB.ADDRESS_END\ : integer;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 511;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "p4_d32";
  attribute \MEM.PORTB.DATA_LSB\ : integer;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTB.DATA_MSB\ : integer;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 18432;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 511;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 35;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 511;
  attribute ram_offset : integer;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 35;
begin
  dbiterra <= \<const0>\;
  dbiterrb <= \<const0>\;
  douta(35) <= \<const0>\;
  douta(34) <= \<const0>\;
  douta(33) <= \<const0>\;
  douta(32) <= \<const0>\;
  douta(31) <= \<const0>\;
  douta(30) <= \<const0>\;
  douta(29) <= \<const0>\;
  douta(28) <= \<const0>\;
  douta(27) <= \<const0>\;
  douta(26) <= \<const0>\;
  douta(25) <= \<const0>\;
  douta(24) <= \<const0>\;
  douta(23) <= \<const0>\;
  douta(22) <= \<const0>\;
  douta(21) <= \<const0>\;
  douta(20) <= \<const0>\;
  douta(19) <= \<const0>\;
  douta(18) <= \<const0>\;
  douta(17) <= \<const0>\;
  douta(16) <= \<const0>\;
  douta(15) <= \<const0>\;
  douta(14) <= \<const0>\;
  douta(13) <= \<const0>\;
  douta(12) <= \<const0>\;
  douta(11) <= \<const0>\;
  douta(10) <= \<const0>\;
  douta(9) <= \<const0>\;
  douta(8) <= \<const0>\;
  douta(7) <= \<const0>\;
  douta(6) <= \<const0>\;
  douta(5) <= \<const0>\;
  douta(4) <= \<const0>\;
  douta(3) <= \<const0>\;
  douta(2) <= \<const0>\;
  douta(1) <= \<const0>\;
  douta(0) <= \<const0>\;
  sbiterra <= \<const0>\;
  sbiterrb <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_wr_a.gen_word_narrow.mem_reg\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 1,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(13 downto 5) => addrb(8 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(13 downto 5) => addra(8 downto 0),
      ADDRBWRADDR(4 downto 0) => B"11111",
      CLKARDCLK => clkb,
      CLKBWRCLK => clka,
      DIADI(15 downto 0) => dina(15 downto 0),
      DIBDI(15 downto 0) => dina(31 downto 16),
      DIPADIP(1 downto 0) => dina(33 downto 32),
      DIPBDIP(1 downto 0) => dina(35 downto 34),
      DOADO(15 downto 0) => doutb(15 downto 0),
      DOBDO(15 downto 0) => doutb(31 downto 16),
      DOPADOP(1 downto 0) => doutb(33 downto 32),
      DOPBDOP(1 downto 0) => doutb(35 downto 34),
      ENARDEN => enb,
      ENBWREN => ena,
      REGCEAREGCE => regceb,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => rstb,
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3) => ena,
      WEBWE(2) => ena,
      WEBWE(1) => ena,
      WEBWE(0) => ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder is
  port (
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0\ : out STD_LOGIC;
    Bus_RNW_reg_reg_0 : out STD_LOGIC;
    s_axi_wdata_1_sp_1 : out STD_LOGIC;
    s_axi_wdata_0_sp_1 : out STD_LOGIC;
    \s_axi_wdata[3]\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ : out STD_LOGIC;
    bus2ip_wrce : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \TFT_iic_reg_data_reg[7]\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\ : out STD_LOGIC;
    TFT_dps_reg_reg : out STD_LOGIC;
    TFT_intr_en_reg : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\ : out STD_LOGIC;
    bus2ip_wrce_or : out STD_LOGIC;
    bus2ip_rdce_or : out STD_LOGIC;
    Bus_RNW_reg_reg_1 : out STD_LOGIC;
    cs_ce_clr : in STD_LOGIC;
    Q : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 2 downto 0 );
    tft_dps : in STD_LOGIC;
    prmry_in : in STD_LOGIC;
    TFT_intr_en_reg_0 : in STD_LOGIC;
    bus2ip_rnw_i : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_1\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_2\ : in STD_LOGIC;
    bus2ip_sreset : in STD_LOGIC;
    TFT_status_reg_reg : in STD_LOGIC;
    \IP2Bus_Data_reg[28]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    TFT_status_reg : in STD_LOGIC;
    \IP2Bus_Data_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    TFT_iic_xfer : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder is
  signal Bus_RNW_reg_i_1_n_0 : STD_LOGIC;
  signal \^bus_rnw_reg_reg_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ : STD_LOGIC;
  signal \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\ : STD_LOGIC;
  signal \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\ : STD_LOGIC;
  signal \IP2Bus_Data[28]_i_2_n_0\ : STD_LOGIC;
  signal \IP2Bus_Data[31]_i_2_n_0\ : STD_LOGIC;
  signal ce_expnd_i_0 : STD_LOGIC;
  signal ce_expnd_i_1 : STD_LOGIC;
  signal ce_expnd_i_2 : STD_LOGIC;
  signal ce_expnd_i_3 : STD_LOGIC;
  signal s_axi_wdata_0_sn_1 : STD_LOGIC;
  signal s_axi_wdata_1_sn_1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Bus_RNW_reg_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \IP2Bus_Data[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \IP2Bus_Data[28]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \TFT_base_addr[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of TFT_dps_reg_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \TFT_iic_reg_data[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of TFT_intr_en_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of TFT_status_reg_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of bus2ip_rdce_d1_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of bus2ip_wrce_d1_i_1 : label is "soft_lutpair0";
begin
  Bus_RNW_reg_reg_0 <= \^bus_rnw_reg_reg_0\;
  \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0\ <= \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\;
  \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\ <= \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\;
  s_axi_wdata_0_sp_1 <= s_axi_wdata_0_sn_1;
  s_axi_wdata_1_sp_1 <= s_axi_wdata_1_sn_1;
Bus_RNW_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bus2ip_rnw_i,
      I1 => Q,
      I2 => \^bus_rnw_reg_reg_0\,
      O => Bus_RNW_reg_i_1_n_0
    );
Bus_RNW_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_i_1_n_0,
      Q => \^bus_rnw_reg_reg_0\,
      R => '0'
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_3,
      Q => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_2\,
      I1 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_1\,
      O => ce_expnd_i_2
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_2,
      Q => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_1,
      Q => \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_1\,
      I1 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_2\,
      O => ce_expnd_i_0
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_0,
      Q => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      R => cs_ce_clr
    );
\IP2Bus_Data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080FFFF00800080"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => \IP2Bus_Data_reg[0]\(0),
      I3 => bus2ip_sreset,
      I4 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      I5 => TFT_iic_xfer,
      O => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\
    );
\IP2Bus_Data[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I2 => \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\,
      I3 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I4 => bus2ip_sreset,
      I5 => \^bus_rnw_reg_reg_0\,
      O => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\
    );
\IP2Bus_Data[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I2 => bus2ip_sreset,
      O => Bus_RNW_reg_reg_1
    );
\IP2Bus_Data[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000A0C00000A00"
    )
        port map (
      I0 => TFT_intr_en_reg_0,
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I3 => \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\,
      I4 => \IP2Bus_Data[28]_i_2_n_0\,
      I5 => \IP2Bus_Data_reg[28]\(2),
      O => TFT_intr_en_reg
    );
\IP2Bus_Data[28]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => bus2ip_sreset,
      I2 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      O => \IP2Bus_Data[28]_i_2_n_0\
    );
\IP2Bus_Data[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A0AC0000A0A0"
    )
        port map (
      I0 => tft_dps,
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I3 => \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\,
      I4 => \IP2Bus_Data[28]_i_2_n_0\,
      I5 => \IP2Bus_Data_reg[28]\(1),
      O => TFT_dps_reg_reg
    );
\IP2Bus_Data[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F4F4F4FFF4F4F4"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      I1 => \IP2Bus_Data_reg[28]\(0),
      I2 => \IP2Bus_Data[31]_i_2_n_0\,
      I3 => prmry_in,
      I4 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I5 => \IP2Bus_Data[28]_i_2_n_0\,
      O => \TFT_iic_reg_data_reg[7]\
    );
\IP2Bus_Data[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I1 => TFT_status_reg,
      I2 => \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\,
      I3 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I4 => bus2ip_sreset,
      I5 => \^bus_rnw_reg_reg_0\,
      O => \IP2Bus_Data[31]_i_2_n_0\
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[0].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f
     port map (
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_2\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_1\,
      ce_expnd_i_3 => ce_expnd_i_3
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized1\
     port map (
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\ => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_1\,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0\ => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_2\,
      ce_expnd_i_1 => ce_expnd_i_1
    );
\TFT_base_addr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I1 => \^bus_rnw_reg_reg_0\,
      O => bus2ip_wrce(1)
    );
TFT_dps_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => tft_dps,
      O => s_axi_wdata_1_sn_1
    );
\TFT_iic_reg_data[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I1 => \^bus_rnw_reg_reg_0\,
      O => bus2ip_wrce(0)
    );
TFT_intr_en_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(2),
      I1 => \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => TFT_intr_en_reg_0,
      O => \s_axi_wdata[3]\
    );
TFT_on_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => prmry_in,
      O => s_axi_wdata_0_sn_1
    );
TFT_status_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3100"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I1 => bus2ip_sreset,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => TFT_status_reg_reg,
      O => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\
    );
bus2ip_rdce_d1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FE00"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      O => bus2ip_rdce_or
    );
bus2ip_wrce_d1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33333332"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\,
      I3 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      O => bus2ip_wrce_or
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl_fifo_rbu_f is
  port (
    m_axi_bready : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    sig_inhibit_rdy_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl_fifo_rbu_f;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl_fifo_rbu_f is
  signal CNTR_INCR_DECR_ADDN_F_I_n_1 : STD_LOGIC;
  signal CNTR_INCR_DECR_ADDN_F_I_n_2 : STD_LOGIC;
  signal FIFO_Full_reg_n_0 : STD_LOGIC;
  signal \fifo_full_p1__0\ : STD_LOGIC;
  signal sig_rd_empty : STD_LOGIC;
begin
CNTR_INCR_DECR_ADDN_F_I: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cntr_incr_decr_addn_f
     port map (
      \INFERRED_GEN.cnt_i_reg[0]_0\ => FIFO_Full_reg_n_0,
      Q(2) => sig_rd_empty,
      Q(1) => CNTR_INCR_DECR_ADDN_F_I_n_1,
      Q(0) => CNTR_INCR_DECR_ADDN_F_I_n_2,
      m_axi_aclk => m_axi_aclk,
      m_axi_bvalid => m_axi_bvalid,
      \out\ => \out\,
      sig_inhibit_rdy_n => sig_inhibit_rdy_n
    );
FIFO_Full_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \fifo_full_p1__0\,
      Q => FIFO_Full_reg_n_0,
      R => \out\
    );
fifo_full_p1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000400A2AA"
    )
        port map (
      I0 => CNTR_INCR_DECR_ADDN_F_I_n_1,
      I1 => sig_inhibit_rdy_n,
      I2 => FIFO_Full_reg_n_0,
      I3 => m_axi_bvalid,
      I4 => CNTR_INCR_DECR_ADDN_F_I_n_2,
      I5 => sig_rd_empty,
      O => \fifo_full_p1__0\
    );
m_axi_bready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_inhibit_rdy_n,
      I1 => FIFO_Full_reg_n_0,
      O => m_axi_bready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst is
  port (
    \gen_rst_ic.fifo_rd_rst_ic_reg_0\ : out STD_LOGIC;
    wrst_busy : out STD_LOGIC;
    d_out_reg : out STD_LOGIC;
    wr_pntr_plus1_pf_carry : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    underflow_i0 : out STD_LOGIC;
    \gen_rst_ic.wr_rst_busy_ic_reg_0\ : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    \gwack.wr_ack_i_reg\ : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    \guf.underflow_i_reg\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst is
  signal \/i__n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \gen_rst_ic.curr_rrst_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_rst_ic.fifo_rd_rst_i\ : STD_LOGIC;
  signal \^gen_rst_ic.fifo_rd_rst_ic_reg_0\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_rd_rst_wr_i\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_ic\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_ic_i_3_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_rd\ : STD_LOGIC;
  signal \gen_rst_ic.next_rrst_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_rst_ic.rst_seq_reentered_i_1_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.rst_seq_reentered_i_2_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.rst_seq_reentered_reg_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.wr_rst_busy_ic_i_1_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.wr_rst_busy_ic_i_2_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \power_on_rst_reg_n_0_[0]\ : STD_LOGIC;
  signal \rst_i__0\ : STD_LOGIC;
  signal \^wrst_busy\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \/i_\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1\ : label is "soft_lutpair81";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0]\ : label is "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1]\ : label is "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11";
  attribute SOFT_HLUTNM of \__0/i_\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \gen_rst_ic.fifo_rd_rst_ic_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \gen_rst_ic.fifo_wr_rst_ic_i_2\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \gen_rst_ic.fifo_wr_rst_ic_i_3\ : label is "soft_lutpair80";
  attribute DEF_VAL : string;
  attribute DEF_VAL of \gen_rst_ic.rrst_wr_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \gen_rst_ic.rrst_wr_inst\ : label is 2;
  attribute INIT : string;
  attribute INIT of \gen_rst_ic.rrst_wr_inst\ : label is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \gen_rst_ic.rrst_wr_inst\ : label is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \gen_rst_ic.rrst_wr_inst\ : label is 0;
  attribute VERSION : integer;
  attribute VERSION of \gen_rst_ic.rrst_wr_inst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \gen_rst_ic.rrst_wr_inst\ : label is "SYNC_RST";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \gen_rst_ic.rrst_wr_inst\ : label is "TRUE";
  attribute DEF_VAL of \gen_rst_ic.wrst_rd_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF of \gen_rst_ic.wrst_rd_inst\ : label is 2;
  attribute INIT of \gen_rst_ic.wrst_rd_inst\ : label is "0";
  attribute INIT_SYNC_FF of \gen_rst_ic.wrst_rd_inst\ : label is 1;
  attribute SIM_ASSERT_CHK of \gen_rst_ic.wrst_rd_inst\ : label is 0;
  attribute VERSION of \gen_rst_ic.wrst_rd_inst\ : label is 0;
  attribute XPM_CDC of \gen_rst_ic.wrst_rd_inst\ : label is "SYNC_RST";
  attribute XPM_MODULE of \gen_rst_ic.wrst_rd_inst\ : label is "TRUE";
  attribute SOFT_HLUTNM of \grdc.rd_data_count_i[9]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \guf.underflow_i_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of wr_rst_busy_INST_0 : label is "soft_lutpair82";
begin
  \gen_rst_ic.fifo_rd_rst_ic_reg_0\ <= \^gen_rst_ic.fifo_rd_rst_ic_reg_0\;
  wrst_busy <= \^wrst_busy\;
\/i_\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010116"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      O => \/i__n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03030200FFFFFFFF"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I1 => p_0_in,
      I2 => rst,
      I3 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I5 => \/i__n_0\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFEFEEE"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I3 => rst,
      I4 => p_0_in,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0EEE0FFFFEEE0"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I2 => rst,
      I3 => p_0_in,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I5 => \gen_rst_ic.fifo_rd_rst_wr_i\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03000200"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I1 => rst,
      I2 => p_0_in,
      I3 => \gen_rst_ic.fifo_rd_rst_wr_i\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \gen_rst_ic.fifo_rd_rst_wr_i\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I2 => rst,
      I3 => p_0_in,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \/i__n_0\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I1 => p_0_in,
      I2 => rst,
      I3 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      R => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      R => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      R => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      R => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_sequential_gen_rst_ic.curr_rrst_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gen_rst_ic.curr_rrst_state\(0),
      I1 => \gen_rst_ic.curr_rrst_state\(1),
      O => \gen_rst_ic.next_rrst_state\(1)
    );
\FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_rst_ic.next_rrst_state\(0),
      Q => \gen_rst_ic.curr_rrst_state\(0),
      R => '0'
    );
\FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_rst_ic.next_rrst_state\(1),
      Q => \gen_rst_ic.curr_rrst_state\(1),
      R => '0'
    );
\__0/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \gen_rst_ic.fifo_wr_rst_rd\,
      I1 => \gen_rst_ic.curr_rrst_state\(1),
      I2 => \gen_rst_ic.curr_rrst_state\(0),
      O => \gen_rst_ic.next_rrst_state\(0)
    );
\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^wrst_busy\,
      I1 => rst_d1,
      I2 => rst,
      O => \gen_rst_ic.wr_rst_busy_ic_reg_0\
    );
\gen_rst_ic.fifo_rd_rst_ic_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3E"
    )
        port map (
      I0 => \gen_rst_ic.fifo_wr_rst_rd\,
      I1 => \gen_rst_ic.curr_rrst_state\(1),
      I2 => \gen_rst_ic.curr_rrst_state\(0),
      O => \gen_rst_ic.fifo_rd_rst_i\
    );
\gen_rst_ic.fifo_rd_rst_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_rst_ic.fifo_rd_rst_i\,
      Q => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\,
      R => '0'
    );
\gen_rst_ic.fifo_wr_rst_ic_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAFFFFFFEA0000"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I2 => \rst_i__0\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I4 => \gen_rst_ic.fifo_wr_rst_ic_i_3_n_0\,
      I5 => \gen_rst_ic.fifo_wr_rst_ic\,
      O => \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0\
    );
\gen_rst_ic.fifo_wr_rst_ic_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in,
      I1 => rst,
      O => \rst_i__0\
    );
\gen_rst_ic.fifo_wr_rst_ic_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010116"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      O => \gen_rst_ic.fifo_wr_rst_ic_i_3_n_0\
    );
\gen_rst_ic.fifo_wr_rst_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0\,
      Q => \gen_rst_ic.fifo_wr_rst_ic\,
      R => '0'
    );
\gen_rst_ic.rrst_wr_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst
     port map (
      dest_clk => wr_clk,
      dest_rst => \gen_rst_ic.fifo_rd_rst_wr_i\,
      src_rst => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\
    );
\gen_rst_ic.rst_seq_reentered_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \gen_rst_ic.rst_seq_reentered_i_2_n_0\,
      I1 => rst,
      I2 => p_0_in,
      O => \gen_rst_ic.rst_seq_reentered_i_1_n_0\
    );
\gen_rst_ic.rst_seq_reentered_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00010000"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      I5 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      O => \gen_rst_ic.rst_seq_reentered_i_2_n_0\
    );
\gen_rst_ic.rst_seq_reentered_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.rst_seq_reentered_i_1_n_0\,
      Q => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      R => '0'
    );
\gen_rst_ic.wr_rst_busy_ic_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFEF00"
    )
        port map (
      I0 => rst,
      I1 => p_0_in,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I3 => \gen_rst_ic.wr_rst_busy_ic_i_2_n_0\,
      I4 => \^wrst_busy\,
      O => \gen_rst_ic.wr_rst_busy_ic_i_1_n_0\
    );
\gen_rst_ic.wr_rst_busy_ic_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000116"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      O => \gen_rst_ic.wr_rst_busy_ic_i_2_n_0\
    );
\gen_rst_ic.wr_rst_busy_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.wr_rst_busy_ic_i_1_n_0\,
      Q => \^wrst_busy\,
      R => '0'
    );
\gen_rst_ic.wrst_rd_inst\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\
     port map (
      dest_clk => rd_clk,
      dest_rst => \gen_rst_ic.fifo_wr_rst_rd\,
      src_rst => \gen_rst_ic.fifo_wr_rst_ic\
    );
\gen_sdpram.xpm_memory_base_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => wr_en,
      I1 => \gwack.wr_ack_i_reg\,
      I2 => \^wrst_busy\,
      I3 => rst_d1,
      O => wr_pntr_plus1_pf_carry
    );
\grdc.rd_data_count_i[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\,
      I1 => Q(0),
      I2 => Q(1),
      O => SR(0)
    );
\guf.underflow_i_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => rd_en,
      I1 => \guf.underflow_i_reg\,
      I2 => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\,
      O => underflow_i0
    );
\gwack.wr_ack_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => rst_d1,
      I1 => \gwack.wr_ack_i_reg\,
      I2 => wr_en,
      I3 => \^wrst_busy\,
      I4 => \gen_rst_ic.fifo_wr_rst_ic\,
      I5 => rst,
      O => d_out_reg
    );
\power_on_rst_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      Q => \power_on_rst_reg_n_0_[0]\,
      R => '0'
    );
\power_on_rst_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \power_on_rst_reg_n_0_[0]\,
      Q => p_0_in,
      R => '0'
    );
wr_rst_busy_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^wrst_busy\,
      I1 => rst_d1,
      O => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment is
  port (
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\ : out STD_LOGIC;
    Bus_RNW_reg_reg : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    \state1__2\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wdata_1_sp_1 : out STD_LOGIC;
    s_axi_wdata_0_sp_1 : out STD_LOGIC;
    \s_axi_wdata[3]\ : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 26 downto 0 );
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ : out STD_LOGIC;
    bus2ip_wrce : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \TFT_iic_reg_data_reg[7]\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\ : out STD_LOGIC;
    TFT_dps_reg_reg : out STD_LOGIC;
    TFT_intr_en_reg : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ : out STD_LOGIC;
    bus2ip_wrce_or : out STD_LOGIC;
    bus2ip_rdce_or : out STD_LOGIC;
    Bus_RNW_reg_reg_0 : out STD_LOGIC;
    cs_ce_clr : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    bus2ip_sreset : in STD_LOGIC;
    s_axi_rvalid_i_reg_0 : in STD_LOGIC;
    s_axi_bvalid_i_reg_0 : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awready : in STD_LOGIC;
    bus2ip_rdce_d1 : in STD_LOGIC;
    bus2ip_rdce_d2 : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 2 downto 0 );
    tft_dps : in STD_LOGIC;
    prmry_in : in STD_LOGIC;
    TFT_intr_en_reg_0 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rdata_i_reg[31]_0\ : in STD_LOGIC_VECTOR ( 26 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TFT_status_reg_reg : in STD_LOGIC;
    \IP2Bus_Data_reg[28]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    TFT_status_reg : in STD_LOGIC;
    \IP2Bus_Data_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    TFT_iic_xfer : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment is
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \bus2ip_addr_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[3]_i_2_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[2]\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[3]\ : STD_LOGIC;
  signal bus2ip_rnw_i : STD_LOGIC;
  signal bus2ip_rnw_i_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal s_axi_wdata_0_sn_1 : STD_LOGIC;
  signal s_axi_wdata_1_sn_1 : STD_LOGIC;
  signal start2 : STD_LOGIC;
  signal start2_i_1_n_0 : STD_LOGIC;
  signal \^state1__2\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "sm_read:1000,sm_write:0100,sm_resp:0001,sm_idle:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "sm_read:1000,sm_write:0100,sm_resp:0001,sm_idle:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "sm_read:1000,sm_write:0100,sm_resp:0001,sm_idle:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "sm_read:1000,sm_write:0100,sm_resp:0001,sm_idle:0010";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bus2ip_addr_i[3]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of bus2ip_rnw_i_i_1 : label is "soft_lutpair6";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rvalid <= \^s_axi_rvalid\;
  s_axi_wdata_0_sp_1 <= s_axi_wdata_0_sn_1;
  s_axi_wdata_1_sp_1 <= s_axi_wdata_1_sn_1;
  \state1__2\ <= \^state1__2\;
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888F8F8F88888888"
    )
        port map (
      I0 => \^state1__2\,
      I1 => \^q\(0),
      I2 => s_axi_arvalid,
      I3 => s_axi_wvalid,
      I4 => s_axi_awvalid,
      I5 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^s_axi_bvalid\,
      I2 => s_axi_rready,
      I3 => \^s_axi_rvalid\,
      O => \^state1__2\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800FFFF08000800"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => s_axi_awready,
      I5 => \^q\(1),
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF8F8888"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => bus2ip_rdce_d1,
      I3 => bus2ip_rdce_d2,
      I4 => \^q\(2),
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(0),
      Q => \^q\(0),
      R => bus2ip_sreset
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[1]\,
      S => bus2ip_sreset
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \^q\(1),
      R => bus2ip_sreset
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => \^q\(2),
      R => bus2ip_sreset
    );
I_DECODER: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder
     port map (
      Bus_RNW_reg_reg_0 => Bus_RNW_reg_reg,
      Bus_RNW_reg_reg_1 => Bus_RNW_reg_reg_0,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0\ => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_1\ => \bus2ip_addr_i_reg_n_0_[3]\,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_2\ => \bus2ip_addr_i_reg_n_0_[2]\,
      \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\ => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\,
      \IP2Bus_Data_reg[0]\(0) => \IP2Bus_Data_reg[0]\(0),
      \IP2Bus_Data_reg[28]\(2 downto 0) => \IP2Bus_Data_reg[28]\(2 downto 0),
      Q => start2,
      TFT_dps_reg_reg => TFT_dps_reg_reg,
      \TFT_iic_reg_data_reg[7]\ => \TFT_iic_reg_data_reg[7]\,
      TFT_iic_xfer => TFT_iic_xfer,
      TFT_intr_en_reg => TFT_intr_en_reg,
      TFT_intr_en_reg_0 => TFT_intr_en_reg_0,
      TFT_status_reg => TFT_status_reg,
      TFT_status_reg_reg => TFT_status_reg_reg,
      bus2ip_rdce_or => bus2ip_rdce_or,
      bus2ip_rnw_i => bus2ip_rnw_i,
      bus2ip_sreset => bus2ip_sreset,
      bus2ip_wrce(1 downto 0) => bus2ip_wrce(1 downto 0),
      bus2ip_wrce_or => bus2ip_wrce_or,
      cs_ce_clr => cs_ce_clr,
      prmry_in => prmry_in,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(2 downto 0) => s_axi_wdata(2 downto 0),
      \s_axi_wdata[3]\ => \s_axi_wdata[3]\,
      s_axi_wdata_0_sp_1 => s_axi_wdata_0_sn_1,
      s_axi_wdata_1_sp_1 => s_axi_wdata_1_sn_1,
      tft_dps => tft_dps
    );
\bus2ip_addr_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF80FFFFBF800000"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => s_axi_arvalid,
      I3 => s_axi_awaddr(0),
      I4 => \bus2ip_addr_i[3]_i_2_n_0\,
      I5 => \bus2ip_addr_i_reg_n_0_[2]\,
      O => \bus2ip_addr_i[2]_i_1_n_0\
    );
\bus2ip_addr_i[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF80FFFFBF800000"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => s_axi_arvalid,
      I3 => s_axi_awaddr(1),
      I4 => \bus2ip_addr_i[3]_i_2_n_0\,
      I5 => \bus2ip_addr_i_reg_n_0_[3]\,
      O => \bus2ip_addr_i[3]_i_1_n_0\
    );
\bus2ip_addr_i[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA00"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \bus2ip_addr_i[3]_i_2_n_0\
    );
\bus2ip_addr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \bus2ip_addr_i[2]_i_1_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_[2]\,
      R => bus2ip_sreset
    );
\bus2ip_addr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \bus2ip_addr_i[3]_i_1_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_[3]\,
      R => bus2ip_sreset
    );
bus2ip_rnw_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFAA00"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => bus2ip_rnw_i,
      O => bus2ip_rnw_i_i_1_n_0
    );
bus2ip_rnw_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => bus2ip_rnw_i_i_1_n_0,
      Q => bus2ip_rnw_i,
      R => bus2ip_sreset
    );
s_axi_bvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_bvalid_i_reg_0,
      Q => \^s_axi_bvalid\,
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^q\(2),
      D => \s_axi_rdata_i_reg[31]_0\(0),
      Q => s_axi_rdata(0),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^q\(2),
      D => \s_axi_rdata_i_reg[31]_0\(10),
      Q => s_axi_rdata(10),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^q\(2),
      D => \s_axi_rdata_i_reg[31]_0\(11),
      Q => s_axi_rdata(11),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^q\(2),
      D => \s_axi_rdata_i_reg[31]_0\(12),
      Q => s_axi_rdata(12),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^q\(2),
      D => \s_axi_rdata_i_reg[31]_0\(13),
      Q => s_axi_rdata(13),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^q\(2),
      D => \s_axi_rdata_i_reg[31]_0\(14),
      Q => s_axi_rdata(14),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^q\(2),
      D => \s_axi_rdata_i_reg[31]_0\(15),
      Q => s_axi_rdata(15),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^q\(2),
      D => \s_axi_rdata_i_reg[31]_0\(1),
      Q => s_axi_rdata(1),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^q\(2),
      D => \s_axi_rdata_i_reg[31]_0\(16),
      Q => s_axi_rdata(16),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^q\(2),
      D => \s_axi_rdata_i_reg[31]_0\(17),
      Q => s_axi_rdata(17),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^q\(2),
      D => \s_axi_rdata_i_reg[31]_0\(18),
      Q => s_axi_rdata(18),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^q\(2),
      D => \s_axi_rdata_i_reg[31]_0\(19),
      Q => s_axi_rdata(19),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^q\(2),
      D => \s_axi_rdata_i_reg[31]_0\(20),
      Q => s_axi_rdata(20),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^q\(2),
      D => \s_axi_rdata_i_reg[31]_0\(21),
      Q => s_axi_rdata(21),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^q\(2),
      D => \s_axi_rdata_i_reg[31]_0\(22),
      Q => s_axi_rdata(22),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^q\(2),
      D => \s_axi_rdata_i_reg[31]_0\(23),
      Q => s_axi_rdata(23),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^q\(2),
      D => \s_axi_rdata_i_reg[31]_0\(24),
      Q => s_axi_rdata(24),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^q\(2),
      D => \s_axi_rdata_i_reg[31]_0\(2),
      Q => s_axi_rdata(2),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^q\(2),
      D => \s_axi_rdata_i_reg[31]_0\(25),
      Q => s_axi_rdata(25),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^q\(2),
      D => \s_axi_rdata_i_reg[31]_0\(26),
      Q => s_axi_rdata(26),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^q\(2),
      D => \s_axi_rdata_i_reg[31]_0\(3),
      Q => s_axi_rdata(3),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^q\(2),
      D => \s_axi_rdata_i_reg[31]_0\(4),
      Q => s_axi_rdata(4),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^q\(2),
      D => \s_axi_rdata_i_reg[31]_0\(5),
      Q => s_axi_rdata(5),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^q\(2),
      D => \s_axi_rdata_i_reg[31]_0\(6),
      Q => s_axi_rdata(6),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^q\(2),
      D => \s_axi_rdata_i_reg[31]_0\(7),
      Q => s_axi_rdata(7),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^q\(2),
      D => \s_axi_rdata_i_reg[31]_0\(8),
      Q => s_axi_rdata(8),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^q\(2),
      D => \s_axi_rdata_i_reg[31]_0\(9),
      Q => s_axi_rdata(9),
      R => bus2ip_sreset
    );
s_axi_rvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_rvalid_i_reg_0,
      Q => \^s_axi_rvalid\,
      R => bus2ip_sreset
    );
start2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F800"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => start2_i_1_n_0
    );
start2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => start2_i_1_n_0,
      Q => start2,
      R => bus2ip_sreset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl_fifo_f is
  port (
    m_axi_bready : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    sig_inhibit_rdy_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl_fifo_f;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl_fifo_f is
begin
I_SRL_FIFO_RBU_F: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl_fifo_rbu_f
     port map (
      m_axi_aclk => m_axi_aclk,
      m_axi_bready => m_axi_bready,
      m_axi_bvalid => m_axi_bvalid,
      \out\ => \out\,
      sig_inhibit_rdy_n => sig_inhibit_rdy_n
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 35 downto 0 );
    full : out STD_LOGIC;
    full_n : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 8 downto 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 35 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 8 downto 0 );
    underflow : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "0";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "16'b0001111100011111";
  attribute EN_AE : string;
  attribute EN_AE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_AF : string;
  attribute EN_AF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_DVLD : string;
  attribute EN_DVLD of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_OF : string;
  attribute EN_OF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_PE : string;
  attribute EN_PE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_PF : string;
  attribute EN_PF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_RDC : string;
  attribute EN_RDC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_UF : string;
  attribute EN_UF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_WACK : string;
  attribute EN_WACK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_WDC : string;
  attribute EN_WDC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
  attribute FIFO_MEMORY_TYPE : integer;
  attribute FIFO_MEMORY_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 2;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 2;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 512;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 18432;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 512;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 8;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 507;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 8;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 507;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 7;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 10;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 9;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 10;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 9;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 36;
  attribute READ_MODE : integer;
  attribute READ_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1F1F";
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 36;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 9;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 10;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 9;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 9;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 6;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 3;
  attribute invalid : integer;
  attribute invalid of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute stage1_valid : integer;
  attribute stage1_valid of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base is
  signal \<const0>\ : STD_LOGIC;
  signal aempty_fwft_i0 : STD_LOGIC;
  signal \^almost_empty\ : STD_LOGIC;
  signal \^almost_full\ : STD_LOGIC;
  signal count_value_i : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal data_valid_fwft1 : STD_LOGIC;
  signal diff_pntr_pe : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal diff_pntr_pf_q : STD_LOGIC_VECTOR ( 9 downto 4 );
  signal diff_pntr_pf_q0 : STD_LOGIC_VECTOR ( 9 downto 4 );
  signal \^empty\ : STD_LOGIC;
  signal \^full\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_0\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_1\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_2\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_3\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_4\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_5\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_6\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_7\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_8\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_9\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_n_0\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_n_10\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_0\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_1\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_2\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_3\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_4\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_5\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_6\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_7\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_8\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_0\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_1\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_10\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_2\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_3\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_4\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_5\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_6\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_7\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_8\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_9\ : STD_LOGIC;
  signal \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\ : STD_LOGIC;
  signal \gen_fwft.ram_regout_en\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_0\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_1\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_2\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_3\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_4\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_5_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[4]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[5]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[6]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[7]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[8]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_3_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_n_0\ : STD_LOGIC;
  signal going_empty0 : STD_LOGIC;
  signal \grdc.diff_wr_rd_pntr_rdc\ : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal \grdc.rd_data_count_i0\ : STD_LOGIC;
  signal \gwdc.diff_wr_rd_pntr1_out\ : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal \next_fwft_state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal overflow_i0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal \^prog_empty\ : STD_LOGIC;
  signal \^prog_full\ : STD_LOGIC;
  signal ram_empty_i : STD_LOGIC;
  signal ram_empty_i0 : STD_LOGIC;
  signal ram_rd_en_i : STD_LOGIC;
  signal rd_pntr_ext : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal rd_pntr_wr : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal rd_pntr_wr_cdc : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal rd_pntr_wr_cdc_dc : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^rd_rst_busy\ : STD_LOGIC;
  signal rdp_inst_n_0 : STD_LOGIC;
  signal rdp_inst_n_13 : STD_LOGIC;
  signal rdp_inst_n_33 : STD_LOGIC;
  signal rdp_inst_n_34 : STD_LOGIC;
  signal rdp_inst_n_35 : STD_LOGIC;
  signal rdp_inst_n_36 : STD_LOGIC;
  signal rdp_inst_n_37 : STD_LOGIC;
  signal rdp_inst_n_38 : STD_LOGIC;
  signal rst_d1 : STD_LOGIC;
  signal rst_d1_inst_n_1 : STD_LOGIC;
  signal rst_d1_inst_n_2 : STD_LOGIC;
  signal src_in_bin00_out : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal underflow_i0 : STD_LOGIC;
  signal wr_pntr_ext : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal wr_pntr_plus1_pf : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal wr_pntr_plus1_pf_carry : STD_LOGIC;
  signal wr_pntr_rd_cdc : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal wr_pntr_rd_cdc_dc : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal wrpp2_inst_n_0 : STD_LOGIC;
  signal wrpp2_inst_n_1 : STD_LOGIC;
  signal wrpp2_inst_n_2 : STD_LOGIC;
  signal wrpp2_inst_n_3 : STD_LOGIC;
  signal wrpp2_inst_n_4 : STD_LOGIC;
  signal wrpp2_inst_n_5 : STD_LOGIC;
  signal wrpp2_inst_n_6 : STD_LOGIC;
  signal wrpp2_inst_n_7 : STD_LOGIC;
  signal wrpp2_inst_n_8 : STD_LOGIC;
  signal wrst_busy : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_2 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_7 : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\ : STD_LOGIC_VECTOR ( 35 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1\ : label is "soft_lutpair85";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 1;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 10;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 2;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 1;
  attribute REG_OUTPUT of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 9;
  attribute XPM_CDC of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 4;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 1;
  attribute REG_OUTPUT of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 10;
  attribute XPM_CDC of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 2;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 1;
  attribute REG_OUTPUT of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 9;
  attribute XPM_CDC of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is "TRUE";
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 36;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 36;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE\ : boolean;
  attribute \MEM.ADDRESS_SPACE\ of \gen_sdpram.xpm_memory_base_inst\ : label is std.standard.true;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ : integer;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ of \gen_sdpram.xpm_memory_base_inst\ : label is 35;
  attribute \MEM.ADDRESS_SPACE_END\ : integer;
  attribute \MEM.ADDRESS_SPACE_END\ of \gen_sdpram.xpm_memory_base_inst\ : label is 511;
  attribute \MEM.CORE_MEMORY_WIDTH\ : integer;
  attribute \MEM.CORE_MEMORY_WIDTH\ of \gen_sdpram.xpm_memory_base_inst\ : label is 36;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of \gen_sdpram.xpm_memory_base_inst\ : label is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of \gen_sdpram.xpm_memory_base_inst\ : label is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of \gen_sdpram.xpm_memory_base_inst\ : label is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of \gen_sdpram.xpm_memory_base_inst\ : label is 18432;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 512;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is "block";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 36;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of \gen_sdpram.xpm_memory_base_inst\ : label is 36;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of \gen_sdpram.xpm_memory_base_inst\ : label is 36;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of \gen_sdpram.xpm_memory_base_inst\ : label is 36;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of \gen_sdpram.xpm_memory_base_inst\ : label is 36;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "no";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 36;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 36;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 36;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 36;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute SIM_ASSERT_CHK of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute VERSION of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WAKEUP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 36;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 36;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute XPM_MODULE of \gen_sdpram.xpm_memory_base_inst\ : label is "TRUE";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 36;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 36;
begin
  almost_empty <= \^almost_empty\;
  almost_full <= \^almost_full\;
  dbiterr <= \<const0>\;
  empty <= \^empty\;
  full <= \^full\;
  full_n <= \<const0>\;
  prog_empty <= \^prog_empty\;
  prog_full <= \^prog_full\;
  rd_rst_busy <= \^rd_rst_busy\;
  sbiterr <= \<const0>\;
\FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7883"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(1),
      I2 => ram_empty_i,
      I3 => curr_fwft_state(0),
      O => \next_fwft_state__0\(0)
    );
\FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6E"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => curr_fwft_state(1),
      I2 => rd_en,
      O => \next_fwft_state__0\(1)
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \next_fwft_state__0\(0),
      Q => curr_fwft_state(0),
      R => \^rd_rst_busy\
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \next_fwft_state__0\(1),
      Q => curr_fwft_state(1),
      R => \^rd_rst_busy\
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gaf_wptr_p3.wrpp3_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn
     port map (
      Q(8 downto 0) => count_value_i(8 downto 0),
      \count_value_i_reg[6]_0\ => \^full\,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wr_pntr_plus1_pf_carry => wr_pntr_plus1_pf_carry,
      wrst_busy => wrst_busy
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\
     port map (
      dest_clk => wr_clk,
      dest_out_bin(9 downto 0) => rd_pntr_wr_cdc_dc(9 downto 0),
      src_clk => rd_clk,
      src_in_bin(9 downto 0) => src_in_bin00_out(9 downto 0)
    );
\gen_cdc_pntr.rd_pntr_cdc_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
     port map (
      dest_clk => wr_clk,
      dest_out_bin(8 downto 0) => rd_pntr_wr_cdc(8 downto 0),
      src_clk => rd_clk,
      src_in_bin(8 downto 0) => rd_pntr_ext(8 downto 0)
    );
\gen_cdc_pntr.rpw_gray_reg\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec
     port map (
      D(8 downto 0) => rd_pntr_wr_cdc(8 downto 0),
      Q(8 downto 0) => rd_pntr_wr(8 downto 0),
      almost_full => \^almost_full\,
      d_out_reg => \gen_cdc_pntr.rpw_gray_reg_n_10\,
      \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg\ => \gen_cdc_pntr.rpw_gray_reg_n_0\,
      \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0\ => xpm_fifo_rst_inst_n_7,
      \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1\ => rst_d1_inst_n_2,
      \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_i_2_0\(8 downto 0) => count_value_i(8 downto 0),
      \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_2_0\(8 downto 0) => wr_pntr_plus1_pf(9 downto 1),
      \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3_0\(8) => wrpp2_inst_n_0,
      \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3_0\(7) => wrpp2_inst_n_1,
      \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3_0\(6) => wrpp2_inst_n_2,
      \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3_0\(5) => wrpp2_inst_n_3,
      \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3_0\(4) => wrpp2_inst_n_4,
      \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3_0\(3) => wrpp2_inst_n_5,
      \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3_0\(2) => wrpp2_inst_n_6,
      \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3_0\(1) => wrpp2_inst_n_7,
      \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3_0\(0) => wrpp2_inst_n_8,
      rst => rst,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_pntr_plus1_pf_carry => wr_pntr_plus1_pf_carry,
      wrst_busy => wrst_busy
    );
\gen_cdc_pntr.rpw_gray_reg_dc\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0\
     port map (
      D(9 downto 0) => rd_pntr_wr_cdc_dc(9 downto 0),
      Q(9) => \gen_cdc_pntr.rpw_gray_reg_dc_n_0\,
      Q(8) => \gen_cdc_pntr.rpw_gray_reg_dc_n_1\,
      Q(7) => \gen_cdc_pntr.rpw_gray_reg_dc_n_2\,
      Q(6) => \gen_cdc_pntr.rpw_gray_reg_dc_n_3\,
      Q(5) => \gen_cdc_pntr.rpw_gray_reg_dc_n_4\,
      Q(4) => \gen_cdc_pntr.rpw_gray_reg_dc_n_5\,
      Q(3) => \gen_cdc_pntr.rpw_gray_reg_dc_n_6\,
      Q(2) => \gen_cdc_pntr.rpw_gray_reg_dc_n_7\,
      Q(1) => \gen_cdc_pntr.rpw_gray_reg_dc_n_8\,
      Q(0) => \gen_cdc_pntr.rpw_gray_reg_dc_n_9\,
      wr_clk => wr_clk,
      wrst_busy => wrst_busy
    );
\gen_cdc_pntr.wpr_gray_reg\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_5
     port map (
      D(8 downto 0) => wr_pntr_rd_cdc(8 downto 0),
      Q(8) => \gen_cdc_pntr.wpr_gray_reg_n_1\,
      Q(7) => \gen_cdc_pntr.wpr_gray_reg_n_2\,
      Q(6) => \gen_cdc_pntr.wpr_gray_reg_n_3\,
      Q(5) => \gen_cdc_pntr.wpr_gray_reg_n_4\,
      Q(4) => \gen_cdc_pntr.wpr_gray_reg_n_5\,
      Q(3) => \gen_cdc_pntr.wpr_gray_reg_n_6\,
      Q(2) => \gen_cdc_pntr.wpr_gray_reg_n_7\,
      Q(1) => \gen_cdc_pntr.wpr_gray_reg_n_8\,
      Q(0) => \gen_cdc_pntr.wpr_gray_reg_n_9\,
      S(0) => \gen_cdc_pntr.wpr_gray_reg_n_0\,
      \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]\(3) => rd_pntr_ext(8),
      \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]\(2 downto 0) => rd_pntr_ext(5 downto 3),
      rd_clk => rd_clk,
      \reg_out_i_reg[0]_0\ => \^rd_rst_busy\,
      \reg_out_i_reg[8]_0\(0) => \gen_cdc_pntr.wpr_gray_reg_n_10\
    );
\gen_cdc_pntr.wpr_gray_reg_dc\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_6\
     port map (
      D(8 downto 0) => \grdc.diff_wr_rd_pntr_rdc\(9 downto 1),
      DI(1) => rdp_inst_n_13,
      DI(0) => \gen_fwft.rdpp1_inst_n_2\,
      Q(8) => \gen_cdc_pntr.wpr_gray_reg_dc_n_0\,
      Q(7) => \gen_cdc_pntr.wpr_gray_reg_dc_n_1\,
      Q(6) => \gen_cdc_pntr.wpr_gray_reg_dc_n_2\,
      Q(5) => \gen_cdc_pntr.wpr_gray_reg_dc_n_3\,
      Q(4) => \gen_cdc_pntr.wpr_gray_reg_dc_n_4\,
      Q(3) => \gen_cdc_pntr.wpr_gray_reg_dc_n_5\,
      Q(2) => \gen_cdc_pntr.wpr_gray_reg_dc_n_6\,
      Q(1) => \gen_cdc_pntr.wpr_gray_reg_dc_n_7\,
      Q(0) => \gen_cdc_pntr.wpr_gray_reg_dc_n_8\,
      S(2) => rdp_inst_n_33,
      S(1) => \gen_fwft.rdpp1_inst_n_0\,
      S(0) => \gen_fwft.rdpp1_inst_n_1\,
      \grdc.rd_data_count_i_reg[3]\ => \gen_fwft.rdpp1_inst_n_3\,
      \grdc.rd_data_count_i_reg[7]\(3) => rdp_inst_n_34,
      \grdc.rd_data_count_i_reg[7]\(2) => rdp_inst_n_35,
      \grdc.rd_data_count_i_reg[7]\(1) => rdp_inst_n_36,
      \grdc.rd_data_count_i_reg[7]\(0) => rdp_inst_n_37,
      \grdc.rd_data_count_i_reg[9]\(8) => rdp_inst_n_0,
      \grdc.rd_data_count_i_reg[9]\(7 downto 0) => rd_pntr_ext(8 downto 1),
      \grdc.rd_data_count_i_reg[9]_0\(0) => rdp_inst_n_38,
      rd_clk => rd_clk,
      \reg_out_i_reg[9]_0\ => \^rd_rst_busy\,
      \reg_out_i_reg[9]_1\(9 downto 0) => wr_pntr_rd_cdc_dc(9 downto 0)
    );
\gen_cdc_pntr.wr_pntr_cdc_dc_inst\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\
     port map (
      dest_clk => rd_clk,
      dest_out_bin(9 downto 0) => wr_pntr_rd_cdc_dc(9 downto 0),
      src_clk => wr_clk,
      src_in_bin(9 downto 0) => wr_pntr_ext(9 downto 0)
    );
\gen_cdc_pntr.wr_pntr_cdc_inst\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\
     port map (
      dest_clk => rd_clk,
      dest_out_bin(8 downto 0) => wr_pntr_rd_cdc(8 downto 0),
      src_clk => wr_clk,
      src_in_bin(8 downto 0) => wr_pntr_ext(8 downto 0)
    );
\gen_fwft.empty_fwft_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AF80"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => rd_en,
      I2 => curr_fwft_state(0),
      I3 => \^empty\,
      O => data_valid_fwft1
    );
\gen_fwft.empty_fwft_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => data_valid_fwft1,
      Q => \^empty\,
      S => \^rd_rst_busy\
    );
\gen_fwft.gae_fwft.aempty_fwft_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A888EAAA"
    )
        port map (
      I0 => \^almost_empty\,
      I1 => ram_empty_i,
      I2 => curr_fwft_state(1),
      I3 => rd_en,
      I4 => curr_fwft_state(0),
      O => aempty_fwft_i0
    );
\gen_fwft.gae_fwft.aempty_fwft_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => aempty_fwft_i0,
      Q => \^almost_empty\,
      S => \^rd_rst_busy\
    );
\gen_fwft.gdvld_fwft.data_valid_fwft_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"15DD"
    )
        port map (
      I0 => \^empty\,
      I1 => curr_fwft_state(0),
      I2 => rd_en,
      I3 => curr_fwft_state(1),
      O => \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\
    );
\gen_fwft.gdvld_fwft.data_valid_fwft_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\,
      Q => data_valid,
      R => \^rd_rst_busy\
    );
\gen_fwft.rdpp1_inst\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1\
     port map (
      DI(0) => \gen_fwft.rdpp1_inst_n_2\,
      Q(1) => \gen_cdc_pntr.wpr_gray_reg_dc_n_7\,
      Q(0) => \gen_cdc_pntr.wpr_gray_reg_dc_n_8\,
      S(1) => \gen_fwft.rdpp1_inst_n_0\,
      S(0) => \gen_fwft.rdpp1_inst_n_1\,
      \count_value_i_reg[0]_0\ => \gen_fwft.rdpp1_inst_n_4\,
      \count_value_i_reg[1]_0\ => \gen_fwft.rdpp1_inst_n_3\,
      \count_value_i_reg[1]_1\ => \^rd_rst_busy\,
      \count_value_i_reg[1]_2\(1 downto 0) => curr_fwft_state(1 downto 0),
      \grdc.rd_data_count_i_reg[3]\(1 downto 0) => rd_pntr_ext(1 downto 0),
      ram_empty_i => ram_empty_i,
      rd_clk => rd_clk,
      rd_en => rd_en
    );
\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_cdc_pntr.rpw_gray_reg_n_0\,
      Q => \^almost_full\,
      S => wrst_busy
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_cdc_pntr.rpw_gray_reg_n_10\,
      Q => \^full\,
      S => wrst_busy
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AABA"
    )
        port map (
      I0 => ram_empty_i,
      I1 => rd_en,
      I2 => curr_fwft_state(1),
      I3 => curr_fwft_state(0),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_5_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(0),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(1),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(2),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(3),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(4),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[4]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(5),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[5]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(6),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[6]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(7),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[7]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(8),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[8]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \^prog_empty\,
      I1 => \^empty\,
      I2 => \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2_n_0\,
      I3 => \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_3_n_0\,
      O => \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0\
    );
\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0]\,
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1]\,
      I2 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2]\,
      I3 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3]\,
      O => \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2_n_0\
    );
\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[4]\,
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[7]\,
      I2 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[8]\,
      I3 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[5]\,
      I4 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[6]\,
      O => \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_3_n_0\
    );
\gen_pf_ic_rc.gpe_ic.prog_empty_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0\,
      Q => \^prog_empty\,
      S => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(4),
      Q => diff_pntr_pf_q(4),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(5),
      Q => diff_pntr_pf_q(5),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(6),
      Q => diff_pntr_pf_q(6),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(7),
      Q => diff_pntr_pf_q(7),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(8),
      Q => diff_pntr_pf_q(8),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(9),
      Q => diff_pntr_pf_q(9),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.prog_full_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => diff_pntr_pf_q(6),
      I1 => diff_pntr_pf_q(5),
      I2 => diff_pntr_pf_q(9),
      I3 => diff_pntr_pf_q(4),
      I4 => diff_pntr_pf_q(7),
      I5 => diff_pntr_pf_q(8),
      O => \gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_n_0\
    );
\gen_pf_ic_rc.gpf_ic.prog_full_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rst_d1_inst_n_1,
      Q => \^prog_full\,
      S => wrst_busy
    );
\gen_pf_ic_rc.ram_empty_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => ram_empty_i0,
      Q => ram_empty_i,
      S => \^rd_rst_busy\
    );
\gen_sdpram.xpm_memory_base_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base
     port map (
      addra(8 downto 0) => wr_pntr_ext(8 downto 0),
      addrb(8 downto 0) => rd_pntr_ext(8 downto 0),
      clka => wr_clk,
      clkb => rd_clk,
      dbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\,
      dbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\,
      dina(35 downto 0) => din(35 downto 0),
      dinb(35 downto 0) => B"000000000000000000000000000000000000",
      douta(35 downto 0) => \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\(35 downto 0),
      doutb(35 downto 0) => dout(35 downto 0),
      ena => wr_pntr_plus1_pf_carry,
      enb => ram_rd_en_i,
      injectdbiterra => '0',
      injectdbiterrb => '0',
      injectsbiterra => '0',
      injectsbiterrb => '0',
      regcea => '0',
      regceb => \gen_fwft.ram_regout_en\,
      rsta => '0',
      rstb => \^rd_rst_busy\,
      sbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\,
      sbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\,
      sleep => sleep,
      wea(0) => '0',
      web(0) => '0'
    );
\gen_sdpram.xpm_memory_base_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4A"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => rd_en,
      I2 => curr_fwft_state(1),
      O => \gen_fwft.ram_regout_en\
    );
\gof.overflow_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => overflow_i0,
      Q => overflow,
      R => '0'
    );
\grdc.rd_data_count_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(1),
      Q => rd_data_count(0),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(2),
      Q => rd_data_count(1),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(3),
      Q => rd_data_count(2),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(4),
      Q => rd_data_count(3),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(5),
      Q => rd_data_count(4),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(6),
      Q => rd_data_count(5),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(7),
      Q => rd_data_count(6),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(8),
      Q => rd_data_count(7),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(9),
      Q => rd_data_count(8),
      R => \grdc.rd_data_count_i0\
    );
\guf.underflow_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => underflow_i0,
      Q => underflow,
      R => '0'
    );
\gwack.wr_ack_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => xpm_fifo_rst_inst_n_2,
      Q => wr_ack,
      R => '0'
    );
\gwdc.wr_data_count_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(1),
      Q => wr_data_count(0),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(2),
      Q => wr_data_count(1),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(3),
      Q => wr_data_count(2),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(4),
      Q => wr_data_count(3),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(5),
      Q => wr_data_count(4),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(6),
      Q => wr_data_count(5),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(7),
      Q => wr_data_count(6),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(8),
      Q => wr_data_count(7),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(9),
      Q => wr_data_count(8),
      R => wrst_busy
    );
rdp_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2\
     port map (
      CO(0) => going_empty0,
      D(8 downto 0) => diff_pntr_pe(8 downto 0),
      DI(0) => rdp_inst_n_13,
      E(0) => ram_rd_en_i,
      Q(9) => rdp_inst_n_0,
      Q(8 downto 0) => rd_pntr_ext(8 downto 0),
      S(0) => \gen_cdc_pntr.wpr_gray_reg_n_0\,
      \count_value_i_reg[2]_0\(0) => rdp_inst_n_33,
      \count_value_i_reg[6]_0\(3) => rdp_inst_n_34,
      \count_value_i_reg[6]_0\(2) => rdp_inst_n_35,
      \count_value_i_reg[6]_0\(1) => rdp_inst_n_36,
      \count_value_i_reg[6]_0\(0) => rdp_inst_n_37,
      \count_value_i_reg[7]_0\(0) => rdp_inst_n_38,
      \count_value_i_reg[9]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      \count_value_i_reg[9]_1\ => \^rd_rst_busy\,
      \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_0\ => \gen_fwft.rdpp1_inst_n_4\,
      \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]\(0) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_5_n_0\,
      \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]\(0) => \gen_cdc_pntr.wpr_gray_reg_n_10\,
      \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(8) => \gen_cdc_pntr.wpr_gray_reg_n_1\,
      \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(7) => \gen_cdc_pntr.wpr_gray_reg_n_2\,
      \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(6) => \gen_cdc_pntr.wpr_gray_reg_n_3\,
      \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(5) => \gen_cdc_pntr.wpr_gray_reg_n_4\,
      \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(4) => \gen_cdc_pntr.wpr_gray_reg_n_5\,
      \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(3) => \gen_cdc_pntr.wpr_gray_reg_n_6\,
      \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(2) => \gen_cdc_pntr.wpr_gray_reg_n_7\,
      \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(1) => \gen_cdc_pntr.wpr_gray_reg_n_8\,
      \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(0) => \gen_cdc_pntr.wpr_gray_reg_n_9\,
      \grdc.rd_data_count_i_reg[3]\ => \gen_fwft.rdpp1_inst_n_3\,
      \grdc.rd_data_count_i_reg[9]\(7) => \gen_cdc_pntr.wpr_gray_reg_dc_n_0\,
      \grdc.rd_data_count_i_reg[9]\(6) => \gen_cdc_pntr.wpr_gray_reg_dc_n_1\,
      \grdc.rd_data_count_i_reg[9]\(5) => \gen_cdc_pntr.wpr_gray_reg_dc_n_2\,
      \grdc.rd_data_count_i_reg[9]\(4) => \gen_cdc_pntr.wpr_gray_reg_dc_n_3\,
      \grdc.rd_data_count_i_reg[9]\(3) => \gen_cdc_pntr.wpr_gray_reg_dc_n_4\,
      \grdc.rd_data_count_i_reg[9]\(2) => \gen_cdc_pntr.wpr_gray_reg_dc_n_5\,
      \grdc.rd_data_count_i_reg[9]\(1) => \gen_cdc_pntr.wpr_gray_reg_dc_n_6\,
      \grdc.rd_data_count_i_reg[9]\(0) => \gen_cdc_pntr.wpr_gray_reg_dc_n_7\,
      p_1_in => p_1_in,
      ram_empty_i => ram_empty_i,
      ram_empty_i0 => ram_empty_i0,
      rd_clk => rd_clk,
      rd_en => rd_en,
      src_in_bin(9 downto 0) => src_in_bin00_out(9 downto 0)
    );
rdpp1_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3\
     port map (
      CO(0) => going_empty0,
      E(0) => ram_rd_en_i,
      Q(8) => \gen_cdc_pntr.wpr_gray_reg_n_1\,
      Q(7) => \gen_cdc_pntr.wpr_gray_reg_n_2\,
      Q(6) => \gen_cdc_pntr.wpr_gray_reg_n_3\,
      Q(5) => \gen_cdc_pntr.wpr_gray_reg_n_4\,
      Q(4) => \gen_cdc_pntr.wpr_gray_reg_n_5\,
      Q(3) => \gen_cdc_pntr.wpr_gray_reg_n_6\,
      Q(2) => \gen_cdc_pntr.wpr_gray_reg_n_7\,
      Q(1) => \gen_cdc_pntr.wpr_gray_reg_n_8\,
      Q(0) => \gen_cdc_pntr.wpr_gray_reg_n_9\,
      \count_value_i_reg[0]_0\ => \^rd_rst_busy\,
      \count_value_i_reg[1]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      p_1_in => p_1_in,
      rd_clk => rd_clk,
      rd_en => rd_en
    );
rst_d1_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit
     port map (
      d_out_reg_0 => rst_d1_inst_n_1,
      \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\ => rst_d1_inst_n_2,
      \gen_pf_ic_rc.gpf_ic.prog_full_i_reg\ => \gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_n_0\,
      \gof.overflow_i_reg\ => \^full\,
      overflow_i0 => overflow_i0,
      prog_full => \^prog_full\,
      rst => rst,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wrst_busy => wrst_busy
    );
wrp_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_7\
     port map (
      D(8 downto 0) => \gwdc.diff_wr_rd_pntr1_out\(9 downto 1),
      Q(9 downto 0) => wr_pntr_ext(9 downto 0),
      \count_value_i_reg[6]_0\ => \^full\,
      \gwdc.wr_data_count_i_reg[9]\(9) => \gen_cdc_pntr.rpw_gray_reg_dc_n_0\,
      \gwdc.wr_data_count_i_reg[9]\(8) => \gen_cdc_pntr.rpw_gray_reg_dc_n_1\,
      \gwdc.wr_data_count_i_reg[9]\(7) => \gen_cdc_pntr.rpw_gray_reg_dc_n_2\,
      \gwdc.wr_data_count_i_reg[9]\(6) => \gen_cdc_pntr.rpw_gray_reg_dc_n_3\,
      \gwdc.wr_data_count_i_reg[9]\(5) => \gen_cdc_pntr.rpw_gray_reg_dc_n_4\,
      \gwdc.wr_data_count_i_reg[9]\(4) => \gen_cdc_pntr.rpw_gray_reg_dc_n_5\,
      \gwdc.wr_data_count_i_reg[9]\(3) => \gen_cdc_pntr.rpw_gray_reg_dc_n_6\,
      \gwdc.wr_data_count_i_reg[9]\(2) => \gen_cdc_pntr.rpw_gray_reg_dc_n_7\,
      \gwdc.wr_data_count_i_reg[9]\(1) => \gen_cdc_pntr.rpw_gray_reg_dc_n_8\,
      \gwdc.wr_data_count_i_reg[9]\(0) => \gen_cdc_pntr.rpw_gray_reg_dc_n_9\,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wr_pntr_plus1_pf_carry => wr_pntr_plus1_pf_carry,
      wrst_busy => wrst_busy
    );
wrpp1_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_8\
     port map (
      D(5 downto 0) => diff_pntr_pf_q0(9 downto 4),
      Q(8 downto 0) => wr_pntr_plus1_pf(9 downto 1),
      \count_value_i_reg[6]_0\ => \^full\,
      \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]\(8 downto 0) => rd_pntr_wr(8 downto 0),
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wr_pntr_plus1_pf_carry => wr_pntr_plus1_pf_carry,
      wrst_busy => wrst_busy
    );
wrpp2_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\
     port map (
      Q(8) => wrpp2_inst_n_0,
      Q(7) => wrpp2_inst_n_1,
      Q(6) => wrpp2_inst_n_2,
      Q(5) => wrpp2_inst_n_3,
      Q(4) => wrpp2_inst_n_4,
      Q(3) => wrpp2_inst_n_5,
      Q(2) => wrpp2_inst_n_6,
      Q(1) => wrpp2_inst_n_7,
      Q(0) => wrpp2_inst_n_8,
      \count_value_i_reg[6]_0\ => \^full\,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wr_pntr_plus1_pf_carry => wr_pntr_plus1_pf_carry,
      wrst_busy => wrst_busy
    );
xpm_fifo_rst_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst
     port map (
      Q(1 downto 0) => curr_fwft_state(1 downto 0),
      SR(0) => \grdc.rd_data_count_i0\,
      d_out_reg => xpm_fifo_rst_inst_n_2,
      \gen_rst_ic.fifo_rd_rst_ic_reg_0\ => \^rd_rst_busy\,
      \gen_rst_ic.wr_rst_busy_ic_reg_0\ => xpm_fifo_rst_inst_n_7,
      \guf.underflow_i_reg\ => \^empty\,
      \gwack.wr_ack_i_reg\ => \^full\,
      rd_clk => rd_clk,
      rd_en => rd_en,
      rst => rst,
      rst_d1 => rst_d1,
      underflow_i0 => underflow_i0,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wr_pntr_plus1_pf_carry => wr_pntr_plus1_pf_carry,
      wr_rst_busy => wr_rst_busy,
      wrst_busy => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif is
  port (
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ : out STD_LOGIC;
    Bus_RNW_reg : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    \state1__2\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wdata_1_sp_1 : out STD_LOGIC;
    s_axi_wdata_0_sp_1 : out STD_LOGIC;
    \s_axi_wdata[3]\ : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 26 downto 0 );
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ : out STD_LOGIC;
    bus2ip_wrce : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \TFT_iic_reg_data_reg[7]\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\ : out STD_LOGIC;
    TFT_dps_reg_reg : out STD_LOGIC;
    TFT_intr_en_reg : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ : out STD_LOGIC;
    bus2ip_wrce_or : out STD_LOGIC;
    bus2ip_rdce_or : out STD_LOGIC;
    Bus_RNW_reg_reg : out STD_LOGIC;
    cs_ce_clr : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    bus2ip_sreset : in STD_LOGIC;
    s_axi_rvalid_i_reg : in STD_LOGIC;
    s_axi_bvalid_i_reg : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awready : in STD_LOGIC;
    bus2ip_rdce_d1 : in STD_LOGIC;
    bus2ip_rdce_d2 : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 2 downto 0 );
    tft_dps : in STD_LOGIC;
    prmry_in : in STD_LOGIC;
    TFT_intr_en_reg_0 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rdata_i_reg[31]\ : in STD_LOGIC_VECTOR ( 26 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TFT_status_reg_reg : in STD_LOGIC;
    \IP2Bus_Data_reg[28]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    TFT_status_reg : in STD_LOGIC;
    \IP2Bus_Data_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    TFT_iic_xfer : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif is
  signal s_axi_wdata_0_sn_1 : STD_LOGIC;
  signal s_axi_wdata_1_sn_1 : STD_LOGIC;
begin
  s_axi_wdata_0_sp_1 <= s_axi_wdata_0_sn_1;
  s_axi_wdata_1_sp_1 <= s_axi_wdata_1_sn_1;
I_SLAVE_ATTACHMENT: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment
     port map (
      Bus_RNW_reg_reg => Bus_RNW_reg,
      Bus_RNW_reg_reg_0 => Bus_RNW_reg_reg,
      D(0) => D(0),
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\ => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\ => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\,
      \IP2Bus_Data_reg[0]\(0) => \IP2Bus_Data_reg[0]\(0),
      \IP2Bus_Data_reg[28]\(2 downto 0) => \IP2Bus_Data_reg[28]\(2 downto 0),
      Q(2 downto 0) => Q(2 downto 0),
      TFT_dps_reg_reg => TFT_dps_reg_reg,
      \TFT_iic_reg_data_reg[7]\ => \TFT_iic_reg_data_reg[7]\,
      TFT_iic_xfer => TFT_iic_xfer,
      TFT_intr_en_reg => TFT_intr_en_reg,
      TFT_intr_en_reg_0 => TFT_intr_en_reg_0,
      TFT_status_reg => TFT_status_reg,
      TFT_status_reg_reg => TFT_status_reg_reg,
      bus2ip_rdce_d1 => bus2ip_rdce_d1,
      bus2ip_rdce_d2 => bus2ip_rdce_d2,
      bus2ip_rdce_or => bus2ip_rdce_or,
      bus2ip_sreset => bus2ip_sreset,
      bus2ip_wrce(1 downto 0) => bus2ip_wrce(1 downto 0),
      bus2ip_wrce_or => bus2ip_wrce_or,
      cs_ce_clr => cs_ce_clr,
      prmry_in => prmry_in,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(1 downto 0) => s_axi_araddr(1 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(1 downto 0) => s_axi_awaddr(1 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_bvalid_i_reg_0 => s_axi_bvalid_i_reg,
      s_axi_rdata(26 downto 0) => s_axi_rdata(26 downto 0),
      \s_axi_rdata_i_reg[31]_0\(26 downto 0) => \s_axi_rdata_i_reg[31]\(26 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_rvalid_i_reg_0 => s_axi_rvalid_i_reg,
      s_axi_wdata(2 downto 0) => s_axi_wdata(2 downto 0),
      \s_axi_wdata[3]\ => \s_axi_wdata[3]\,
      s_axi_wdata_0_sp_1 => s_axi_wdata_0_sn_1,
      s_axi_wdata_1_sp_1 => s_axi_wdata_1_sn_1,
      s_axi_wvalid => s_axi_wvalid,
      \state1__2\ => \state1__2\,
      tft_dps => tft_dps
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_fifo is
  port (
    sig_init_reg_reg_0 : out STD_LOGIC;
    sig_init_reg_reg_1 : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    sig_s_ready_out_reg : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_fifo;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_fifo is
  signal \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg2\ : STD_LOGIC;
  signal sig_inhibit_rdy_n : STD_LOGIC;
  signal sig_inhibit_rdy_n_i_1_n_0 : STD_LOGIC;
  signal sig_init_done : STD_LOGIC;
  signal sig_init_done_i_1_n_0 : STD_LOGIC;
  signal \^sig_init_reg_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of sig_init_done_i_1 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of sig_s_ready_dup_i_1 : label is "soft_lutpair29";
begin
  sig_init_reg_reg_0 <= \^sig_init_reg_reg_0\;
\USE_SRL_FIFO.I_SYNC_FIFO\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl_fifo_f
     port map (
      m_axi_aclk => m_axi_aclk,
      m_axi_bready => m_axi_bready,
      m_axi_bvalid => m_axi_bvalid,
      \out\ => \out\,
      sig_inhibit_rdy_n => sig_inhibit_rdy_n
    );
sig_inhibit_rdy_n_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sig_init_done,
      I1 => sig_inhibit_rdy_n,
      O => sig_inhibit_rdy_n_i_1_n_0
    );
sig_inhibit_rdy_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_inhibit_rdy_n_i_1_n_0,
      Q => sig_inhibit_rdy_n,
      R => \out\
    );
sig_init_done_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \out\,
      I1 => \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg2\,
      I2 => \^sig_init_reg_reg_0\,
      I3 => sig_init_done,
      O => sig_init_done_i_1_n_0
    );
sig_init_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_init_done_i_1_n_0,
      Q => sig_init_done,
      R => '0'
    );
sig_init_reg2_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \^sig_init_reg_reg_0\,
      Q => \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg2\,
      S => \out\
    );
sig_init_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \out\,
      Q => \^sig_init_reg_reg_0\,
      R => '0'
    );
sig_s_ready_dup_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sig_init_reg_reg_0\,
      I1 => sig_s_ready_out_reg,
      O => sig_init_reg_reg_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 35 downto 0 );
    full : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 8 downto 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 35 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 8 downto 0 );
    underflow : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute CDC_SYNC_STAGES : integer;
  attribute CDC_SYNC_STAGES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 2;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is "0";
  attribute ECC_MODE : string;
  attribute ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is "no_ecc";
  attribute EN_ADV_FEATURE_ASYNC : string;
  attribute EN_ADV_FEATURE_ASYNC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is "16'b0001111100011111";
  attribute FIFO_MEMORY_TYPE : string;
  attribute FIFO_MEMORY_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is "block";
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 0;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 512;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 1;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 10;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 0;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 2;
  attribute P_READ_MODE : integer;
  attribute P_READ_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 1;
  attribute P_WAKEUP_TIME : integer;
  attribute P_WAKEUP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 2;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 9;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 36;
  attribute READ_MODE : string;
  attribute READ_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is "fwft";
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is "1F1F";
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 0;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 36;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 9;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is "TRUE";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async is
  signal \<const0>\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED\ : STD_LOGIC;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute DOUT_RESET_VALUE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "0";
  attribute ECC_MODE_integer : integer;
  attribute ECC_MODE_integer of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "16'b0001111100011111";
  attribute EN_AE : string;
  attribute EN_AE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_AF : string;
  attribute EN_AF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_DVLD : string;
  attribute EN_DVLD of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_OF : string;
  attribute EN_OF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_PE : string;
  attribute EN_PE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_PF : string;
  attribute EN_PF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_RDC : string;
  attribute EN_RDC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_UF : string;
  attribute EN_UF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_WACK : string;
  attribute EN_WACK of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_WDC : string;
  attribute EN_WDC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute FIFO_MEMORY_TYPE_integer : integer;
  attribute FIFO_MEMORY_TYPE_integer of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 512;
  attribute FIFO_READ_LATENCY of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 18432;
  attribute FIFO_WRITE_DEPTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 512;
  attribute FULL_RESET_VALUE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 8;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 507;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 8;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 507;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 7;
  attribute PROG_EMPTY_THRESH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 10;
  attribute PROG_FULL_THRESH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 10;
  attribute RD_DATA_COUNT_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 9;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 10;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 9;
  attribute READ_DATA_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 36;
  attribute READ_MODE_integer : integer;
  attribute READ_MODE_integer of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute RELATED_CLOCKS of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute USE_ADV_FEATURES of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1F1F";
  attribute VERSION : integer;
  attribute VERSION of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute WAKEUP_TIME of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute WRITE_DATA_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 36;
  attribute WR_DATA_COUNT_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 9;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 10;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 9;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 9;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 6;
  attribute XPM_MODULE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 3;
  attribute invalid : integer;
  attribute invalid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute stage1_valid : integer;
  attribute stage1_valid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
begin
  dbiterr <= \<const0>\;
  sbiterr <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gnuram_async_fifo.xpm_fifo_base_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base
     port map (
      almost_empty => almost_empty,
      almost_full => almost_full,
      data_valid => data_valid,
      dbiterr => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED\,
      din(35 downto 0) => din(35 downto 0),
      dout(35 downto 0) => dout(35 downto 0),
      empty => empty,
      full => full,
      full_n => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED\,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => overflow,
      prog_empty => prog_empty,
      prog_full => prog_full,
      rd_clk => rd_clk,
      rd_data_count(8 downto 0) => rd_data_count(8 downto 0),
      rd_en => rd_en,
      rd_rst_busy => rd_rst_busy,
      rst => rst,
      sbiterr => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED\,
      sleep => sleep,
      underflow => underflow,
      wr_ack => wr_ack,
      wr_clk => wr_clk,
      wr_data_count(8 downto 0) => wr_data_count(8 downto 0),
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_async_fifo_fg is
  port (
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \gen_wr_a.gen_word_narrow.mem_reg\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \gen_wr_a.gen_word_narrow.mem_reg_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tft_rst : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 35 downto 0 );
    sys_tft_clk : in STD_LOGIC;
    \guf.underflow_i_reg\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_async_fifo_fg;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_async_fifo_fg is
  signal fifo_out_data : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal full : STD_LOGIC;
  signal wr_rst_busy : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_10\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_11\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_13\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_14\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_2\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_3\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_4\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_5\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_51\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_53\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_54\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_55\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_56\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_57\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_58\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_59\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_6\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_60\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_61\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_62\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_64\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_65\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_7\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_8\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_9\ : STD_LOGIC;
  signal \NLW_xpm_fifo_instance.xpm_fifo_async_inst_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_xpm_fifo_instance.xpm_fifo_async_inst_rd_rst_busy_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_xpm_fifo_instance.xpm_fifo_async_inst_sbiterr_UNCONNECTED\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \BRAM_TFT_B_data[0]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \BRAM_TFT_B_data[1]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \BRAM_TFT_B_data[2]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \BRAM_TFT_B_data[3]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \BRAM_TFT_B_data[4]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \BRAM_TFT_B_data[5]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \BRAM_TFT_G_data[0]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \BRAM_TFT_G_data[1]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \BRAM_TFT_G_data[2]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \BRAM_TFT_G_data[3]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \BRAM_TFT_G_data[4]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \BRAM_TFT_G_data[5]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \BRAM_TFT_R_data[0]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \BRAM_TFT_R_data[1]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \BRAM_TFT_R_data[2]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \BRAM_TFT_R_data[3]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \BRAM_TFT_R_data[4]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \BRAM_TFT_R_data[5]_i_1\ : label is "soft_lutpair86";
  attribute CDC_SYNC_STAGES : integer;
  attribute CDC_SYNC_STAGES of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 2;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is "0";
  attribute ECC_MODE : string;
  attribute ECC_MODE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is "no_ecc";
  attribute EN_ADV_FEATURE_ASYNC : string;
  attribute EN_ADV_FEATURE_ASYNC of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is "16'b0001111100011111";
  attribute FIFO_MEMORY_TYPE : string;
  attribute FIFO_MEMORY_TYPE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is "block";
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 0;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 512;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 1;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 10;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 0;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 2;
  attribute P_READ_MODE : integer;
  attribute P_READ_MODE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 1;
  attribute P_WAKEUP_TIME : integer;
  attribute P_WAKEUP_TIME of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 2;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 9;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 36;
  attribute READ_MODE : string;
  attribute READ_MODE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is "fwft";
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is "1F1F";
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 0;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 36;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 9;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is "TRUE";
begin
\BRAM_TFT_B_data[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(18),
      I1 => \guf.underflow_i_reg\(0),
      I2 => fifo_out_data(0),
      O => \gen_wr_a.gen_word_narrow.mem_reg_0\(0)
    );
\BRAM_TFT_B_data[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(19),
      I1 => \guf.underflow_i_reg\(0),
      I2 => fifo_out_data(1),
      O => \gen_wr_a.gen_word_narrow.mem_reg_0\(1)
    );
\BRAM_TFT_B_data[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(20),
      I1 => \guf.underflow_i_reg\(0),
      I2 => fifo_out_data(2),
      O => \gen_wr_a.gen_word_narrow.mem_reg_0\(2)
    );
\BRAM_TFT_B_data[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(21),
      I1 => \guf.underflow_i_reg\(0),
      I2 => fifo_out_data(3),
      O => \gen_wr_a.gen_word_narrow.mem_reg_0\(3)
    );
\BRAM_TFT_B_data[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(22),
      I1 => \guf.underflow_i_reg\(0),
      I2 => fifo_out_data(4),
      O => \gen_wr_a.gen_word_narrow.mem_reg_0\(4)
    );
\BRAM_TFT_B_data[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(23),
      I1 => \guf.underflow_i_reg\(0),
      I2 => fifo_out_data(5),
      O => \gen_wr_a.gen_word_narrow.mem_reg_0\(5)
    );
\BRAM_TFT_G_data[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(24),
      I1 => \guf.underflow_i_reg\(0),
      I2 => fifo_out_data(6),
      O => \gen_wr_a.gen_word_narrow.mem_reg\(0)
    );
\BRAM_TFT_G_data[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(25),
      I1 => \guf.underflow_i_reg\(0),
      I2 => fifo_out_data(7),
      O => \gen_wr_a.gen_word_narrow.mem_reg\(1)
    );
\BRAM_TFT_G_data[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(26),
      I1 => \guf.underflow_i_reg\(0),
      I2 => fifo_out_data(8),
      O => \gen_wr_a.gen_word_narrow.mem_reg\(2)
    );
\BRAM_TFT_G_data[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(27),
      I1 => \guf.underflow_i_reg\(0),
      I2 => fifo_out_data(9),
      O => \gen_wr_a.gen_word_narrow.mem_reg\(3)
    );
\BRAM_TFT_G_data[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(28),
      I1 => \guf.underflow_i_reg\(0),
      I2 => fifo_out_data(10),
      O => \gen_wr_a.gen_word_narrow.mem_reg\(4)
    );
\BRAM_TFT_G_data[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(29),
      I1 => \guf.underflow_i_reg\(0),
      I2 => fifo_out_data(11),
      O => \gen_wr_a.gen_word_narrow.mem_reg\(5)
    );
\BRAM_TFT_R_data[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(30),
      I1 => \guf.underflow_i_reg\(0),
      I2 => fifo_out_data(12),
      O => D(0)
    );
\BRAM_TFT_R_data[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(31),
      I1 => \guf.underflow_i_reg\(0),
      I2 => fifo_out_data(13),
      O => D(1)
    );
\BRAM_TFT_R_data[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(32),
      I1 => \guf.underflow_i_reg\(0),
      I2 => fifo_out_data(14),
      O => D(2)
    );
\BRAM_TFT_R_data[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(33),
      I1 => \guf.underflow_i_reg\(0),
      I2 => fifo_out_data(15),
      O => D(3)
    );
\BRAM_TFT_R_data[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(34),
      I1 => \guf.underflow_i_reg\(0),
      I2 => fifo_out_data(16),
      O => D(4)
    );
\BRAM_TFT_R_data[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(35),
      I1 => \guf.underflow_i_reg\(0),
      I2 => fifo_out_data(17),
      O => D(5)
    );
\xpm_fifo_instance.xpm_fifo_async_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async
     port map (
      almost_empty => \xpm_fifo_instance.xpm_fifo_async_inst_n_64\,
      almost_full => \xpm_fifo_instance.xpm_fifo_async_inst_n_13\,
      data_valid => \xpm_fifo_instance.xpm_fifo_async_inst_n_65\,
      dbiterr => \NLW_xpm_fifo_instance.xpm_fifo_async_inst_dbiterr_UNCONNECTED\,
      din(35 downto 18) => Q(17 downto 0),
      din(17 downto 0) => Q(35 downto 18),
      dout(35 downto 0) => fifo_out_data(35 downto 0),
      empty => \xpm_fifo_instance.xpm_fifo_async_inst_n_51\,
      full => full,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => \xpm_fifo_instance.xpm_fifo_async_inst_n_11\,
      prog_empty => \NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_empty_UNCONNECTED\,
      prog_full => \NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_full_UNCONNECTED\,
      rd_clk => sys_tft_clk,
      rd_data_count(8) => \xpm_fifo_instance.xpm_fifo_async_inst_n_53\,
      rd_data_count(7) => \xpm_fifo_instance.xpm_fifo_async_inst_n_54\,
      rd_data_count(6) => \xpm_fifo_instance.xpm_fifo_async_inst_n_55\,
      rd_data_count(5) => \xpm_fifo_instance.xpm_fifo_async_inst_n_56\,
      rd_data_count(4) => \xpm_fifo_instance.xpm_fifo_async_inst_n_57\,
      rd_data_count(3) => \xpm_fifo_instance.xpm_fifo_async_inst_n_58\,
      rd_data_count(2) => \xpm_fifo_instance.xpm_fifo_async_inst_n_59\,
      rd_data_count(1) => \xpm_fifo_instance.xpm_fifo_async_inst_n_60\,
      rd_data_count(0) => \xpm_fifo_instance.xpm_fifo_async_inst_n_61\,
      rd_en => \guf.underflow_i_reg\(0),
      rd_rst_busy => \NLW_xpm_fifo_instance.xpm_fifo_async_inst_rd_rst_busy_UNCONNECTED\,
      rst => tft_rst,
      sbiterr => \NLW_xpm_fifo_instance.xpm_fifo_async_inst_sbiterr_UNCONNECTED\,
      sleep => '0',
      underflow => \xpm_fifo_instance.xpm_fifo_async_inst_n_62\,
      wr_ack => \xpm_fifo_instance.xpm_fifo_async_inst_n_14\,
      wr_clk => m_axi_aclk,
      wr_data_count(8) => \xpm_fifo_instance.xpm_fifo_async_inst_n_2\,
      wr_data_count(7) => \xpm_fifo_instance.xpm_fifo_async_inst_n_3\,
      wr_data_count(6) => \xpm_fifo_instance.xpm_fifo_async_inst_n_4\,
      wr_data_count(5) => \xpm_fifo_instance.xpm_fifo_async_inst_n_5\,
      wr_data_count(4) => \xpm_fifo_instance.xpm_fifo_async_inst_n_6\,
      wr_data_count(3) => \xpm_fifo_instance.xpm_fifo_async_inst_n_7\,
      wr_data_count(2) => \xpm_fifo_instance.xpm_fifo_async_inst_n_8\,
      wr_data_count(1) => \xpm_fifo_instance.xpm_fifo_async_inst_n_9\,
      wr_data_count(0) => \xpm_fifo_instance.xpm_fifo_async_inst_n_10\,
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_wr_status_cntl is
  port (
    sig_init_reg : out STD_LOGIC;
    sig_init_reg_reg : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    sig_s_ready_out_reg : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_wr_status_cntl;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_wr_status_cntl is
begin
I_WRESP_STATUS_FIFO: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_fifo
     port map (
      m_axi_aclk => m_axi_aclk,
      m_axi_bready => m_axi_bready,
      m_axi_bvalid => m_axi_bvalid,
      \out\ => \out\,
      sig_init_reg_reg_0 => sig_init_reg,
      sig_init_reg_reg_1 => sig_init_reg_reg,
      sig_s_ready_out_reg => sig_s_ready_out_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_rd_wr_cntlr is
  port (
    sig_m_valid_dup_reg : out STD_LOGIC;
    sig_m_valid_out_reg : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_arsize : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    sig_rsc2stat_status_valid : out STD_LOGIC;
    sig_rd_sts_interr_reg_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_doing_read_reg : out STD_LOGIC;
    sig_pcc2data_cmd_valid : out STD_LOGIC;
    sig_rd2llink_strm_tlast : out STD_LOGIC;
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_pcc_taking_command : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    sig_rd_sts_slverr_reg_reg : out STD_LOGIC;
    \sig_data_reg_out_reg[23]\ : out STD_LOGIC_VECTOR ( 17 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bready : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    sig_rd_sts_tag_reg0 : in STD_LOGIC;
    sig_cmd2all_doing_read : in STD_LOGIC;
    sig_cmd_full_reg_reg : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_cmd2pcc_cmd_valid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 24 downto 0 );
    sig_llink2rd_allow_addr_req : in STD_LOGIC;
    \sig_xfer_len_reg_reg[0]\ : in STD_LOGIC;
    m_axi_rlast : in STD_LOGIC;
    sig_next_cmd_cmplt_reg_reg : in STD_LOGIC;
    sig_status_reg_empty : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    sig_m_valid_out_reg_0 : in STD_LOGIC;
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wready : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 17 downto 0 );
    sig_cmd_mst_length : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_cmd_type_req : in STD_LOGIC;
    sig_push_status1_out : in STD_LOGIC;
    md_error : in STD_LOGIC;
    sig_llink2cmd_rd_busy : in STD_LOGIC;
    IP2Bus_MstRd_dst_rdy : in STD_LOGIC;
    \sig_data_reg_out_reg[23]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_rd_wr_cntlr;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_rd_wr_cntlr is
  signal \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg\ : STD_LOGIC;
  signal I_MSTR_PCC_n_12 : STD_LOGIC;
  signal I_MSTR_PCC_n_13 : STD_LOGIC;
  signal I_MSTR_PCC_n_14 : STD_LOGIC;
  signal I_MSTR_PCC_n_15 : STD_LOGIC;
  signal I_MSTR_PCC_n_16 : STD_LOGIC;
  signal I_MSTR_PCC_n_17 : STD_LOGIC;
  signal I_MSTR_PCC_n_18 : STD_LOGIC;
  signal I_MSTR_PCC_n_19 : STD_LOGIC;
  signal I_MSTR_PCC_n_20 : STD_LOGIC;
  signal I_MSTR_PCC_n_21 : STD_LOGIC;
  signal I_MSTR_PCC_n_22 : STD_LOGIC;
  signal I_MSTR_PCC_n_23 : STD_LOGIC;
  signal I_MSTR_PCC_n_24 : STD_LOGIC;
  signal I_MSTR_PCC_n_25 : STD_LOGIC;
  signal I_MSTR_PCC_n_26 : STD_LOGIC;
  signal I_MSTR_PCC_n_27 : STD_LOGIC;
  signal I_MSTR_PCC_n_36 : STD_LOGIC;
  signal I_MSTR_PCC_n_42 : STD_LOGIC;
  signal I_MSTR_PCC_n_43 : STD_LOGIC;
  signal I_MSTR_PCC_n_44 : STD_LOGIC;
  signal I_MSTR_PCC_n_45 : STD_LOGIC;
  signal I_MSTR_PCC_n_46 : STD_LOGIC;
  signal I_MSTR_PCC_n_47 : STD_LOGIC;
  signal I_MSTR_PCC_n_48 : STD_LOGIC;
  signal I_MSTR_PCC_n_49 : STD_LOGIC;
  signal I_MSTR_PCC_n_50 : STD_LOGIC;
  signal I_MSTR_PCC_n_51 : STD_LOGIC;
  signal I_MSTR_PCC_n_52 : STD_LOGIC;
  signal I_MSTR_PCC_n_53 : STD_LOGIC;
  signal I_RD_DATA_CNTL_n_10 : STD_LOGIC;
  signal I_RD_DATA_CNTL_n_2 : STD_LOGIC;
  signal I_RD_DATA_CNTL_n_3 : STD_LOGIC;
  signal I_WR_STATUS_CNTLR_n_1 : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_0\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_1\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_2\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_3\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_4\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_5\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_6\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_7\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_0\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_1\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_2\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_3\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_4\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_5\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_6\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_7\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_1\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_2\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_3\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_4\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_5\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_6\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_7\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_0\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_1\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_2\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_3\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_4\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_5\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_6\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_7\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal p_0_in5_in : STD_LOGIC;
  signal sig_addr2data_addr_posted : STD_LOGIC;
  signal sig_addr2stat_cmd_fifo_empty : STD_LOGIC;
  signal sig_btt_cntr : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \sig_btt_cntr[11]_i_2_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[11]_i_3_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[11]_i_4_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[3]_i_2_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[3]_i_3_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[3]_i_4_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[3]_i_5_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[3]_i_6_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[3]_i_7_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[3]_i_8_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[3]_i_9_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[7]_i_2_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[7]_i_3_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[7]_i_4_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[7]_i_6_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[7]_i_7_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[7]_i_8_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \sig_btt_cntr_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \sig_btt_cntr_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \sig_btt_cntr_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \sig_btt_cntr_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \sig_btt_cntr_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \sig_btt_cntr_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \sig_btt_cntr_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \sig_btt_cntr_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \sig_btt_cntr_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \sig_btt_cntr_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \sig_btt_cntr_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \sig_btt_cntr_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \sig_btt_cntr_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \sig_btt_cntr_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \sig_btt_cntr_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \sig_btt_cntr_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \sig_btt_cntr_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \sig_btt_cntr_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \sig_btt_cntr_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \sig_btt_cntr_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal sig_input_reg_empty : STD_LOGIC;
  signal sig_next_calc_error_reg : STD_LOGIC;
  signal sig_pcc2addr_addr : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal sig_pcc2addr_burst : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sig_pcc2addr_cmd_valid : STD_LOGIC;
  signal sig_pcc2all_calc_err : STD_LOGIC;
  signal sig_pcc2data_calc_error : STD_LOGIC;
  signal sig_pcc2data_cmd_cmplt : STD_LOGIC;
  signal \^sig_pcc2data_cmd_valid\ : STD_LOGIC;
  signal sig_pcc2data_dre_src_align : STD_LOGIC;
  signal sig_pcc2data_eof : STD_LOGIC;
  signal sig_pcc2data_len : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sig_pcc2data_saddr_lsb : STD_LOGIC_VECTOR ( 1 to 1 );
  signal sig_pcc2data_sequential : STD_LOGIC;
  signal sig_push_input_reg16_out : STD_LOGIC;
  signal sig_push_rd_sts_reg : STD_LOGIC;
  signal sig_rd_addr_valid_reg0 : STD_LOGIC;
  signal sig_rd_sts_decerr_reg0 : STD_LOGIC;
  signal sig_rd_sts_interr_reg0 : STD_LOGIC;
  signal \^sig_rd_sts_interr_reg_reg\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sig_rd_sts_slverr_reg0 : STD_LOGIC;
  signal sig_rdc2pcc_cmd_ready : STD_LOGIC;
  signal sig_rdc2rdskid_tlast : STD_LOGIC;
  signal sig_rdskid2rdc_tready : STD_LOGIC;
  signal sig_rsc2rdc_ready : STD_LOGIC;
  signal sig_rsc2stat_status : STD_LOGIC_VECTOR ( 6 downto 5 );
  signal \^sig_rsc2stat_status_valid\ : STD_LOGIC;
  signal sig_sm_halt_reg : STD_LOGIC;
  signal \NLW_i_/i_/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sig_btt_cntr_reg[11]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  sig_pcc2data_cmd_valid <= \^sig_pcc2data_cmd_valid\;
  sig_rd_sts_interr_reg_reg(0) <= \^sig_rd_sts_interr_reg_reg\(0);
  sig_rsc2stat_status_valid <= \^sig_rsc2stat_status_valid\;
I_ADDR_CNTL: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_addr_cntl
     port map (
      Q(31 downto 2) => sig_pcc2addr_addr(31 downto 2),
      Q(1) => sig_pcc2data_saddr_lsb(1),
      Q(0) => sig_pcc2data_dre_src_align,
      m_axi_aclk => m_axi_aclk,
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arburst(0) => m_axi_arburst(0),
      m_axi_arlen(3 downto 0) => m_axi_arlen(3 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arsize(0) => m_axi_arsize(0),
      m_axi_arvalid => m_axi_arvalid,
      \out\ => sig_addr2data_addr_posted,
      sig_addr2stat_cmd_fifo_empty => sig_addr2stat_cmd_fifo_empty,
      sig_cmd2all_doing_read => sig_cmd2all_doing_read,
      sig_llink2rd_allow_addr_req => sig_llink2rd_allow_addr_req,
      \sig_next_len_reg_reg[3]_0\(3 downto 0) => sig_pcc2data_len(3 downto 0),
      sig_pcc2addr_burst(0) => sig_pcc2addr_burst(0),
      sig_pcc2addr_cmd_valid => sig_pcc2addr_cmd_valid,
      sig_pcc2data_calc_error => sig_pcc2data_calc_error,
      sig_posted_to_axi_reg_0 => \out\,
      sig_rd_addr_valid_reg0 => sig_rd_addr_valid_reg0
    );
I_MSTR_PCC: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_pcc
     port map (
      E(0) => E(0),
      \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[6]_0\(6) => I_MSTR_PCC_n_47,
      \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[6]_0\(5) => I_MSTR_PCC_n_48,
      \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[6]_0\(4) => I_MSTR_PCC_n_49,
      \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[6]_0\(3) => I_MSTR_PCC_n_50,
      \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[6]_0\(2) => I_MSTR_PCC_n_51,
      \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[6]_0\(1) => I_MSTR_PCC_n_52,
      \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[6]_0\(0) => I_MSTR_PCC_n_53,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0\(3) => \i_/i_/i__carry__1_n_4\,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0\(2) => \i_/i_/i__carry__1_n_5\,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0\(1) => \i_/i_/i__carry__1_n_6\,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0\(0) => \i_/i_/i__carry__1_n_7\,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_0\(3) => \i_/i_/i__carry__2_n_4\,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_0\(2) => \i_/i_/i__carry__2_n_5\,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_0\(1) => \i_/i_/i__carry__2_n_6\,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_0\(0) => \i_/i_/i__carry__2_n_7\,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0\(3) => \i_/i_/i__carry__0_n_4\,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0\(2) => \i_/i_/i__carry__0_n_5\,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0\(1) => \i_/i_/i__carry__0_n_6\,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0\(0) => \i_/i_/i__carry__0_n_7\,
      O(3) => \i_/i_/i__carry_n_4\,
      O(2) => \i_/i_/i__carry_n_5\,
      O(1) => \i_/i_/i__carry_n_6\,
      O(0) => \i_/i_/i__carry_n_7\,
      Q(24 downto 0) => Q(24 downto 0),
      S(3) => I_MSTR_PCC_n_12,
      S(2) => I_MSTR_PCC_n_13,
      S(1) => I_MSTR_PCC_n_14,
      S(0) => I_MSTR_PCC_n_15,
      SR(0) => SR(0),
      m_axi_aclk => m_axi_aclk,
      \out\ => \out\,
      sig_addr2stat_cmd_fifo_empty => sig_addr2stat_cmd_fifo_empty,
      \sig_btt_cntr_reg[11]_0\(11) => \sig_btt_cntr_reg[11]_i_1_n_4\,
      \sig_btt_cntr_reg[11]_0\(10) => \sig_btt_cntr_reg[11]_i_1_n_5\,
      \sig_btt_cntr_reg[11]_0\(9) => \sig_btt_cntr_reg[11]_i_1_n_6\,
      \sig_btt_cntr_reg[11]_0\(8) => \sig_btt_cntr_reg[11]_i_1_n_7\,
      \sig_btt_cntr_reg[11]_0\(7) => \sig_btt_cntr_reg[7]_i_1_n_4\,
      \sig_btt_cntr_reg[11]_0\(6) => \sig_btt_cntr_reg[7]_i_1_n_5\,
      \sig_btt_cntr_reg[11]_0\(5) => \sig_btt_cntr_reg[7]_i_1_n_6\,
      \sig_btt_cntr_reg[11]_0\(4) => \sig_btt_cntr_reg[7]_i_1_n_7\,
      \sig_btt_cntr_reg[11]_0\(3) => \sig_btt_cntr_reg[3]_i_1_n_4\,
      \sig_btt_cntr_reg[11]_0\(2) => \sig_btt_cntr_reg[3]_i_1_n_5\,
      \sig_btt_cntr_reg[11]_0\(1) => \sig_btt_cntr_reg[3]_i_1_n_6\,
      \sig_btt_cntr_reg[11]_0\(0) => \sig_btt_cntr_reg[3]_i_1_n_7\,
      \sig_btt_cntr_reg[6]_0\(6 downto 0) => sig_btt_cntr(6 downto 0),
      \sig_btt_cntr_reg[7]_0\(0) => I_MSTR_PCC_n_42,
      sig_calc_error_reg_reg_0(3) => I_MSTR_PCC_n_43,
      sig_calc_error_reg_reg_0(2) => I_MSTR_PCC_n_44,
      sig_calc_error_reg_reg_0(1) => I_MSTR_PCC_n_45,
      sig_calc_error_reg_reg_0(0) => I_MSTR_PCC_n_46,
      sig_cmd2all_doing_read => sig_cmd2all_doing_read,
      sig_cmd2data_valid_reg_0 => \^sig_pcc2data_cmd_valid\,
      sig_cmd2pcc_cmd_valid => sig_cmd2pcc_cmd_valid,
      sig_cmd_full_reg_reg => sig_cmd_full_reg_reg,
      \sig_cmd_mst_addr_reg[23]\(3) => I_MSTR_PCC_n_16,
      \sig_cmd_mst_addr_reg[23]\(2) => I_MSTR_PCC_n_17,
      \sig_cmd_mst_addr_reg[23]\(1) => I_MSTR_PCC_n_18,
      \sig_cmd_mst_addr_reg[23]\(0) => I_MSTR_PCC_n_19,
      \sig_cmd_mst_addr_reg[27]\(3) => I_MSTR_PCC_n_20,
      \sig_cmd_mst_addr_reg[27]\(2) => I_MSTR_PCC_n_21,
      \sig_cmd_mst_addr_reg[27]\(1) => I_MSTR_PCC_n_22,
      \sig_cmd_mst_addr_reg[27]\(0) => I_MSTR_PCC_n_23,
      \sig_cmd_mst_addr_reg[31]\(3) => I_MSTR_PCC_n_24,
      \sig_cmd_mst_addr_reg[31]\(2) => I_MSTR_PCC_n_25,
      \sig_cmd_mst_addr_reg[31]\(1) => I_MSTR_PCC_n_26,
      \sig_cmd_mst_addr_reg[31]\(0) => I_MSTR_PCC_n_27,
      sig_cmd_mst_length(0) => sig_cmd_mst_length(0),
      sig_cmd_type_req => sig_cmd_type_req,
      sig_input_reg_empty => sig_input_reg_empty,
      sig_llink2rd_allow_addr_req => sig_llink2rd_allow_addr_req,
      sig_next_calc_error_reg => sig_next_calc_error_reg,
      sig_pcc2addr_burst(0) => sig_pcc2addr_burst(0),
      sig_pcc2addr_cmd_valid => sig_pcc2addr_cmd_valid,
      sig_pcc2all_calc_err => sig_pcc2all_calc_err,
      sig_pcc2data_calc_error => sig_pcc2data_calc_error,
      sig_pcc2data_cmd_cmplt => sig_pcc2data_cmd_cmplt,
      sig_pcc2data_eof => sig_pcc2data_eof,
      sig_pcc2data_sequential => sig_pcc2data_sequential,
      sig_pcc_taking_command => sig_pcc_taking_command,
      sig_push_input_reg16_out => sig_push_input_reg16_out,
      sig_rd_addr_valid_reg0 => sig_rd_addr_valid_reg0,
      sig_rdc2pcc_cmd_ready => sig_rdc2pcc_cmd_ready,
      sig_sm_halt_reg => sig_sm_halt_reg,
      \sig_xfer_addr_reg_reg[31]_0\(31 downto 2) => sig_pcc2addr_addr(31 downto 2),
      \sig_xfer_addr_reg_reg[31]_0\(1) => sig_pcc2data_saddr_lsb(1),
      \sig_xfer_addr_reg_reg[31]_0\(0) => sig_pcc2data_dre_src_align,
      \sig_xfer_len_reg_reg[0]_0\ => I_RD_DATA_CNTL_n_2,
      \sig_xfer_len_reg_reg[0]_1\ => I_RD_DATA_CNTL_n_10,
      \sig_xfer_len_reg_reg[0]_2\ => \sig_xfer_len_reg_reg[0]\,
      \sig_xfer_len_reg_reg[3]_0\ => I_MSTR_PCC_n_36,
      \sig_xfer_len_reg_reg[3]_1\(3 downto 0) => sig_pcc2data_len(3 downto 0)
    );
I_RD_DATA_CNTL: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_rddata_cntl
     port map (
      m_axi_aclk => m_axi_aclk,
      m_axi_rlast => m_axi_rlast,
      m_axi_rready => m_axi_rready,
      m_axi_rready_0 => sig_rdskid2rdc_tready,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid => m_axi_rvalid,
      m_axi_rvalid_0 => I_RD_DATA_CNTL_n_3,
      \out\ => \out\,
      \sig_addr_posted_cntr_reg[2]_0\ => sig_addr2data_addr_posted,
      sig_cmd2all_doing_read => sig_cmd2all_doing_read,
      \sig_dbeat_cntr_reg[3]_0\(3 downto 0) => sig_pcc2data_len(3 downto 0),
      sig_dqual_reg_empty_reg_0 => I_RD_DATA_CNTL_n_10,
      sig_last_dbeat_reg_0 => I_RD_DATA_CNTL_n_2,
      sig_last_dbeat_reg_1 => I_MSTR_PCC_n_36,
      sig_next_calc_error_reg => sig_next_calc_error_reg,
      sig_next_cmd_cmplt_reg_reg_0 => sig_next_cmd_cmplt_reg_reg,
      sig_pcc2data_calc_error => sig_pcc2data_calc_error,
      sig_pcc2data_cmd_cmplt => sig_pcc2data_cmd_cmplt,
      sig_pcc2data_cmd_valid => \^sig_pcc2data_cmd_valid\,
      sig_pcc2data_eof => sig_pcc2data_eof,
      sig_pcc2data_sequential => sig_pcc2data_sequential,
      sig_push_rd_sts_reg => sig_push_rd_sts_reg,
      sig_rd_sts_decerr_reg0 => sig_rd_sts_decerr_reg0,
      sig_rd_sts_interr_reg0 => sig_rd_sts_interr_reg0,
      sig_rd_sts_interr_reg_reg(0) => \^sig_rd_sts_interr_reg_reg\(0),
      sig_rd_sts_slverr_reg0 => sig_rd_sts_slverr_reg0,
      sig_rdc2pcc_cmd_ready => sig_rdc2pcc_cmd_ready,
      sig_rdc2rdskid_tlast => sig_rdc2rdskid_tlast,
      sig_rsc2rdc_ready => sig_rsc2rdc_ready,
      sig_rsc2stat_status(1 downto 0) => sig_rsc2stat_status(6 downto 5),
      sig_rsc2stat_status_valid => \^sig_rsc2stat_status_valid\,
      sig_status_reg_empty => sig_status_reg_empty
    );
I_RD_STATUS_CNTLR: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_rd_status_cntl
     port map (
      m_axi_aclk => m_axi_aclk,
      md_error => md_error,
      sig_push_rd_sts_reg => sig_push_rd_sts_reg,
      sig_push_status1_out => sig_push_status1_out,
      sig_rd_sts_decerr_reg0 => sig_rd_sts_decerr_reg0,
      sig_rd_sts_interr_reg0 => sig_rd_sts_interr_reg0,
      sig_rd_sts_interr_reg_reg_0(0) => \^sig_rd_sts_interr_reg_reg\(0),
      sig_rd_sts_slverr_reg0 => sig_rd_sts_slverr_reg0,
      sig_rd_sts_slverr_reg_reg_0 => sig_rd_sts_slverr_reg_reg,
      sig_rd_sts_tag_reg0 => sig_rd_sts_tag_reg0,
      sig_rsc2rdc_ready => sig_rsc2rdc_ready,
      sig_rsc2stat_status(1 downto 0) => sig_rsc2stat_status(6 downto 5),
      sig_rsc2stat_status_valid => \^sig_rsc2stat_status_valid\
    );
I_READ_STREAM_SKID_BUF: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_skid_buf
     port map (
      IP2Bus_MstRd_dst_rdy => IP2Bus_MstRd_dst_rdy,
      m_axi_aclk => m_axi_aclk,
      m_axi_rdata(17 downto 0) => m_axi_rdata(17 downto 0),
      \out\ => sig_rdskid2rdc_tready,
      \sig_data_reg_out_reg[23]_0\(17 downto 0) => \sig_data_reg_out_reg[23]\(17 downto 0),
      \sig_data_reg_out_reg[23]_1\(0) => \sig_data_reg_out_reg[23]_0\(0),
      sig_init_reg => \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg\,
      sig_llink2cmd_rd_busy => sig_llink2cmd_rd_busy,
      sig_m_valid_dup_reg_0 => sig_m_valid_dup_reg,
      sig_m_valid_out_reg_0 => sig_m_valid_out_reg,
      sig_m_valid_out_reg_1 => sig_m_valid_out_reg_0,
      sig_rd2llink_strm_tlast => sig_rd2llink_strm_tlast,
      sig_rdc2rdskid_tlast => sig_rdc2rdskid_tlast,
      sig_s_ready_dup_reg_0 => I_RD_DATA_CNTL_n_3,
      sig_s_ready_out_reg_0 => \out\
    );
I_WRITE_MMAP_SKID_BUF: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_skid2mm_buf
     port map (
      m_axi_aclk => m_axi_aclk,
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(0) => m_axi_wstrb(0),
      m_axi_wvalid => m_axi_wvalid,
      \out\ => \out\,
      sig_init_reg => \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg\
    );
I_WRITE_STRM_SKID_BUF: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_skid_buf_9
     port map (
      m_axi_aclk => m_axi_aclk,
      \out\ => p_0_in5_in,
      sig_init_reg => \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg\,
      sig_s_ready_out_reg_0 => \out\,
      sig_s_ready_out_reg_1 => I_WR_STATUS_CNTLR_n_1
    );
I_WR_STATUS_CNTLR: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_wr_status_cntl
     port map (
      m_axi_aclk => m_axi_aclk,
      m_axi_bready => m_axi_bready,
      m_axi_bvalid => m_axi_bvalid,
      \out\ => \out\,
      sig_init_reg => \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg\,
      sig_init_reg_reg => I_WR_STATUS_CNTLR_n_1,
      sig_s_ready_out_reg => p_0_in5_in
    );
\i_/i_/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \i_/i_/i__carry_n_0\,
      CO(2) => \i_/i_/i__carry_n_1\,
      CO(1) => \i_/i_/i__carry_n_2\,
      CO(0) => \i_/i_/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \i__carry_i_1_n_0\,
      O(3) => \i_/i_/i__carry_n_4\,
      O(2) => \i_/i_/i__carry_n_5\,
      O(1) => \i_/i_/i__carry_n_6\,
      O(0) => \i_/i_/i__carry_n_7\,
      S(3) => I_MSTR_PCC_n_12,
      S(2) => I_MSTR_PCC_n_13,
      S(1) => I_MSTR_PCC_n_14,
      S(0) => I_MSTR_PCC_n_15
    );
\i_/i_/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_/i_/i__carry_n_0\,
      CO(3) => \i_/i_/i__carry__0_n_0\,
      CO(2) => \i_/i_/i__carry__0_n_1\,
      CO(1) => \i_/i_/i__carry__0_n_2\,
      CO(0) => \i_/i_/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_/i_/i__carry__0_n_4\,
      O(2) => \i_/i_/i__carry__0_n_5\,
      O(1) => \i_/i_/i__carry__0_n_6\,
      O(0) => \i_/i_/i__carry__0_n_7\,
      S(3) => I_MSTR_PCC_n_16,
      S(2) => I_MSTR_PCC_n_17,
      S(1) => I_MSTR_PCC_n_18,
      S(0) => I_MSTR_PCC_n_19
    );
\i_/i_/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_/i_/i__carry__0_n_0\,
      CO(3) => \i_/i_/i__carry__1_n_0\,
      CO(2) => \i_/i_/i__carry__1_n_1\,
      CO(1) => \i_/i_/i__carry__1_n_2\,
      CO(0) => \i_/i_/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_/i_/i__carry__1_n_4\,
      O(2) => \i_/i_/i__carry__1_n_5\,
      O(1) => \i_/i_/i__carry__1_n_6\,
      O(0) => \i_/i_/i__carry__1_n_7\,
      S(3) => I_MSTR_PCC_n_20,
      S(2) => I_MSTR_PCC_n_21,
      S(1) => I_MSTR_PCC_n_22,
      S(0) => I_MSTR_PCC_n_23
    );
\i_/i_/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_/i_/i__carry__1_n_0\,
      CO(3) => \NLW_i_/i_/i__carry__2_CO_UNCONNECTED\(3),
      CO(2) => \i_/i_/i__carry__2_n_1\,
      CO(1) => \i_/i_/i__carry__2_n_2\,
      CO(0) => \i_/i_/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_/i_/i__carry__2_n_4\,
      O(2) => \i_/i_/i__carry__2_n_5\,
      O(1) => \i_/i_/i__carry__2_n_6\,
      O(0) => \i_/i_/i__carry__2_n_7\,
      S(3) => I_MSTR_PCC_n_24,
      S(2) => I_MSTR_PCC_n_25,
      S(1) => I_MSTR_PCC_n_26,
      S(0) => I_MSTR_PCC_n_27
    );
\i__carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => sig_input_reg_empty,
      I1 => sig_sm_halt_reg,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_pcc2all_calc_err,
      O => \i__carry_i_1_n_0\
    );
\sig_btt_cntr[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => sig_input_reg_empty,
      I1 => sig_sm_halt_reg,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_pcc2all_calc_err,
      O => \sig_btt_cntr[11]_i_2_n_0\
    );
\sig_btt_cntr[11]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => sig_input_reg_empty,
      I1 => sig_sm_halt_reg,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_pcc2all_calc_err,
      O => \sig_btt_cntr[11]_i_3_n_0\
    );
\sig_btt_cntr[11]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => sig_input_reg_empty,
      I1 => sig_sm_halt_reg,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_pcc2all_calc_err,
      O => \sig_btt_cntr[11]_i_4_n_0\
    );
\sig_btt_cntr[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555155"
    )
        port map (
      I0 => I_MSTR_PCC_n_50,
      I1 => sig_input_reg_empty,
      I2 => sig_sm_halt_reg,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_pcc2all_calc_err,
      O => \sig_btt_cntr[3]_i_2_n_0\
    );
\sig_btt_cntr[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555155"
    )
        port map (
      I0 => I_MSTR_PCC_n_51,
      I1 => sig_input_reg_empty,
      I2 => sig_sm_halt_reg,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_pcc2all_calc_err,
      O => \sig_btt_cntr[3]_i_3_n_0\
    );
\sig_btt_cntr[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555155"
    )
        port map (
      I0 => I_MSTR_PCC_n_52,
      I1 => sig_input_reg_empty,
      I2 => sig_sm_halt_reg,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_pcc2all_calc_err,
      O => \sig_btt_cntr[3]_i_4_n_0\
    );
\sig_btt_cntr[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555155"
    )
        port map (
      I0 => I_MSTR_PCC_n_53,
      I1 => sig_input_reg_empty,
      I2 => sig_sm_halt_reg,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_pcc2all_calc_err,
      O => \sig_btt_cntr[3]_i_5_n_0\
    );
\sig_btt_cntr[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA8AAAAA55455555"
    )
        port map (
      I0 => I_MSTR_PCC_n_50,
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_sm_halt_reg,
      I4 => sig_input_reg_empty,
      I5 => sig_btt_cntr(3),
      O => \sig_btt_cntr[3]_i_6_n_0\
    );
\sig_btt_cntr[3]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09F90909"
    )
        port map (
      I0 => I_MSTR_PCC_n_51,
      I1 => sig_btt_cntr(2),
      I2 => sig_push_input_reg16_out,
      I3 => sig_cmd_type_req,
      I4 => sig_cmd_mst_length(0),
      O => \sig_btt_cntr[3]_i_7_n_0\
    );
\sig_btt_cntr[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA8AAAAA55455555"
    )
        port map (
      I0 => I_MSTR_PCC_n_52,
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_sm_halt_reg,
      I4 => sig_input_reg_empty,
      I5 => sig_btt_cntr(1),
      O => \sig_btt_cntr[3]_i_8_n_0\
    );
\sig_btt_cntr[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA8AAAAA55455555"
    )
        port map (
      I0 => I_MSTR_PCC_n_53,
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_sm_halt_reg,
      I4 => sig_input_reg_empty,
      I5 => sig_btt_cntr(0),
      O => \sig_btt_cntr[3]_i_9_n_0\
    );
\sig_btt_cntr[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555155"
    )
        port map (
      I0 => I_MSTR_PCC_n_47,
      I1 => sig_input_reg_empty,
      I2 => sig_sm_halt_reg,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_pcc2all_calc_err,
      O => \sig_btt_cntr[7]_i_2_n_0\
    );
\sig_btt_cntr[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555155"
    )
        port map (
      I0 => I_MSTR_PCC_n_48,
      I1 => sig_input_reg_empty,
      I2 => sig_sm_halt_reg,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_pcc2all_calc_err,
      O => \sig_btt_cntr[7]_i_3_n_0\
    );
\sig_btt_cntr[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555155"
    )
        port map (
      I0 => I_MSTR_PCC_n_49,
      I1 => sig_input_reg_empty,
      I2 => sig_sm_halt_reg,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_pcc2all_calc_err,
      O => \sig_btt_cntr[7]_i_4_n_0\
    );
\sig_btt_cntr[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA8AAAAA55455555"
    )
        port map (
      I0 => I_MSTR_PCC_n_47,
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_sm_halt_reg,
      I4 => sig_input_reg_empty,
      I5 => sig_btt_cntr(6),
      O => \sig_btt_cntr[7]_i_6_n_0\
    );
\sig_btt_cntr[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA8AAAAA55455555"
    )
        port map (
      I0 => I_MSTR_PCC_n_48,
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_sm_halt_reg,
      I4 => sig_input_reg_empty,
      I5 => sig_btt_cntr(5),
      O => \sig_btt_cntr[7]_i_7_n_0\
    );
\sig_btt_cntr[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA8AAAAA55455555"
    )
        port map (
      I0 => I_MSTR_PCC_n_49,
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_sm_halt_reg,
      I4 => sig_input_reg_empty,
      I5 => sig_btt_cntr(4),
      O => \sig_btt_cntr[7]_i_8_n_0\
    );
\sig_btt_cntr_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_btt_cntr_reg[7]_i_1_n_0\,
      CO(3) => \NLW_sig_btt_cntr_reg[11]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \sig_btt_cntr_reg[11]_i_1_n_1\,
      CO(1) => \sig_btt_cntr_reg[11]_i_1_n_2\,
      CO(0) => \sig_btt_cntr_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \sig_btt_cntr[11]_i_2_n_0\,
      DI(1) => \sig_btt_cntr[11]_i_3_n_0\,
      DI(0) => \sig_btt_cntr[11]_i_4_n_0\,
      O(3) => \sig_btt_cntr_reg[11]_i_1_n_4\,
      O(2) => \sig_btt_cntr_reg[11]_i_1_n_5\,
      O(1) => \sig_btt_cntr_reg[11]_i_1_n_6\,
      O(0) => \sig_btt_cntr_reg[11]_i_1_n_7\,
      S(3) => I_MSTR_PCC_n_43,
      S(2) => I_MSTR_PCC_n_44,
      S(1) => I_MSTR_PCC_n_45,
      S(0) => I_MSTR_PCC_n_46
    );
\sig_btt_cntr_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sig_btt_cntr_reg[3]_i_1_n_0\,
      CO(2) => \sig_btt_cntr_reg[3]_i_1_n_1\,
      CO(1) => \sig_btt_cntr_reg[3]_i_1_n_2\,
      CO(0) => \sig_btt_cntr_reg[3]_i_1_n_3\,
      CYINIT => \i__carry_i_1_n_0\,
      DI(3) => \sig_btt_cntr[3]_i_2_n_0\,
      DI(2) => \sig_btt_cntr[3]_i_3_n_0\,
      DI(1) => \sig_btt_cntr[3]_i_4_n_0\,
      DI(0) => \sig_btt_cntr[3]_i_5_n_0\,
      O(3) => \sig_btt_cntr_reg[3]_i_1_n_4\,
      O(2) => \sig_btt_cntr_reg[3]_i_1_n_5\,
      O(1) => \sig_btt_cntr_reg[3]_i_1_n_6\,
      O(0) => \sig_btt_cntr_reg[3]_i_1_n_7\,
      S(3) => \sig_btt_cntr[3]_i_6_n_0\,
      S(2) => \sig_btt_cntr[3]_i_7_n_0\,
      S(1) => \sig_btt_cntr[3]_i_8_n_0\,
      S(0) => \sig_btt_cntr[3]_i_9_n_0\
    );
\sig_btt_cntr_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_btt_cntr_reg[3]_i_1_n_0\,
      CO(3) => \sig_btt_cntr_reg[7]_i_1_n_0\,
      CO(2) => \sig_btt_cntr_reg[7]_i_1_n_1\,
      CO(1) => \sig_btt_cntr_reg[7]_i_1_n_2\,
      CO(0) => \sig_btt_cntr_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => \sig_btt_cntr[7]_i_2_n_0\,
      DI(1) => \sig_btt_cntr[7]_i_3_n_0\,
      DI(0) => \sig_btt_cntr[7]_i_4_n_0\,
      O(3) => \sig_btt_cntr_reg[7]_i_1_n_4\,
      O(2) => \sig_btt_cntr_reg[7]_i_1_n_5\,
      O(1) => \sig_btt_cntr_reg[7]_i_1_n_6\,
      O(0) => \sig_btt_cntr_reg[7]_i_1_n_7\,
      S(3) => I_MSTR_PCC_n_42,
      S(2) => \sig_btt_cntr[7]_i_6_n_0\,
      S(1) => \sig_btt_cntr[7]_i_7_n_0\,
      S(0) => \sig_btt_cntr[7]_i_8_n_0\
    );
sig_doing_read_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_cmd2all_doing_read,
      Q => sig_doing_read_reg,
      R => \out\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft_v2_0_22_line_buffer is
  port (
    \RED_reg[5]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \GREEN_reg[5]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \BLUE_reg[5]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tft_rst : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 35 downto 0 );
    sys_tft_clk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \RED_reg[5]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft_v2_0_22_line_buffer;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft_v2_0_22_line_buffer is
  signal \BRAM_TFT_B_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \BRAM_TFT_B_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \BRAM_TFT_B_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \BRAM_TFT_B_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \BRAM_TFT_B_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \BRAM_TFT_B_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \BRAM_TFT_G_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \BRAM_TFT_G_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \BRAM_TFT_G_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \BRAM_TFT_G_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \BRAM_TFT_G_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \BRAM_TFT_G_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \BRAM_TFT_R_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \BRAM_TFT_R_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \BRAM_TFT_R_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \BRAM_TFT_R_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \BRAM_TFT_R_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \BRAM_TFT_R_data_reg_n_0_[5]\ : STD_LOGIC;
  signal BRAM_TFT_addr : STD_LOGIC_VECTOR ( 0 to 8 );
  signal \BRAM_TFT_addr[0]_i_4_n_0\ : STD_LOGIC;
  signal BRAM_TFT_addr_0 : STD_LOGIC_VECTOR ( 0 to 9 );
  signal \BRAM_TFT_addr_reg_n_0_[9]\ : STD_LOGIC;
  signal RAM_n_0 : STD_LOGIC;
  signal RAM_n_1 : STD_LOGIC;
  signal RAM_n_10 : STD_LOGIC;
  signal RAM_n_11 : STD_LOGIC;
  signal RAM_n_12 : STD_LOGIC;
  signal RAM_n_13 : STD_LOGIC;
  signal RAM_n_14 : STD_LOGIC;
  signal RAM_n_15 : STD_LOGIC;
  signal RAM_n_16 : STD_LOGIC;
  signal RAM_n_17 : STD_LOGIC;
  signal RAM_n_2 : STD_LOGIC;
  signal RAM_n_3 : STD_LOGIC;
  signal RAM_n_4 : STD_LOGIC;
  signal RAM_n_5 : STD_LOGIC;
  signal RAM_n_6 : STD_LOGIC;
  signal RAM_n_7 : STD_LOGIC;
  signal RAM_n_8 : STD_LOGIC;
  signal RAM_n_9 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal tc : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \BRAM_TFT_addr[0]_i_2\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \BRAM_TFT_addr[1]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \BRAM_TFT_addr[2]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \BRAM_TFT_addr[3]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \BRAM_TFT_addr[5]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \BRAM_TFT_addr[6]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \BRAM_TFT_addr[7]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \BRAM_TFT_addr[8]_i_1\ : label is "soft_lutpair98";
begin
\BLUE_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_B_data_reg_n_0_[0]\,
      Q => \BLUE_reg[5]_0\(0),
      R => \RED_reg[5]_1\(0)
    );
\BLUE_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_B_data_reg_n_0_[1]\,
      Q => \BLUE_reg[5]_0\(1),
      R => \RED_reg[5]_1\(0)
    );
\BLUE_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_B_data_reg_n_0_[2]\,
      Q => \BLUE_reg[5]_0\(2),
      R => \RED_reg[5]_1\(0)
    );
\BLUE_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_B_data_reg_n_0_[3]\,
      Q => \BLUE_reg[5]_0\(3),
      R => \RED_reg[5]_1\(0)
    );
\BLUE_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_B_data_reg_n_0_[4]\,
      Q => \BLUE_reg[5]_0\(4),
      R => \RED_reg[5]_1\(0)
    );
\BLUE_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_B_data_reg_n_0_[5]\,
      Q => \BLUE_reg[5]_0\(5),
      R => \RED_reg[5]_1\(0)
    );
\BRAM_TFT_B_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_17,
      Q => \BRAM_TFT_B_data_reg_n_0_[0]\,
      R => tft_rst
    );
\BRAM_TFT_B_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_16,
      Q => \BRAM_TFT_B_data_reg_n_0_[1]\,
      R => tft_rst
    );
\BRAM_TFT_B_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_15,
      Q => \BRAM_TFT_B_data_reg_n_0_[2]\,
      R => tft_rst
    );
\BRAM_TFT_B_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_14,
      Q => \BRAM_TFT_B_data_reg_n_0_[3]\,
      R => tft_rst
    );
\BRAM_TFT_B_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_13,
      Q => \BRAM_TFT_B_data_reg_n_0_[4]\,
      R => tft_rst
    );
\BRAM_TFT_B_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_12,
      Q => \BRAM_TFT_B_data_reg_n_0_[5]\,
      R => tft_rst
    );
\BRAM_TFT_G_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_11,
      Q => \BRAM_TFT_G_data_reg_n_0_[0]\,
      R => tft_rst
    );
\BRAM_TFT_G_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_10,
      Q => \BRAM_TFT_G_data_reg_n_0_[1]\,
      R => tft_rst
    );
\BRAM_TFT_G_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_9,
      Q => \BRAM_TFT_G_data_reg_n_0_[2]\,
      R => tft_rst
    );
\BRAM_TFT_G_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_8,
      Q => \BRAM_TFT_G_data_reg_n_0_[3]\,
      R => tft_rst
    );
\BRAM_TFT_G_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_7,
      Q => \BRAM_TFT_G_data_reg_n_0_[4]\,
      R => tft_rst
    );
\BRAM_TFT_G_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_6,
      Q => \BRAM_TFT_G_data_reg_n_0_[5]\,
      R => tft_rst
    );
\BRAM_TFT_R_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_5,
      Q => \BRAM_TFT_R_data_reg_n_0_[0]\,
      R => tft_rst
    );
\BRAM_TFT_R_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_4,
      Q => \BRAM_TFT_R_data_reg_n_0_[1]\,
      R => tft_rst
    );
\BRAM_TFT_R_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_3,
      Q => \BRAM_TFT_R_data_reg_n_0_[2]\,
      R => tft_rst
    );
\BRAM_TFT_R_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_2,
      Q => \BRAM_TFT_R_data_reg_n_0_[3]\,
      R => tft_rst
    );
\BRAM_TFT_R_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_1,
      Q => \BRAM_TFT_R_data_reg_n_0_[4]\,
      R => tft_rst
    );
\BRAM_TFT_R_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_0,
      Q => \BRAM_TFT_R_data_reg_n_0_[5]\,
      R => tft_rst
    );
\BRAM_TFT_addr[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B4F0F0B0"
    )
        port map (
      I0 => \BRAM_TFT_addr[0]_i_4_n_0\,
      I1 => BRAM_TFT_addr(3),
      I2 => BRAM_TFT_addr(0),
      I3 => BRAM_TFT_addr(1),
      I4 => BRAM_TFT_addr(2),
      O => BRAM_TFT_addr_0(0)
    );
\BRAM_TFT_addr[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => BRAM_TFT_addr(5),
      I1 => BRAM_TFT_addr(7),
      I2 => \BRAM_TFT_addr_reg_n_0_[9]\,
      I3 => BRAM_TFT_addr(8),
      I4 => BRAM_TFT_addr(6),
      I5 => BRAM_TFT_addr(4),
      O => \BRAM_TFT_addr[0]_i_4_n_0\
    );
\BRAM_TFT_addr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => \BRAM_TFT_addr[0]_i_4_n_0\,
      I1 => BRAM_TFT_addr(3),
      I2 => BRAM_TFT_addr(2),
      I3 => BRAM_TFT_addr(1),
      O => BRAM_TFT_addr_0(1)
    );
\BRAM_TFT_addr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBB4404"
    )
        port map (
      I0 => \BRAM_TFT_addr[0]_i_4_n_0\,
      I1 => BRAM_TFT_addr(3),
      I2 => BRAM_TFT_addr(0),
      I3 => BRAM_TFT_addr(1),
      I4 => BRAM_TFT_addr(2),
      O => BRAM_TFT_addr_0(2)
    );
\BRAM_TFT_addr[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \BRAM_TFT_addr[0]_i_4_n_0\,
      I1 => BRAM_TFT_addr(3),
      O => BRAM_TFT_addr_0(3)
    );
\BRAM_TFT_addr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => BRAM_TFT_addr(5),
      I1 => BRAM_TFT_addr(7),
      I2 => \BRAM_TFT_addr_reg_n_0_[9]\,
      I3 => BRAM_TFT_addr(8),
      I4 => BRAM_TFT_addr(6),
      I5 => BRAM_TFT_addr(4),
      O => BRAM_TFT_addr_0(4)
    );
\BRAM_TFT_addr[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => BRAM_TFT_addr(6),
      I1 => BRAM_TFT_addr(8),
      I2 => \BRAM_TFT_addr_reg_n_0_[9]\,
      I3 => BRAM_TFT_addr(7),
      I4 => BRAM_TFT_addr(5),
      O => BRAM_TFT_addr_0(5)
    );
\BRAM_TFT_addr[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => BRAM_TFT_addr(7),
      I1 => \BRAM_TFT_addr_reg_n_0_[9]\,
      I2 => BRAM_TFT_addr(8),
      I3 => BRAM_TFT_addr(6),
      O => BRAM_TFT_addr_0(6)
    );
\BRAM_TFT_addr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => BRAM_TFT_addr(8),
      I1 => \BRAM_TFT_addr_reg_n_0_[9]\,
      I2 => BRAM_TFT_addr(7),
      O => BRAM_TFT_addr_0(7)
    );
\BRAM_TFT_addr[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \BRAM_TFT_addr_reg_n_0_[9]\,
      I1 => BRAM_TFT_addr(8),
      O => BRAM_TFT_addr_0(8)
    );
\BRAM_TFT_addr[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \BRAM_TFT_addr_reg_n_0_[9]\,
      O => BRAM_TFT_addr_0(9)
    );
\BRAM_TFT_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => p_0_in,
      D => BRAM_TFT_addr_0(0),
      Q => BRAM_TFT_addr(0),
      R => SR(0)
    );
\BRAM_TFT_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => p_0_in,
      D => BRAM_TFT_addr_0(1),
      Q => BRAM_TFT_addr(1),
      R => SR(0)
    );
\BRAM_TFT_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => p_0_in,
      D => BRAM_TFT_addr_0(2),
      Q => BRAM_TFT_addr(2),
      R => SR(0)
    );
\BRAM_TFT_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => p_0_in,
      D => BRAM_TFT_addr_0(3),
      Q => BRAM_TFT_addr(3),
      R => SR(0)
    );
\BRAM_TFT_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => p_0_in,
      D => BRAM_TFT_addr_0(4),
      Q => BRAM_TFT_addr(4),
      R => SR(0)
    );
\BRAM_TFT_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => p_0_in,
      D => BRAM_TFT_addr_0(5),
      Q => BRAM_TFT_addr(5),
      R => SR(0)
    );
\BRAM_TFT_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => p_0_in,
      D => BRAM_TFT_addr_0(6),
      Q => BRAM_TFT_addr(6),
      R => SR(0)
    );
\BRAM_TFT_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => p_0_in,
      D => BRAM_TFT_addr_0(7),
      Q => BRAM_TFT_addr(7),
      R => SR(0)
    );
\BRAM_TFT_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => p_0_in,
      D => BRAM_TFT_addr_0(8),
      Q => BRAM_TFT_addr(8),
      R => SR(0)
    );
\BRAM_TFT_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => p_0_in,
      D => BRAM_TFT_addr_0(9),
      Q => \BRAM_TFT_addr_reg_n_0_[9]\,
      R => SR(0)
    );
\GREEN_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_G_data_reg_n_0_[0]\,
      Q => \GREEN_reg[5]_0\(0),
      R => \RED_reg[5]_1\(0)
    );
\GREEN_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_G_data_reg_n_0_[1]\,
      Q => \GREEN_reg[5]_0\(1),
      R => \RED_reg[5]_1\(0)
    );
\GREEN_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_G_data_reg_n_0_[2]\,
      Q => \GREEN_reg[5]_0\(2),
      R => \RED_reg[5]_1\(0)
    );
\GREEN_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_G_data_reg_n_0_[3]\,
      Q => \GREEN_reg[5]_0\(3),
      R => \RED_reg[5]_1\(0)
    );
\GREEN_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_G_data_reg_n_0_[4]\,
      Q => \GREEN_reg[5]_0\(4),
      R => \RED_reg[5]_1\(0)
    );
\GREEN_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_G_data_reg_n_0_[5]\,
      Q => \GREEN_reg[5]_0\(5),
      R => \RED_reg[5]_1\(0)
    );
RAM: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_async_fifo_fg
     port map (
      D(5) => RAM_n_0,
      D(4) => RAM_n_1,
      D(3) => RAM_n_2,
      D(2) => RAM_n_3,
      D(1) => RAM_n_4,
      D(0) => RAM_n_5,
      Q(35 downto 0) => Q(35 downto 0),
      \gen_wr_a.gen_word_narrow.mem_reg\(5) => RAM_n_6,
      \gen_wr_a.gen_word_narrow.mem_reg\(4) => RAM_n_7,
      \gen_wr_a.gen_word_narrow.mem_reg\(3) => RAM_n_8,
      \gen_wr_a.gen_word_narrow.mem_reg\(2) => RAM_n_9,
      \gen_wr_a.gen_word_narrow.mem_reg\(1) => RAM_n_10,
      \gen_wr_a.gen_word_narrow.mem_reg\(0) => RAM_n_11,
      \gen_wr_a.gen_word_narrow.mem_reg_0\(5) => RAM_n_12,
      \gen_wr_a.gen_word_narrow.mem_reg_0\(4) => RAM_n_13,
      \gen_wr_a.gen_word_narrow.mem_reg_0\(3) => RAM_n_14,
      \gen_wr_a.gen_word_narrow.mem_reg_0\(2) => RAM_n_15,
      \gen_wr_a.gen_word_narrow.mem_reg_0\(1) => RAM_n_16,
      \gen_wr_a.gen_word_narrow.mem_reg_0\(0) => RAM_n_17,
      \guf.underflow_i_reg\(0) => \BRAM_TFT_addr_reg_n_0_[9]\,
      m_axi_aclk => m_axi_aclk,
      sys_tft_clk => sys_tft_clk,
      tft_rst => tft_rst,
      wr_en => wr_en
    );
\RED_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_R_data_reg_n_0_[0]\,
      Q => \RED_reg[5]_0\(0),
      R => \RED_reg[5]_1\(0)
    );
\RED_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_R_data_reg_n_0_[1]\,
      Q => \RED_reg[5]_0\(1),
      R => \RED_reg[5]_1\(0)
    );
\RED_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_R_data_reg_n_0_[2]\,
      Q => \RED_reg[5]_0\(2),
      R => \RED_reg[5]_1\(0)
    );
\RED_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_R_data_reg_n_0_[3]\,
      Q => \RED_reg[5]_0\(3),
      R => \RED_reg[5]_1\(0)
    );
\RED_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_R_data_reg_n_0_[4]\,
      Q => \RED_reg[5]_0\(4),
      R => \RED_reg[5]_1\(0)
    );
\RED_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_R_data_reg_n_0_[5]\,
      Q => \RED_reg[5]_0\(5),
      R => \RED_reg[5]_1\(0)
    );
tc_inv_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFBFFFF"
    )
        port map (
      I0 => \BRAM_TFT_addr[0]_i_4_n_0\,
      I1 => BRAM_TFT_addr(3),
      I2 => BRAM_TFT_addr(2),
      I3 => BRAM_TFT_addr(1),
      I4 => BRAM_TFT_addr(0),
      O => tc
    );
tc_reg_inv: unisim.vcomponents.FDSE
     port map (
      C => sys_tft_clk,
      CE => p_0_in,
      D => tc,
      Q => p_0_in,
      S => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst is
  port (
    m_axi_wvalid : out STD_LOGIC;
    m_axi_arsize : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    sig_axi_por2rst_out : out STD_LOGIC;
    sig_rd2llink_strm_tlast : out STD_LOGIC;
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_mst_cmplt : out STD_LOGIC;
    md_error : out STD_LOGIC;
    bus2ip_mst_cmdack : out STD_LOGIC;
    sig_rd_discontinue : out STD_LOGIC;
    sig_llink2cmd_rd_busy : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    sig_llink_busy_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_mstrd_eof_n : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 17 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bready : out STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    sig_llink_reset_reg_reg : in STD_LOGIC;
    ip2bus_mstrd_req : in STD_LOGIC;
    IP2Bus_Mst_Type : in STD_LOGIC;
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    IP2Bus_MstRd_dst_rdy : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    mstr_src_rdy_n : in STD_LOGIC;
    bus2ip_mreset : in STD_LOGIC;
    eof_n : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 17 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 24 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst is
  signal I_CMD_STATUS_MODULE_n_13 : STD_LOGIC;
  signal I_CMD_STATUS_MODULE_n_14 : STD_LOGIC;
  signal I_RD_LLINK_ADAPTER_n_3 : STD_LOGIC;
  signal I_RD_LLINK_ADAPTER_n_7 : STD_LOGIC;
  signal \I_RD_STATUS_CNTLR/sig_rd_sts_tag_reg0\ : STD_LOGIC;
  signal I_RD_WR_CNTRL_MODULE_n_15 : STD_LOGIC;
  signal \I_READ_STREAM_SKID_BUF/p_0_in2_in\ : STD_LOGIC;
  signal \^md_error\ : STD_LOGIC;
  signal sig_cmd2all_doing_read : STD_LOGIC;
  signal sig_cmd2pcc_cmd_valid : STD_LOGIC;
  signal sig_cmd_mst_addr : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal sig_cmd_mst_length : STD_LOGIC_VECTOR ( 7 to 7 );
  signal sig_cmd_mstrd_req0 : STD_LOGIC;
  signal sig_cmd_type_req : STD_LOGIC;
  signal sig_doing_read_reg : STD_LOGIC;
  signal \^sig_llink2cmd_rd_busy\ : STD_LOGIC;
  signal sig_llink2rd_allow_addr_req : STD_LOGIC;
  signal sig_pcc2data_cmd_valid : STD_LOGIC;
  signal sig_pcc_taking_command : STD_LOGIC;
  signal sig_push_cmd_reg : STD_LOGIC;
  signal sig_push_status1_out : STD_LOGIC;
  signal \^sig_rd2llink_strm_tlast\ : STD_LOGIC;
  signal sig_rd2llink_strm_tvalid : STD_LOGIC;
  signal sig_rd_llink_enable : STD_LOGIC;
  signal sig_rdwr2llink_int_err : STD_LOGIC;
  signal sig_rsc2stat_status : STD_LOGIC_VECTOR ( 4 to 4 );
  signal sig_rsc2stat_status_valid : STD_LOGIC;
  signal sig_rst2cmd_stat_reset : STD_LOGIC;
  signal sig_rst2llink_reset : STD_LOGIC;
  signal sig_rst2rdwr_cntlr_reset : STD_LOGIC;
  signal sig_status_reg_empty : STD_LOGIC;
begin
  md_error <= \^md_error\;
  sig_llink2cmd_rd_busy <= \^sig_llink2cmd_rd_busy\;
  sig_rd2llink_strm_tlast <= \^sig_rd2llink_strm_tlast\;
I_CMD_STATUS_MODULE: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_cmd_status
     port map (
      D(24 downto 0) => D(24 downto 0),
      E(0) => sig_push_cmd_reg,
      IP2Bus_Mst_Type => IP2Bus_Mst_Type,
      Q(24 downto 0) => sig_cmd_mst_addr(31 downto 7),
      SR(0) => sig_cmd_mstrd_req0,
      bus2ip_mst_cmdack => bus2ip_mst_cmdack,
      ip2bus_mstrd_req => ip2bus_mstrd_req,
      m_axi_aclk => m_axi_aclk,
      md_error => \^md_error\,
      \out\ => sig_rst2cmd_stat_reset,
      sig_cmd2all_doing_read => sig_cmd2all_doing_read,
      sig_cmd2pcc_cmd_valid => sig_cmd2pcc_cmd_valid,
      sig_cmd_cmplt_reg_reg_0 => bus2ip_mst_cmplt,
      sig_cmd_cmplt_reg_reg_1 => \^sig_llink2cmd_rd_busy\,
      sig_cmd_mst_length(0) => sig_cmd_mst_length(7),
      sig_cmd_type_req => sig_cmd_type_req,
      sig_doing_read_reg => sig_doing_read_reg,
      sig_doing_read_reg_reg_0 => I_CMD_STATUS_MODULE_n_13,
      sig_error_sh_reg_reg_0 => I_RD_WR_CNTRL_MODULE_n_15,
      sig_pcc2data_cmd_valid => sig_pcc2data_cmd_valid,
      sig_pcc_taking_command => sig_pcc_taking_command,
      sig_push_status1_out => sig_push_status1_out,
      sig_rd_llink_enable => sig_rd_llink_enable,
      sig_rd_sts_slverr_reg_reg => sig_rst2rdwr_cntlr_reset,
      sig_rd_sts_tag_reg0 => \I_RD_STATUS_CNTLR/sig_rd_sts_tag_reg0\,
      sig_rdwr2llink_int_err => sig_rdwr2llink_int_err,
      sig_rsc2stat_status(0) => sig_rsc2stat_status(4),
      sig_rsc2stat_status_valid => sig_rsc2stat_status_valid,
      sig_status_reg_empty => sig_status_reg_empty,
      sig_status_reg_empty_reg_0 => I_CMD_STATUS_MODULE_n_14
    );
I_RD_LLINK_ADAPTER: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_rd_llink
     port map (
      E(0) => E(0),
      IP2Bus_MstRd_dst_rdy => IP2Bus_MstRd_dst_rdy,
      IP2Bus_MstRd_dst_rdy_reg(0) => I_RD_LLINK_ADAPTER_n_7,
      bus2ip_mreset => bus2ip_mreset,
      bus2ip_mstrd_eof_n => bus2ip_mstrd_eof_n,
      eof_n => eof_n,
      eof_n_reg => \^sig_rd2llink_strm_tlast\,
      m_axi_aclk => m_axi_aclk,
      mstr_src_rdy_n => mstr_src_rdy_n,
      \out\ => sig_rst2llink_reset,
      sig_cmd2all_doing_read => sig_cmd2all_doing_read,
      \sig_data_reg_out_reg[23]\ => \I_READ_STREAM_SKID_BUF/p_0_in2_in\,
      sig_doing_read_reg => sig_doing_read_reg,
      sig_llink2rd_allow_addr_req => sig_llink2rd_allow_addr_req,
      sig_llink_busy_reg_0 => \^sig_llink2cmd_rd_busy\,
      sig_llink_busy_reg_1 => I_RD_LLINK_ADAPTER_n_3,
      sig_llink_busy_reg_2 => sig_llink_busy_reg,
      sig_llink_busy_reg_3 => sig_rd2llink_strm_tvalid,
      sig_rd_discontinue_reg_0 => sig_rd_discontinue,
      sig_rd_llink_enable => sig_rd_llink_enable,
      sig_rdwr2llink_int_err => sig_rdwr2llink_int_err
    );
I_RD_WR_CNTRL_MODULE: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_rd_wr_cntlr
     port map (
      E(0) => sig_push_cmd_reg,
      IP2Bus_MstRd_dst_rdy => IP2Bus_MstRd_dst_rdy,
      Q(24 downto 0) => sig_cmd_mst_addr(31 downto 7),
      SR(0) => sig_cmd_mstrd_req0,
      m_axi_aclk => m_axi_aclk,
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arburst(0) => m_axi_arburst(0),
      m_axi_arlen(3 downto 0) => m_axi_arlen(3 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arsize(0) => m_axi_arsize(0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_bready => m_axi_bready,
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(17 downto 0) => m_axi_rdata(17 downto 0),
      m_axi_rlast => m_axi_rlast,
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(0) => m_axi_wstrb(0),
      m_axi_wvalid => m_axi_wvalid,
      md_error => \^md_error\,
      \out\ => sig_rst2rdwr_cntlr_reset,
      sig_cmd2all_doing_read => sig_cmd2all_doing_read,
      sig_cmd2pcc_cmd_valid => sig_cmd2pcc_cmd_valid,
      sig_cmd_full_reg_reg => sig_rst2cmd_stat_reset,
      sig_cmd_mst_length(0) => sig_cmd_mst_length(7),
      sig_cmd_type_req => sig_cmd_type_req,
      \sig_data_reg_out_reg[23]\(17 downto 0) => Q(17 downto 0),
      \sig_data_reg_out_reg[23]_0\(0) => I_RD_LLINK_ADAPTER_n_7,
      sig_doing_read_reg => sig_doing_read_reg,
      sig_llink2cmd_rd_busy => \^sig_llink2cmd_rd_busy\,
      sig_llink2rd_allow_addr_req => sig_llink2rd_allow_addr_req,
      sig_m_valid_dup_reg => \I_READ_STREAM_SKID_BUF/p_0_in2_in\,
      sig_m_valid_out_reg => sig_rd2llink_strm_tvalid,
      sig_m_valid_out_reg_0 => I_RD_LLINK_ADAPTER_n_3,
      sig_next_cmd_cmplt_reg_reg => I_CMD_STATUS_MODULE_n_13,
      sig_pcc2data_cmd_valid => sig_pcc2data_cmd_valid,
      sig_pcc_taking_command => sig_pcc_taking_command,
      sig_push_status1_out => sig_push_status1_out,
      sig_rd2llink_strm_tlast => \^sig_rd2llink_strm_tlast\,
      sig_rd_sts_interr_reg_reg(0) => sig_rsc2stat_status(4),
      sig_rd_sts_slverr_reg_reg => I_RD_WR_CNTRL_MODULE_n_15,
      sig_rd_sts_tag_reg0 => \I_RD_STATUS_CNTLR/sig_rd_sts_tag_reg0\,
      sig_rsc2stat_status_valid => sig_rsc2stat_status_valid,
      sig_status_reg_empty => sig_status_reg_empty,
      \sig_xfer_len_reg_reg[0]\ => I_CMD_STATUS_MODULE_n_14
    );
I_RESET_MODULE: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_reset
     port map (
      m_axi_aclk => m_axi_aclk,
      \out\ => sig_rst2cmd_stat_reset,
      sig_axi_por2rst_out => sig_axi_por2rst_out,
      sig_llink_reset_reg_reg_0 => sig_rst2llink_reset,
      sig_llink_reset_reg_reg_1 => sig_llink_reset_reg_reg,
      sig_rdwr_reset_reg_reg_0 => sig_rst2rdwr_cntlr_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft_v2_0_22_tft_controller is
  port (
    tft_vga_clk : out STD_LOGIC;
    tft_vga_r : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tft_vga_g : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tft_vga_b : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tft_hsync : out STD_LOGIC;
    tft_vsync : out STD_LOGIC;
    tft_de : out STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    TFT_iic_xfer : out STD_LOGIC;
    \IP2Bus_Data_reg[0]\ : out STD_LOGIC_VECTOR ( 26 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \TFT_iic_reg_data_reg[4]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    bus2ip_rdce_d1 : out STD_LOGIC;
    bus2ip_rdce_d2 : out STD_LOGIC;
    eof_n : out STD_LOGIC;
    TFT_status_reg : out STD_LOGIC;
    prmry_in : out STD_LOGIC;
    TFT_on_reg_reg : out STD_LOGIC;
    tft_dps : out STD_LOGIC;
    ip2bus_mstrd_req : out STD_LOGIC;
    IP2Bus_Mst_Type : out STD_LOGIC;
    IP2Bus_MstRd_dst_rdy : out STD_LOGIC;
    cs_ce_clr : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : out STD_LOGIC;
    bus2ip_rdce_d1_reg : out STD_LOGIC;
    bus2ip_wrce_d1_reg : out STD_LOGIC;
    s_axi_wdata_0_sp_1 : out STD_LOGIC;
    \tft_base_addr_reg[0]_0\ : out STD_LOGIC_VECTOR ( 24 downto 0 );
    sys_tft_clk : in STD_LOGIC;
    bus2ip_mreset : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    bus2ip_sreset : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    C0 : in STD_LOGIC;
    bus2ip_wrce : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 26 downto 0 );
    \IP2Bus_Data_reg[1]\ : in STD_LOGIC;
    \IP2Bus_Data_reg[16]\ : in STD_LOGIC;
    bus2ip_rdce_or : in STD_LOGIC;
    bus2ip_wrce_or : in STD_LOGIC;
    bus2ip_mstrd_eof_n : in STD_LOGIC;
    TFT_status_reg_reg : in STD_LOGIC;
    TFT_intr_en_reg : in STD_LOGIC;
    TFT_on_reg_reg_0 : in STD_LOGIC;
    TFT_dps_reg_reg : in STD_LOGIC;
    \IP2Bus_Data_reg[0]_0\ : in STD_LOGIC;
    \IP2Bus_Data_reg[28]\ : in STD_LOGIC;
    \IP2Bus_Data_reg[30]\ : in STD_LOGIC;
    \IP2Bus_Data_reg[31]\ : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_rvalid_i_reg : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \state1__2\ : in STD_LOGIC;
    sig_axi_por2rst_out : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    sig_llink2cmd_rd_busy : in STD_LOGIC;
    sig_rd_discontinue : in STD_LOGIC;
    sig_rd2llink_strm_tlast : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_mst_cmdack : in STD_LOGIC;
    bus2ip_mst_cmplt : in STD_LOGIC;
    mstr_src_rdy_n : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_rvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_bvalid : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    \AXI_BRAM_data_i_reg[8]_0\ : in STD_LOGIC_VECTOR ( 35 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft_v2_0_22_tft_controller;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft_v2_0_22_tft_controller is
  signal AXI_BRAM_data_i : STD_LOGIC_VECTOR ( 8 to 61 );
  signal AXI_BRAM_we_i : STD_LOGIC;
  signal AXI_BRAM_we_i_i_1_n_0 : STD_LOGIC;
  signal BLUE_i : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal BRAM_TFT_addr0 : STD_LOGIC;
  signal DE_i : STD_LOGIC;
  signal GET_LINE_SYNC_n_0 : STD_LOGIC;
  signal GET_LINE_SYNC_n_2 : STD_LOGIC;
  signal GREEN_i : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal HSYNC_U2_n_3 : STD_LOGIC;
  signal HSYNC_U2_n_6 : STD_LOGIC;
  signal HSYNC_i : STD_LOGIC;
  signal I2C_done_tft : STD_LOGIC;
  signal \^ip2bus_mstrd_dst_rdy\ : STD_LOGIC;
  signal \^ip2bus_mst_type\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal RED0 : STD_LOGIC;
  signal RED_i : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal TFT_ON_MAXI_SYNC_n_2 : STD_LOGIC;
  signal \^tft_on_reg_reg\ : STD_LOGIC;
  signal VSYNC_U3_n_4 : STD_LOGIC;
  signal VSYNC_i : STD_LOGIC;
  signal V_P_SYNC_n_0 : STD_LOGIC;
  signal axi_rst_d1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of axi_rst_d1 : signal is "true";
  signal axi_rst_d6 : STD_LOGIC;
  attribute async_reg of axi_rst_d6 : signal is "true";
  signal clk_ce_neg0 : STD_LOGIC;
  signal clk_ce_pos0 : STD_LOGIC;
  signal clk_stb_d1 : STD_LOGIC;
  signal \^eof_n\ : STD_LOGIC;
  signal get_line_start : STD_LOGIC;
  signal get_line_start_d1 : STD_LOGIC;
  signal h_pix_cnt_tc : STD_LOGIC;
  signal \^ip2bus_mstrd_req\ : STD_LOGIC;
  signal ip2intc_irpt_i : STD_LOGIC;
  signal line_cnt : STD_LOGIC_VECTOR ( 0 to 8 );
  signal \line_cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \line_cnt[0]_i_5_n_0\ : STD_LOGIC;
  signal \line_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal line_cnt_1 : STD_LOGIC_VECTOR ( 0 to 8 );
  signal master_rst : STD_LOGIC;
  signal mn_request_set : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_in_d1_cdc_from : STD_LOGIC;
  signal \^prmry_in\ : STD_LOGIC;
  signal prmry_in_xored : STD_LOGIC;
  signal s_axi_wdata_0_sn_1 : STD_LOGIC;
  signal tft_base_addr_d2 : STD_LOGIC_VECTOR ( 0 to 10 );
  signal tft_base_addr_i : STD_LOGIC_VECTOR ( 1 to 10 );
  signal tft_intr_en_maxi : STD_LOGIC;
  signal tft_on_reg : STD_LOGIC;
  signal tft_on_reg_bram_d2 : STD_LOGIC;
  signal tft_rst : STD_LOGIC;
  signal tft_status_i : STD_LOGIC;
  signal trans_cnt1 : STD_LOGIC;
  signal \trans_cnt_i[0]_i_2_n_0\ : STD_LOGIC;
  signal trans_cnt_reg : STD_LOGIC_VECTOR ( 0 to 4 );
  signal trans_cnt_tc : STD_LOGIC;
  signal trans_cnt_tc_pulse : STD_LOGIC;
  signal trans_cnt_tc_pulse_i : STD_LOGIC;
  signal v_bp_cnt_tc : STD_LOGIC;
  signal v_bp_pulse : STD_LOGIC;
  signal v_p_cnt_tc : STD_LOGIC;
  signal vsync_rst : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of FDR_IP2INTC_Irpt : label is "FDR";
  attribute box_type : string;
  attribute box_type of FDR_IP2INTC_Irpt : label is "PRIMITIVE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of axi_rst_d1_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of axi_rst_d1_reg : label is "yes";
  attribute ASYNC_REG_boolean of axi_rst_d6_reg : label is std.standard.true;
  attribute KEEP of axi_rst_d6_reg : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \line_cnt[0]_i_4\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \line_cnt[4]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \line_cnt[5]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \line_cnt[6]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \line_cnt[7]_i_1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \line_cnt[8]_i_1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \trans_cnt[0]_i_3\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \trans_cnt[1]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \trans_cnt[2]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \trans_cnt[3]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \trans_cnt[4]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of trans_cnt_tc_pulse_i_i_1 : label is "soft_lutpair115";
begin
  IP2Bus_MstRd_dst_rdy <= \^ip2bus_mstrd_dst_rdy\;
  IP2Bus_Mst_Type <= \^ip2bus_mst_type\;
  Q(0) <= \^q\(0);
  TFT_on_reg_reg <= \^tft_on_reg_reg\;
  eof_n <= \^eof_n\;
  ip2bus_mstrd_req <= \^ip2bus_mstrd_req\;
  prmry_in <= \^prmry_in\;
  s_axi_wdata_0_sp_1 <= s_axi_wdata_0_sn_1;
\AXI_BRAM_data_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_BRAM_data_i_reg[8]_0\(33),
      Q => AXI_BRAM_data_i(10),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_BRAM_data_i_reg[8]_0\(32),
      Q => AXI_BRAM_data_i(11),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_BRAM_data_i_reg[8]_0\(31),
      Q => AXI_BRAM_data_i(12),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_BRAM_data_i_reg[8]_0\(30),
      Q => AXI_BRAM_data_i(13),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_BRAM_data_i_reg[8]_0\(29),
      Q => AXI_BRAM_data_i(16),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_BRAM_data_i_reg[8]_0\(28),
      Q => AXI_BRAM_data_i(17),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_BRAM_data_i_reg[8]_0\(27),
      Q => AXI_BRAM_data_i(18),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_BRAM_data_i_reg[8]_0\(26),
      Q => AXI_BRAM_data_i(19),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_BRAM_data_i_reg[8]_0\(25),
      Q => AXI_BRAM_data_i(20),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_BRAM_data_i_reg[8]_0\(24),
      Q => AXI_BRAM_data_i(21),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_BRAM_data_i_reg[8]_0\(23),
      Q => AXI_BRAM_data_i(24),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_BRAM_data_i_reg[8]_0\(22),
      Q => AXI_BRAM_data_i(25),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_BRAM_data_i_reg[8]_0\(21),
      Q => AXI_BRAM_data_i(26),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_BRAM_data_i_reg[8]_0\(20),
      Q => AXI_BRAM_data_i(27),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_BRAM_data_i_reg[8]_0\(19),
      Q => AXI_BRAM_data_i(28),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_BRAM_data_i_reg[8]_0\(18),
      Q => AXI_BRAM_data_i(29),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_BRAM_data_i_reg[8]_0\(17),
      Q => AXI_BRAM_data_i(40),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_BRAM_data_i_reg[8]_0\(16),
      Q => AXI_BRAM_data_i(41),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_BRAM_data_i_reg[8]_0\(15),
      Q => AXI_BRAM_data_i(42),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_BRAM_data_i_reg[8]_0\(14),
      Q => AXI_BRAM_data_i(43),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_BRAM_data_i_reg[8]_0\(13),
      Q => AXI_BRAM_data_i(44),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_BRAM_data_i_reg[8]_0\(12),
      Q => AXI_BRAM_data_i(45),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_BRAM_data_i_reg[8]_0\(11),
      Q => AXI_BRAM_data_i(48),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_BRAM_data_i_reg[8]_0\(10),
      Q => AXI_BRAM_data_i(49),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_BRAM_data_i_reg[8]_0\(9),
      Q => AXI_BRAM_data_i(50),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_BRAM_data_i_reg[8]_0\(8),
      Q => AXI_BRAM_data_i(51),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_BRAM_data_i_reg[8]_0\(7),
      Q => AXI_BRAM_data_i(52),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_BRAM_data_i_reg[8]_0\(6),
      Q => AXI_BRAM_data_i(53),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_BRAM_data_i_reg[8]_0\(5),
      Q => AXI_BRAM_data_i(56),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_BRAM_data_i_reg[8]_0\(4),
      Q => AXI_BRAM_data_i(57),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_BRAM_data_i_reg[8]_0\(3),
      Q => AXI_BRAM_data_i(58),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_BRAM_data_i_reg[8]_0\(2),
      Q => AXI_BRAM_data_i(59),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_BRAM_data_i_reg[8]_0\(1),
      Q => AXI_BRAM_data_i(60),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_BRAM_data_i_reg[8]_0\(0),
      Q => AXI_BRAM_data_i(61),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_BRAM_data_i_reg[8]_0\(35),
      Q => AXI_BRAM_data_i(8),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_BRAM_data_i_reg[8]_0\(34),
      Q => AXI_BRAM_data_i(9),
      R => master_rst
    );
AXI_BRAM_we_i_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mstr_src_rdy_n,
      O => AXI_BRAM_we_i_i_1_n_0
    );
AXI_BRAM_we_i_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => AXI_BRAM_we_i_i_1_n_0,
      Q => AXI_BRAM_we_i,
      R => master_rst
    );
BASE_ADDR_SYNC: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized1\
     port map (
      Q(10) => \^q\(0),
      Q(9) => tft_base_addr_i(1),
      Q(8) => tft_base_addr_i(2),
      Q(7) => tft_base_addr_i(3),
      Q(6) => tft_base_addr_i(4),
      Q(5) => tft_base_addr_i(5),
      Q(4) => tft_base_addr_i(6),
      Q(3) => tft_base_addr_i(7),
      Q(2) => tft_base_addr_i(8),
      Q(1) => tft_base_addr_i(9),
      Q(0) => tft_base_addr_i(10),
      m_axi_aclk => m_axi_aclk,
      scndry_vect_out(10) => tft_base_addr_d2(0),
      scndry_vect_out(9) => tft_base_addr_d2(1),
      scndry_vect_out(8) => tft_base_addr_d2(2),
      scndry_vect_out(7) => tft_base_addr_d2(3),
      scndry_vect_out(6) => tft_base_addr_d2(4),
      scndry_vect_out(5) => tft_base_addr_d2(5),
      scndry_vect_out(4) => tft_base_addr_d2(6),
      scndry_vect_out(3) => tft_base_addr_d2(7),
      scndry_vect_out(2) => tft_base_addr_d2(8),
      scndry_vect_out(1) => tft_base_addr_d2(9),
      scndry_vect_out(0) => tft_base_addr_d2(10)
    );
FDR_IP2INTC_Irpt: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => ip2intc_irpt_i,
      Q => ip2intc_irpt,
      R => master_rst
    );
GET_LINE_SYNC: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized0\
     port map (
      E(0) => E(0),
      IP2Bus_MstRd_dst_rdy => \^ip2bus_mstrd_dst_rdy\,
      IP2Bus_MstRd_dst_rdy_reg => GET_LINE_SYNC_n_0,
      IP2Bus_Mst_Type => \^ip2bus_mst_type\,
      IP2Bus_Mst_Type_reg => GET_LINE_SYNC_n_2,
      Q(2) => trans_cnt_reg(0),
      Q(1) => trans_cnt_reg(3),
      Q(0) => trans_cnt_reg(4),
      bus2ip_mreset => bus2ip_mreset,
      bus2ip_mst_cmdack => bus2ip_mst_cmdack,
      bus2ip_mst_cmplt => bus2ip_mst_cmplt,
      get_line_start_d1 => get_line_start_d1,
      \line_cnt_i_reg[8]\ => \trans_cnt_i[0]_i_2_n_0\,
      m_axi_aclk => m_axi_aclk,
      mn_request_set => mn_request_set,
      scndry_out => tft_on_reg,
      sys_tft_clk => sys_tft_clk,
      tft_rst => tft_rst
    );
HSYNC_U2: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft_v2_0_22_h_sync
     port map (
      \HSYNC_cs_reg[0]_0\ => HSYNC_U2_n_6,
      \HSYNC_cs_reg[1]_0\ => HSYNC_U2_n_3,
      HSYNC_i => HSYNC_i,
      H_bp_cnt_tc_reg_0(0) => BRAM_TFT_addr0,
      \RED_reg[5]\ => VSYNC_U3_n_4,
      \RED_reg[5]_0\ => I2C_done_tft,
      SR(0) => RED0,
      clk_ce_neg0 => clk_ce_neg0,
      clk_ce_pos0 => clk_ce_pos0,
      clk_stb_d1 => clk_stb_d1,
      h_pix_cnt_tc => h_pix_cnt_tc,
      \out\ => axi_rst_d6,
      scndry_out => tft_on_reg_bram_d2,
      sys_tft_clk => sys_tft_clk,
      tft_rst => tft_rst,
      vsync_rst => vsync_rst
    );
I2C_DONE_SYNC: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized2\
     port map (
      \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from\ => tft_on_reg_bram_d2,
      \out\ => axi_rst_d6,
      scndry_out => I2C_done_tft,
      sys_tft_clk => sys_tft_clk,
      tft_rst => tft_rst
    );
INTR_EN_SYNC: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync
     port map (
      m_axi_aclk => m_axi_aclk,
      prmry_in => \^prmry_in\,
      scndry_out => tft_intr_en_maxi
    );
IP2Bus_MstRd_Req_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => TFT_ON_MAXI_SYNC_n_2,
      Q => \^ip2bus_mstrd_req\,
      R => '0'
    );
IP2Bus_MstRd_dst_rdy_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => GET_LINE_SYNC_n_0,
      Q => \^ip2bus_mstrd_dst_rdy\,
      R => '0'
    );
IP2Bus_Mst_Type_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => GET_LINE_SYNC_n_2,
      Q => \^ip2bus_mst_type\,
      R => '0'
    );
LINE_BUFFER_U4: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft_v2_0_22_line_buffer
     port map (
      \BLUE_reg[5]_0\(5 downto 0) => BLUE_i(5 downto 0),
      \GREEN_reg[5]_0\(5 downto 0) => GREEN_i(5 downto 0),
      Q(35) => AXI_BRAM_data_i(8),
      Q(34) => AXI_BRAM_data_i(9),
      Q(33) => AXI_BRAM_data_i(10),
      Q(32) => AXI_BRAM_data_i(11),
      Q(31) => AXI_BRAM_data_i(12),
      Q(30) => AXI_BRAM_data_i(13),
      Q(29) => AXI_BRAM_data_i(16),
      Q(28) => AXI_BRAM_data_i(17),
      Q(27) => AXI_BRAM_data_i(18),
      Q(26) => AXI_BRAM_data_i(19),
      Q(25) => AXI_BRAM_data_i(20),
      Q(24) => AXI_BRAM_data_i(21),
      Q(23) => AXI_BRAM_data_i(24),
      Q(22) => AXI_BRAM_data_i(25),
      Q(21) => AXI_BRAM_data_i(26),
      Q(20) => AXI_BRAM_data_i(27),
      Q(19) => AXI_BRAM_data_i(28),
      Q(18) => AXI_BRAM_data_i(29),
      Q(17) => AXI_BRAM_data_i(40),
      Q(16) => AXI_BRAM_data_i(41),
      Q(15) => AXI_BRAM_data_i(42),
      Q(14) => AXI_BRAM_data_i(43),
      Q(13) => AXI_BRAM_data_i(44),
      Q(12) => AXI_BRAM_data_i(45),
      Q(11) => AXI_BRAM_data_i(48),
      Q(10) => AXI_BRAM_data_i(49),
      Q(9) => AXI_BRAM_data_i(50),
      Q(8) => AXI_BRAM_data_i(51),
      Q(7) => AXI_BRAM_data_i(52),
      Q(6) => AXI_BRAM_data_i(53),
      Q(5) => AXI_BRAM_data_i(56),
      Q(4) => AXI_BRAM_data_i(57),
      Q(3) => AXI_BRAM_data_i(58),
      Q(2) => AXI_BRAM_data_i(59),
      Q(1) => AXI_BRAM_data_i(60),
      Q(0) => AXI_BRAM_data_i(61),
      \RED_reg[5]_0\(5 downto 0) => RED_i(5 downto 0),
      \RED_reg[5]_1\(0) => RED0,
      SR(0) => BRAM_TFT_addr0,
      m_axi_aclk => m_axi_aclk,
      sys_tft_clk => sys_tft_clk,
      tft_rst => tft_rst,
      wr_en => AXI_BRAM_we_i
    );
SLAVE_REG_U6: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft_v2_0_22_slave_register
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      D(0) => D(0),
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      \IP2Bus_Data_reg[0]_0\(26 downto 0) => \IP2Bus_Data_reg[0]\(26 downto 0),
      \IP2Bus_Data_reg[0]_1\ => \IP2Bus_Data_reg[0]_0\,
      \IP2Bus_Data_reg[16]_0\ => \IP2Bus_Data_reg[16]\,
      \IP2Bus_Data_reg[1]_0\ => \IP2Bus_Data_reg[1]\,
      \IP2Bus_Data_reg[28]_0\ => \IP2Bus_Data_reg[28]\,
      \IP2Bus_Data_reg[30]_0\ => \IP2Bus_Data_reg[30]\,
      \IP2Bus_Data_reg[31]_0\ => \IP2Bus_Data_reg[31]\,
      Q(10) => \^q\(0),
      Q(9) => tft_base_addr_i(1),
      Q(8) => tft_base_addr_i(2),
      Q(7) => tft_base_addr_i(3),
      Q(6) => tft_base_addr_i(4),
      Q(5) => tft_base_addr_i(5),
      Q(4) => tft_base_addr_i(6),
      Q(3) => tft_base_addr_i(7),
      Q(2) => tft_base_addr_i(8),
      Q(1) => tft_base_addr_i(9),
      Q(0) => tft_base_addr_i(10),
      TFT_dps_reg_reg_0 => TFT_dps_reg_reg,
      \TFT_iic_reg_data_reg[4]_0\(2 downto 0) => \TFT_iic_reg_data_reg[4]\(2 downto 0),
      TFT_iic_xfer => TFT_iic_xfer,
      TFT_intr_en_reg_0 => TFT_intr_en_reg,
      TFT_on_reg_reg_0 => \^tft_on_reg_reg\,
      TFT_on_reg_reg_1 => TFT_on_reg_reg_0,
      TFT_status_reg => TFT_status_reg,
      TFT_status_reg_reg_0 => TFT_status_reg_reg,
      bus2ip_rdce_d1_reg_0 => bus2ip_rdce_d1,
      bus2ip_rdce_d1_reg_1 => bus2ip_rdce_d1_reg,
      bus2ip_rdce_d2_reg_0 => bus2ip_rdce_d2,
      bus2ip_rdce_or => bus2ip_rdce_or,
      bus2ip_sreset => bus2ip_sreset,
      bus2ip_wrce(1 downto 0) => bus2ip_wrce(1 downto 0),
      bus2ip_wrce_d1_reg_0 => bus2ip_wrce_d1_reg,
      bus2ip_wrce_or => bus2ip_wrce_or,
      cs_ce_clr => cs_ce_clr,
      prmry_in => \^prmry_in\,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_awready => s_axi_awready,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_rvalid_i_reg(2 downto 0) => s_axi_rvalid_i_reg(2 downto 0),
      s_axi_wdata(26 downto 0) => s_axi_wdata(26 downto 0),
      s_axi_wdata_0_sp_1 => s_axi_wdata_0_sn_1,
      \state1__2\ => \state1__2\,
      tft_dps => tft_dps,
      tft_status_i => tft_status_i
    );
TFT_IF_U5: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft_v2_0_22_tft_interface
     port map (
      C0 => C0,
      DE_i => DE_i,
      HSYNC_i => HSYNC_i,
      VSYNC_i => VSYNC_i,
      \gen_vga_if.FDR_B5_0\(5 downto 0) => BLUE_i(5 downto 0),
      \gen_vga_if.FDR_G5_0\(5 downto 0) => GREEN_i(5 downto 0),
      \gen_vga_if.FDR_R5_0\(5 downto 0) => RED_i(5 downto 0),
      sys_tft_clk => sys_tft_clk,
      tft_de => tft_de,
      tft_hsync => tft_hsync,
      tft_rst => tft_rst,
      tft_vga_b(5 downto 0) => tft_vga_b(5 downto 0),
      tft_vga_clk => tft_vga_clk,
      tft_vga_g(5 downto 0) => tft_vga_g(5 downto 0),
      tft_vga_r(5 downto 0) => tft_vga_r(5 downto 0),
      tft_vsync => tft_vsync
    );
TFT_ON_MAXI_SYNC: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync_0
     port map (
      E(0) => mn_request_set,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0\ => \^tft_on_reg_reg\,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\ => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\,
      IP2Bus_MstRd_Req_reg(0) => trans_cnt_tc_pulse,
      SR(0) => master_rst,
      bus2ip_mreset => bus2ip_mreset,
      bus2ip_mst_cmdack => bus2ip_mst_cmdack,
      ip2bus_mstrd_req => \^ip2bus_mstrd_req\,
      m_axi_aclk => m_axi_aclk,
      m_axi_aresetn => m_axi_aresetn,
      scndry_out => tft_on_reg,
      sig_axi_por2rst_out => sig_axi_por2rst_out,
      sig_cmdack_reg_reg => TFT_ON_MAXI_SYNC_n_2
    );
TFT_ON_TFT_SYNC: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized2_1\
     port map (
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0\ => \^tft_on_reg_reg\,
      scndry_out => tft_on_reg_bram_d2,
      sys_tft_clk => sys_tft_clk
    );
VSYNC_U3: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft_v2_0_22_v_sync
     port map (
      DE_i => DE_i,
      \VSYNC_cs_reg[1]_0\ => VSYNC_U3_n_4,
      VSYNC_i => VSYNC_i,
      clk_ce_neg0 => clk_ce_neg0,
      clk_ce_pos0 => clk_ce_pos0,
      clk_stb_d1 => clk_stb_d1,
      clk_stb_d1_reg_0 => HSYNC_U2_n_6,
      get_line_start => get_line_start,
      get_line_start_d1_reg => HSYNC_U2_n_3,
      h_pix_cnt_tc => h_pix_cnt_tc,
      sys_tft_clk => sys_tft_clk,
      v_bp_cnt_tc => v_bp_cnt_tc,
      v_p_cnt_tc => v_p_cnt_tc,
      vsync_rst => vsync_rst
    );
V_BP_SYNC: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized0_2\
     port map (
      E(0) => v_bp_pulse,
      bus2ip_mreset => bus2ip_mreset,
      m_axi_aclk => m_axi_aclk,
      sys_tft_clk => sys_tft_clk,
      tft_rst => tft_rst,
      v_bp_cnt_tc => v_bp_cnt_tc
    );
V_INTR_SYNC: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized0_3\
     port map (
      bus2ip_mreset => bus2ip_mreset,
      bus2ip_sreset => bus2ip_sreset,
      m_axi_aclk => m_axi_aclk,
      p_in_d1_cdc_from => p_in_d1_cdc_from,
      prmry_in_xored => prmry_in_xored,
      s_axi_aclk => s_axi_aclk,
      tft_status_i => tft_status_i
    );
V_P_SYNC: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized0_4\
     port map (
      FDR_IP2INTC_Irpt => tft_intr_en_maxi,
      \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out_0\(0) => trans_cnt1,
      SR(0) => V_P_SYNC_n_0,
      bus2ip_mreset => bus2ip_mreset,
      eof_n => \^eof_n\,
      ip2intc_irpt_i => ip2intc_irpt_i,
      m_axi_aclk => m_axi_aclk,
      p_in_d1_cdc_from => p_in_d1_cdc_from,
      prmry_in_xored => prmry_in_xored,
      scndry_out => tft_on_reg,
      sig_llink2cmd_rd_busy => sig_llink2cmd_rd_busy,
      sig_rd2llink_strm_tlast => sig_rd2llink_strm_tlast,
      sig_rd_discontinue => sig_rd_discontinue,
      sys_tft_clk => sys_tft_clk,
      tft_rst => tft_rst,
      trans_cnt_tc => trans_cnt_tc,
      v_p_cnt_tc => v_p_cnt_tc
    );
axi_rst_d1_reg: unisim.vcomponents.FDCE
     port map (
      C => sys_tft_clk,
      CE => '1',
      CLR => bus2ip_mreset,
      D => '1',
      Q => axi_rst_d1
    );
axi_rst_d6_reg: unisim.vcomponents.FDCE
     port map (
      C => sys_tft_clk,
      CE => '1',
      CLR => bus2ip_mreset,
      D => axi_rst_d1,
      Q => axi_rst_d6
    );
eof_n_reg: unisim.vcomponents.FDSE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => bus2ip_mstrd_eof_n,
      Q => \^eof_n\,
      S => master_rst
    );
get_line_start_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => get_line_start,
      Q => get_line_start_d1,
      R => tft_rst
    );
\line_cnt[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAA2AAA"
    )
        port map (
      I0 => trans_cnt_tc_pulse_i,
      I1 => trans_cnt_reg(0),
      I2 => trans_cnt_reg(4),
      I3 => trans_cnt_reg(3),
      I4 => trans_cnt_reg(1),
      I5 => trans_cnt_reg(2),
      O => trans_cnt_tc_pulse
    );
\line_cnt[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BC8CCCCC"
    )
        port map (
      I0 => \line_cnt[0]_i_4_n_0\,
      I1 => line_cnt(0),
      I2 => line_cnt(2),
      I3 => \line_cnt[0]_i_5_n_0\,
      I4 => line_cnt(1),
      O => line_cnt_1(0)
    );
\line_cnt[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => line_cnt(5),
      I1 => line_cnt(7),
      I2 => line_cnt(8),
      I3 => line_cnt(6),
      I4 => line_cnt(4),
      O => \line_cnt[0]_i_4_n_0\
    );
\line_cnt[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => line_cnt(4),
      I1 => line_cnt(6),
      I2 => line_cnt(7),
      I3 => line_cnt(8),
      I4 => line_cnt(5),
      I5 => line_cnt(3),
      O => \line_cnt[0]_i_5_n_0\
    );
\line_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FFF100FF00FF00"
    )
        port map (
      I0 => line_cnt(0),
      I1 => line_cnt(3),
      I2 => \line_cnt[0]_i_4_n_0\,
      I3 => line_cnt(1),
      I4 => \line_cnt[0]_i_5_n_0\,
      I5 => line_cnt(2),
      O => line_cnt_1(1)
    );
\line_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F7FFFFF0F70000"
    )
        port map (
      I0 => line_cnt(1),
      I1 => line_cnt(0),
      I2 => \line_cnt[0]_i_4_n_0\,
      I3 => line_cnt(3),
      I4 => line_cnt(2),
      I5 => \line_cnt[0]_i_5_n_0\,
      O => line_cnt_1(2)
    );
\line_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFFFFFF80000000"
    )
        port map (
      I0 => \line_cnt[0]_i_4_n_0\,
      I1 => line_cnt(3),
      I2 => line_cnt(2),
      I3 => line_cnt(1),
      I4 => line_cnt(0),
      I5 => \line_cnt[3]_i_2_n_0\,
      O => line_cnt_1(3)
    );
\line_cnt[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => line_cnt(3),
      I1 => line_cnt(5),
      I2 => line_cnt(8),
      I3 => line_cnt(7),
      I4 => line_cnt(6),
      I5 => line_cnt(4),
      O => \line_cnt[3]_i_2_n_0\
    );
\line_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => line_cnt(4),
      I1 => line_cnt(6),
      I2 => line_cnt(7),
      I3 => line_cnt(8),
      I4 => line_cnt(5),
      O => line_cnt_1(4)
    );
\line_cnt[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => line_cnt(5),
      I1 => line_cnt(8),
      I2 => line_cnt(7),
      I3 => line_cnt(6),
      O => line_cnt_1(5)
    );
\line_cnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => line_cnt(6),
      I1 => line_cnt(8),
      I2 => line_cnt(7),
      O => line_cnt_1(6)
    );
\line_cnt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => line_cnt(8),
      I1 => line_cnt(7),
      O => line_cnt_1(7)
    );
\line_cnt[8]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_cnt(8),
      O => line_cnt_1(8)
    );
\line_cnt_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => mn_request_set,
      D => line_cnt(0),
      Q => \tft_base_addr_reg[0]_0\(13),
      R => master_rst
    );
\line_cnt_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => mn_request_set,
      D => line_cnt(1),
      Q => \tft_base_addr_reg[0]_0\(12),
      R => master_rst
    );
\line_cnt_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => mn_request_set,
      D => line_cnt(2),
      Q => \tft_base_addr_reg[0]_0\(11),
      R => master_rst
    );
\line_cnt_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => mn_request_set,
      D => line_cnt(3),
      Q => \tft_base_addr_reg[0]_0\(10),
      R => master_rst
    );
\line_cnt_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => mn_request_set,
      D => line_cnt(4),
      Q => \tft_base_addr_reg[0]_0\(9),
      R => master_rst
    );
\line_cnt_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => mn_request_set,
      D => line_cnt(5),
      Q => \tft_base_addr_reg[0]_0\(8),
      R => master_rst
    );
\line_cnt_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => mn_request_set,
      D => line_cnt(6),
      Q => \tft_base_addr_reg[0]_0\(7),
      R => master_rst
    );
\line_cnt_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => mn_request_set,
      D => line_cnt(7),
      Q => \tft_base_addr_reg[0]_0\(6),
      R => master_rst
    );
\line_cnt_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => mn_request_set,
      D => line_cnt(8),
      Q => \tft_base_addr_reg[0]_0\(5),
      R => master_rst
    );
\line_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => trans_cnt_tc_pulse,
      D => line_cnt_1(0),
      Q => line_cnt(0),
      R => trans_cnt1
    );
\line_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => trans_cnt_tc_pulse,
      D => line_cnt_1(1),
      Q => line_cnt(1),
      R => trans_cnt1
    );
\line_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => trans_cnt_tc_pulse,
      D => line_cnt_1(2),
      Q => line_cnt(2),
      R => trans_cnt1
    );
\line_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => trans_cnt_tc_pulse,
      D => line_cnt_1(3),
      Q => line_cnt(3),
      R => trans_cnt1
    );
\line_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => trans_cnt_tc_pulse,
      D => line_cnt_1(4),
      Q => line_cnt(4),
      R => trans_cnt1
    );
\line_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => trans_cnt_tc_pulse,
      D => line_cnt_1(5),
      Q => line_cnt(5),
      R => trans_cnt1
    );
\line_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => trans_cnt_tc_pulse,
      D => line_cnt_1(6),
      Q => line_cnt(6),
      R => trans_cnt1
    );
\line_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => trans_cnt_tc_pulse,
      D => line_cnt_1(7),
      Q => line_cnt(7),
      R => trans_cnt1
    );
\line_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => trans_cnt_tc_pulse,
      D => line_cnt_1(8),
      Q => line_cnt(8),
      R => trans_cnt1
    );
\tft_base_addr_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_aclk,
      CE => v_bp_pulse,
      D => tft_base_addr_d2(0),
      Q => \tft_base_addr_reg[0]_0\(24),
      S => master_rst
    );
\tft_base_addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => v_bp_pulse,
      D => tft_base_addr_d2(10),
      Q => \tft_base_addr_reg[0]_0\(14),
      R => master_rst
    );
\tft_base_addr_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_aclk,
      CE => v_bp_pulse,
      D => tft_base_addr_d2(1),
      Q => \tft_base_addr_reg[0]_0\(23),
      S => master_rst
    );
\tft_base_addr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_aclk,
      CE => v_bp_pulse,
      D => tft_base_addr_d2(2),
      Q => \tft_base_addr_reg[0]_0\(22),
      S => master_rst
    );
\tft_base_addr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_aclk,
      CE => v_bp_pulse,
      D => tft_base_addr_d2(3),
      Q => \tft_base_addr_reg[0]_0\(21),
      S => master_rst
    );
\tft_base_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => v_bp_pulse,
      D => tft_base_addr_d2(4),
      Q => \tft_base_addr_reg[0]_0\(20),
      R => master_rst
    );
\tft_base_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => v_bp_pulse,
      D => tft_base_addr_d2(5),
      Q => \tft_base_addr_reg[0]_0\(19),
      R => master_rst
    );
\tft_base_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => v_bp_pulse,
      D => tft_base_addr_d2(6),
      Q => \tft_base_addr_reg[0]_0\(18),
      R => master_rst
    );
\tft_base_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => v_bp_pulse,
      D => tft_base_addr_d2(7),
      Q => \tft_base_addr_reg[0]_0\(17),
      R => master_rst
    );
\tft_base_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => v_bp_pulse,
      D => tft_base_addr_d2(8),
      Q => \tft_base_addr_reg[0]_0\(16),
      R => master_rst
    );
\tft_base_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => v_bp_pulse,
      D => tft_base_addr_d2(9),
      Q => \tft_base_addr_reg[0]_0\(15),
      R => master_rst
    );
\trans_cnt[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => trans_cnt_reg(0),
      I1 => trans_cnt_reg(2),
      I2 => trans_cnt_reg(4),
      I3 => trans_cnt_reg(3),
      I4 => trans_cnt_reg(1),
      O => \p_0_in__0\(4)
    );
\trans_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => trans_cnt_reg(1),
      I1 => trans_cnt_reg(3),
      I2 => trans_cnt_reg(4),
      I3 => trans_cnt_reg(2),
      O => \p_0_in__0\(3)
    );
\trans_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => trans_cnt_reg(2),
      I1 => trans_cnt_reg(4),
      I2 => trans_cnt_reg(3),
      O => \p_0_in__0\(2)
    );
\trans_cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => trans_cnt_reg(3),
      I1 => trans_cnt_reg(4),
      O => \p_0_in__0\(1)
    );
\trans_cnt[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => trans_cnt_reg(4),
      O => \p_0_in__0\(0)
    );
\trans_cnt_i[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => trans_cnt_reg(1),
      I1 => trans_cnt_reg(2),
      O => \trans_cnt_i[0]_i_2_n_0\
    );
\trans_cnt_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => mn_request_set,
      D => trans_cnt_reg(0),
      Q => \tft_base_addr_reg[0]_0\(4),
      R => master_rst
    );
\trans_cnt_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => mn_request_set,
      D => trans_cnt_reg(1),
      Q => \tft_base_addr_reg[0]_0\(3),
      R => master_rst
    );
\trans_cnt_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => mn_request_set,
      D => trans_cnt_reg(2),
      Q => \tft_base_addr_reg[0]_0\(2),
      R => master_rst
    );
\trans_cnt_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => mn_request_set,
      D => trans_cnt_reg(3),
      Q => \tft_base_addr_reg[0]_0\(1),
      R => master_rst
    );
\trans_cnt_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => mn_request_set,
      D => trans_cnt_reg(4),
      Q => \tft_base_addr_reg[0]_0\(0),
      R => master_rst
    );
\trans_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => E(0),
      D => \p_0_in__0\(4),
      Q => trans_cnt_reg(0),
      R => V_P_SYNC_n_0
    );
\trans_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => E(0),
      D => \p_0_in__0\(3),
      Q => trans_cnt_reg(1),
      R => V_P_SYNC_n_0
    );
\trans_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => E(0),
      D => \p_0_in__0\(2),
      Q => trans_cnt_reg(2),
      R => V_P_SYNC_n_0
    );
\trans_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => E(0),
      D => \p_0_in__0\(1),
      Q => trans_cnt_reg(3),
      R => V_P_SYNC_n_0
    );
\trans_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => E(0),
      D => \p_0_in__0\(0),
      Q => trans_cnt_reg(4),
      R => V_P_SYNC_n_0
    );
trans_cnt_tc_pulse_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => trans_cnt_reg(2),
      I1 => trans_cnt_reg(1),
      I2 => trans_cnt_reg(3),
      I3 => trans_cnt_reg(4),
      I4 => trans_cnt_reg(0),
      O => trans_cnt_tc
    );
trans_cnt_tc_pulse_i_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => trans_cnt_tc,
      Q => trans_cnt_tc_pulse_i,
      R => master_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    md_error : out STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rready : out STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wready : in STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    sys_tft_clk : in STD_LOGIC;
    tft_hsync : out STD_LOGIC;
    tft_vsync : out STD_LOGIC;
    tft_de : out STD_LOGIC;
    tft_dps : out STD_LOGIC;
    tft_vga_clk : out STD_LOGIC;
    tft_vga_r : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tft_vga_g : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tft_vga_b : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tft_dvi_clk_p : out STD_LOGIC;
    tft_dvi_clk_n : out STD_LOGIC;
    tft_dvi_data : out STD_LOGIC_VECTOR ( 11 downto 0 );
    tft_iic_scl_i : in STD_LOGIC;
    tft_iic_scl_o : out STD_LOGIC;
    tft_iic_scl_t : out STD_LOGIC;
    tft_iic_sda_i : in STD_LOGIC;
    tft_iic_sda_o : out STD_LOGIC;
    tft_iic_sda_t : out STD_LOGIC
  );
  attribute C_DEFAULT_TFT_BASE_ADDR : string;
  attribute C_DEFAULT_TFT_BASE_ADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft : entity is "64'b0000000000000000000000000000000011110000000000000000000000000000";
  attribute C_EN_I2C_INTF : integer;
  attribute C_EN_I2C_INTF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft : entity is "artix7";
  attribute C_I2C_SLAVE_ADDR : string;
  attribute C_I2C_SLAVE_ADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft : entity is "8'b01110110";
  attribute C_MAX_BURST_LEN : integer;
  attribute C_MAX_BURST_LEN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft : entity is 16;
  attribute C_M_AXI_ADDR_WIDTH : integer;
  attribute C_M_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft : entity is 32;
  attribute C_M_AXI_DATA_WIDTH : integer;
  attribute C_M_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft : entity is 32;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft : entity is 3;
  attribute C_TFT_INTERFACE : integer;
  attribute C_TFT_INTERFACE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft : entity is 0;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_10 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_38 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_41 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_42 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_43 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_44 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_45 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_48 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_7 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_8 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_9 : STD_LOGIC;
  signal AXI_MASTER_BURST_I_n_13 : STD_LOGIC;
  signal Bus2IP_MstRd_d : STD_LOGIC_VECTOR ( 8 to 29 );
  signal IP2Bus_MstRd_dst_rdy : STD_LOGIC;
  signal IP2Bus_Mst_Type : STD_LOGIC;
  signal \I_RD_LLINK_ADAPTER/sig_rd_discontinue\ : STD_LOGIC;
  signal \I_RESET_MODULE/sig_axi_por2rst_out\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/cs_ce_clr\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/s_axi_bresp_i\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/s_axi_rresp_i\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/state1__2\ : STD_LOGIC;
  signal \SLAVE_REG_U6/bus2ip_rdce_d1\ : STD_LOGIC;
  signal \SLAVE_REG_U6/bus2ip_rdce_d2\ : STD_LOGIC;
  signal \SLAVE_REG_U6/bus2ip_rdce_or\ : STD_LOGIC;
  signal \SLAVE_REG_U6/bus2ip_wrce_or\ : STD_LOGIC;
  signal TFT_CTRL_I_n_24 : STD_LOGIC;
  signal TFT_CTRL_I_n_25 : STD_LOGIC;
  signal TFT_CTRL_I_n_26 : STD_LOGIC;
  signal TFT_CTRL_I_n_27 : STD_LOGIC;
  signal TFT_CTRL_I_n_28 : STD_LOGIC;
  signal TFT_CTRL_I_n_29 : STD_LOGIC;
  signal TFT_CTRL_I_n_30 : STD_LOGIC;
  signal TFT_CTRL_I_n_31 : STD_LOGIC;
  signal TFT_CTRL_I_n_32 : STD_LOGIC;
  signal TFT_CTRL_I_n_33 : STD_LOGIC;
  signal TFT_CTRL_I_n_34 : STD_LOGIC;
  signal TFT_CTRL_I_n_35 : STD_LOGIC;
  signal TFT_CTRL_I_n_36 : STD_LOGIC;
  signal TFT_CTRL_I_n_37 : STD_LOGIC;
  signal TFT_CTRL_I_n_38 : STD_LOGIC;
  signal TFT_CTRL_I_n_39 : STD_LOGIC;
  signal TFT_CTRL_I_n_40 : STD_LOGIC;
  signal TFT_CTRL_I_n_41 : STD_LOGIC;
  signal TFT_CTRL_I_n_42 : STD_LOGIC;
  signal TFT_CTRL_I_n_43 : STD_LOGIC;
  signal TFT_CTRL_I_n_44 : STD_LOGIC;
  signal TFT_CTRL_I_n_45 : STD_LOGIC;
  signal TFT_CTRL_I_n_46 : STD_LOGIC;
  signal TFT_CTRL_I_n_47 : STD_LOGIC;
  signal TFT_CTRL_I_n_48 : STD_LOGIC;
  signal TFT_CTRL_I_n_49 : STD_LOGIC;
  signal TFT_CTRL_I_n_50 : STD_LOGIC;
  signal TFT_CTRL_I_n_66 : STD_LOGIC;
  signal TFT_CTRL_I_n_69 : STD_LOGIC;
  signal TFT_CTRL_I_n_70 : STD_LOGIC;
  signal TFT_CTRL_I_n_71 : STD_LOGIC;
  signal TFT_CTRL_I_n_72 : STD_LOGIC;
  signal \TFT_IF_U5/C0\ : STD_LOGIC;
  signal TFT_iic_reg_data : STD_LOGIC_VECTOR ( 4 to 7 );
  signal TFT_iic_xfer : STD_LOGIC;
  signal TFT_status_reg : STD_LOGIC;
  signal bus2ip_mreset : STD_LOGIC;
  signal bus2ip_mreset_i_1_n_0 : STD_LOGIC;
  signal bus2ip_mst_cmdack : STD_LOGIC;
  signal bus2ip_mst_cmplt : STD_LOGIC;
  signal bus2ip_mstrd_eof_n : STD_LOGIC;
  signal bus2ip_sreset : STD_LOGIC;
  signal bus2ip_sreset_i_1_n_0 : STD_LOGIC;
  signal bus2ip_wrce : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal eof_n : STD_LOGIC;
  signal eof_pulse : STD_LOGIC;
  signal ip2bus_mst_addr : STD_LOGIC_VECTOR ( 0 to 24 );
  signal ip2bus_mstrd_req : STD_LOGIC;
  signal \^m_axi_araddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_arburst\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_arlen\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m_axi_arsize\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^m_axi_wstrb\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal mstr_src_rdy_n : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal sig_llink2cmd_rd_busy : STD_LOGIC;
  signal sig_rd2llink_strm_tlast : STD_LOGIC;
  signal temp_bus2ip_mstrd_d : STD_LOGIC_VECTOR ( 23 downto 2 );
  signal tft_base_addr_i : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^tft_dps\ : STD_LOGIC;
  signal tft_intr_en_i : STD_LOGIC;
  signal tft_on_reg_i : STD_LOGIC;
  attribute sigis : string;
  attribute sigis of ip2intc_irpt : signal is "INTR_EDGE_RISING";
  attribute sigis of m_axi_aclk : signal is "CLK";
  attribute sigis of m_axi_aresetn : signal is "RST";
  attribute sigis of s_axi_aclk : signal is "CLK";
  attribute sigis of s_axi_aresetn : signal is "RST";
  attribute sigis of sys_tft_clk : signal is "CLK";
begin
  m_axi_araddr(31 downto 0) <= \^m_axi_araddr\(31 downto 0);
  m_axi_arburst(1) <= \<const0>\;
  m_axi_arburst(0) <= \^m_axi_arburst\(0);
  m_axi_arcache(3) <= \<const0>\;
  m_axi_arcache(2) <= \<const0>\;
  m_axi_arcache(1) <= \<const1>\;
  m_axi_arcache(0) <= \<const1>\;
  m_axi_arlen(7) <= \<const0>\;
  m_axi_arlen(6) <= \<const0>\;
  m_axi_arlen(5) <= \<const0>\;
  m_axi_arlen(4) <= \<const0>\;
  m_axi_arlen(3 downto 0) <= \^m_axi_arlen\(3 downto 0);
  m_axi_arprot(2) <= \<const0>\;
  m_axi_arprot(1) <= \<const0>\;
  m_axi_arprot(0) <= \<const0>\;
  m_axi_arsize(2) <= \<const0>\;
  m_axi_arsize(1) <= \^m_axi_arsize\(1);
  m_axi_arsize(0) <= \<const0>\;
  m_axi_awaddr(31 downto 0) <= \^m_axi_araddr\(31 downto 0);
  m_axi_awburst(1) <= \<const0>\;
  m_axi_awburst(0) <= \^m_axi_arburst\(0);
  m_axi_awcache(3) <= \<const0>\;
  m_axi_awcache(2) <= \<const0>\;
  m_axi_awcache(1) <= \<const1>\;
  m_axi_awcache(0) <= \<const1>\;
  m_axi_awlen(7) <= \<const0>\;
  m_axi_awlen(6) <= \<const0>\;
  m_axi_awlen(5) <= \<const0>\;
  m_axi_awlen(4) <= \<const0>\;
  m_axi_awlen(3 downto 0) <= \^m_axi_arlen\(3 downto 0);
  m_axi_awprot(2) <= \<const0>\;
  m_axi_awprot(1) <= \<const0>\;
  m_axi_awprot(0) <= \<const0>\;
  m_axi_awsize(2) <= \<const0>\;
  m_axi_awsize(1) <= \^m_axi_arsize\(1);
  m_axi_awsize(0) <= \<const0>\;
  m_axi_awvalid <= \<const0>\;
  m_axi_wdata(31) <= \<const0>\;
  m_axi_wdata(30) <= \<const0>\;
  m_axi_wdata(29) <= \<const0>\;
  m_axi_wdata(28) <= \<const0>\;
  m_axi_wdata(27) <= \<const0>\;
  m_axi_wdata(26) <= \<const0>\;
  m_axi_wdata(25) <= \<const0>\;
  m_axi_wdata(24) <= \<const0>\;
  m_axi_wdata(23) <= \<const0>\;
  m_axi_wdata(22) <= \<const0>\;
  m_axi_wdata(21) <= \<const0>\;
  m_axi_wdata(20) <= \<const0>\;
  m_axi_wdata(19) <= \<const0>\;
  m_axi_wdata(18) <= \<const0>\;
  m_axi_wdata(17) <= \<const0>\;
  m_axi_wdata(16) <= \<const0>\;
  m_axi_wdata(15) <= \<const0>\;
  m_axi_wdata(14) <= \<const0>\;
  m_axi_wdata(13) <= \<const0>\;
  m_axi_wdata(12) <= \<const0>\;
  m_axi_wdata(11) <= \<const0>\;
  m_axi_wdata(10) <= \<const0>\;
  m_axi_wdata(9) <= \<const0>\;
  m_axi_wdata(8) <= \<const0>\;
  m_axi_wdata(7) <= \<const0>\;
  m_axi_wdata(6) <= \<const0>\;
  m_axi_wdata(5) <= \<const0>\;
  m_axi_wdata(4) <= \<const0>\;
  m_axi_wdata(3) <= \<const0>\;
  m_axi_wdata(2) <= \<const0>\;
  m_axi_wdata(1) <= \<const0>\;
  m_axi_wdata(0) <= \<const0>\;
  m_axi_wlast <= \<const0>\;
  m_axi_wstrb(3) <= \^m_axi_wstrb\(2);
  m_axi_wstrb(2) <= \^m_axi_wstrb\(2);
  m_axi_wstrb(1) <= \^m_axi_wstrb\(2);
  m_axi_wstrb(0) <= \^m_axi_wstrb\(2);
  s_axi_awready <= \^s_axi_awready\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rdata(31 downto 21) <= \^s_axi_rdata\(31 downto 21);
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15 downto 0) <= \^s_axi_rdata\(15 downto 0);
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_rvalid <= \^s_axi_rvalid\;
  s_axi_wready <= \^s_axi_awready\;
  tft_dps <= \^tft_dps\;
  tft_dvi_clk_n <= \<const0>\;
  tft_dvi_clk_p <= \<const0>\;
  tft_dvi_data(11) <= \<const0>\;
  tft_dvi_data(10) <= \<const0>\;
  tft_dvi_data(9) <= \<const0>\;
  tft_dvi_data(8) <= \<const0>\;
  tft_dvi_data(7) <= \<const0>\;
  tft_dvi_data(6) <= \<const0>\;
  tft_dvi_data(5) <= \<const0>\;
  tft_dvi_data(4) <= \<const0>\;
  tft_dvi_data(3) <= \<const0>\;
  tft_dvi_data(2) <= \<const0>\;
  tft_dvi_data(1) <= \<const0>\;
  tft_dvi_data(0) <= \<const0>\;
  tft_iic_scl_o <= \<const0>\;
  tft_iic_scl_t <= \<const1>\;
  tft_iic_sda_o <= \<const0>\;
  tft_iic_sda_t <= \<const1>\;
\AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => temp_bus2ip_mstrd_d(21),
      Q => Bus2IP_MstRd_d(10),
      R => bus2ip_mreset
    );
\AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => temp_bus2ip_mstrd_d(20),
      Q => Bus2IP_MstRd_d(11),
      R => bus2ip_mreset
    );
\AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => temp_bus2ip_mstrd_d(19),
      Q => Bus2IP_MstRd_d(12),
      R => bus2ip_mreset
    );
\AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => temp_bus2ip_mstrd_d(18),
      Q => Bus2IP_MstRd_d(13),
      R => bus2ip_mreset
    );
\AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => temp_bus2ip_mstrd_d(15),
      Q => Bus2IP_MstRd_d(16),
      R => bus2ip_mreset
    );
\AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => temp_bus2ip_mstrd_d(14),
      Q => Bus2IP_MstRd_d(17),
      R => bus2ip_mreset
    );
\AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => temp_bus2ip_mstrd_d(13),
      Q => Bus2IP_MstRd_d(18),
      R => bus2ip_mreset
    );
\AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => temp_bus2ip_mstrd_d(12),
      Q => Bus2IP_MstRd_d(19),
      R => bus2ip_mreset
    );
\AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => temp_bus2ip_mstrd_d(11),
      Q => Bus2IP_MstRd_d(20),
      R => bus2ip_mreset
    );
\AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => temp_bus2ip_mstrd_d(10),
      Q => Bus2IP_MstRd_d(21),
      R => bus2ip_mreset
    );
\AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => temp_bus2ip_mstrd_d(7),
      Q => Bus2IP_MstRd_d(24),
      R => bus2ip_mreset
    );
\AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => temp_bus2ip_mstrd_d(6),
      Q => Bus2IP_MstRd_d(25),
      R => bus2ip_mreset
    );
\AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => temp_bus2ip_mstrd_d(5),
      Q => Bus2IP_MstRd_d(26),
      R => bus2ip_mreset
    );
\AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => temp_bus2ip_mstrd_d(4),
      Q => Bus2IP_MstRd_d(27),
      R => bus2ip_mreset
    );
\AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => temp_bus2ip_mstrd_d(3),
      Q => Bus2IP_MstRd_d(28),
      R => bus2ip_mreset
    );
\AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => temp_bus2ip_mstrd_d(2),
      Q => Bus2IP_MstRd_d(29),
      R => bus2ip_mreset
    );
\AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => temp_bus2ip_mstrd_d(23),
      Q => Bus2IP_MstRd_d(8),
      R => bus2ip_mreset
    );
\AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => temp_bus2ip_mstrd_d(22),
      Q => Bus2IP_MstRd_d(9),
      R => bus2ip_mreset
    );
\AXI_DATA_WIDTH_32.mstr_src_rdy_n_reg\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => AXI_MASTER_BURST_I_n_13,
      Q => mstr_src_rdy_n,
      R => '0'
    );
AXI_LITE_IPIF_I: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif
     port map (
      Bus_RNW_reg => \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      Bus_RNW_reg_reg => AXI_LITE_IPIF_I_n_48,
      D(0) => TFT_CTRL_I_n_66,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ => AXI_LITE_IPIF_I_n_38,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ => AXI_LITE_IPIF_I_n_45,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ => \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\ => AXI_LITE_IPIF_I_n_42,
      \IP2Bus_Data_reg[0]\(0) => tft_base_addr_i(0),
      \IP2Bus_Data_reg[28]\(2) => TFT_iic_reg_data(4),
      \IP2Bus_Data_reg[28]\(1) => TFT_iic_reg_data(6),
      \IP2Bus_Data_reg[28]\(0) => TFT_iic_reg_data(7),
      Q(2) => \I_SLAVE_ATTACHMENT/s_axi_rresp_i\,
      Q(1) => \I_SLAVE_ATTACHMENT/s_axi_bresp_i\,
      Q(0) => AXI_LITE_IPIF_I_n_7,
      TFT_dps_reg_reg => AXI_LITE_IPIF_I_n_43,
      \TFT_iic_reg_data_reg[7]\ => AXI_LITE_IPIF_I_n_41,
      TFT_iic_xfer => TFT_iic_xfer,
      TFT_intr_en_reg => AXI_LITE_IPIF_I_n_44,
      TFT_intr_en_reg_0 => tft_intr_en_i,
      TFT_status_reg => TFT_status_reg,
      TFT_status_reg_reg => TFT_CTRL_I_n_72,
      bus2ip_rdce_d1 => \SLAVE_REG_U6/bus2ip_rdce_d1\,
      bus2ip_rdce_d2 => \SLAVE_REG_U6/bus2ip_rdce_d2\,
      bus2ip_rdce_or => \SLAVE_REG_U6/bus2ip_rdce_or\,
      bus2ip_sreset => bus2ip_sreset,
      bus2ip_wrce(1) => bus2ip_wrce(3),
      bus2ip_wrce(0) => bus2ip_wrce(0),
      bus2ip_wrce_or => \SLAVE_REG_U6/bus2ip_wrce_or\,
      cs_ce_clr => \I_SLAVE_ATTACHMENT/I_DECODER/cs_ce_clr\,
      prmry_in => tft_on_reg_i,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(1 downto 0) => s_axi_araddr(3 downto 2),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(1 downto 0) => s_axi_awaddr(3 downto 2),
      s_axi_awready => \^s_axi_awready\,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => \^s_axi_bvalid\,
      s_axi_bvalid_i_reg => TFT_CTRL_I_n_71,
      s_axi_rdata(26 downto 16) => \^s_axi_rdata\(31 downto 21),
      s_axi_rdata(15 downto 0) => \^s_axi_rdata\(15 downto 0),
      \s_axi_rdata_i_reg[31]\(26) => TFT_CTRL_I_n_24,
      \s_axi_rdata_i_reg[31]\(25) => TFT_CTRL_I_n_25,
      \s_axi_rdata_i_reg[31]\(24) => TFT_CTRL_I_n_26,
      \s_axi_rdata_i_reg[31]\(23) => TFT_CTRL_I_n_27,
      \s_axi_rdata_i_reg[31]\(22) => TFT_CTRL_I_n_28,
      \s_axi_rdata_i_reg[31]\(21) => TFT_CTRL_I_n_29,
      \s_axi_rdata_i_reg[31]\(20) => TFT_CTRL_I_n_30,
      \s_axi_rdata_i_reg[31]\(19) => TFT_CTRL_I_n_31,
      \s_axi_rdata_i_reg[31]\(18) => TFT_CTRL_I_n_32,
      \s_axi_rdata_i_reg[31]\(17) => TFT_CTRL_I_n_33,
      \s_axi_rdata_i_reg[31]\(16) => TFT_CTRL_I_n_34,
      \s_axi_rdata_i_reg[31]\(15) => TFT_CTRL_I_n_35,
      \s_axi_rdata_i_reg[31]\(14) => TFT_CTRL_I_n_36,
      \s_axi_rdata_i_reg[31]\(13) => TFT_CTRL_I_n_37,
      \s_axi_rdata_i_reg[31]\(12) => TFT_CTRL_I_n_38,
      \s_axi_rdata_i_reg[31]\(11) => TFT_CTRL_I_n_39,
      \s_axi_rdata_i_reg[31]\(10) => TFT_CTRL_I_n_40,
      \s_axi_rdata_i_reg[31]\(9) => TFT_CTRL_I_n_41,
      \s_axi_rdata_i_reg[31]\(8) => TFT_CTRL_I_n_42,
      \s_axi_rdata_i_reg[31]\(7) => TFT_CTRL_I_n_43,
      \s_axi_rdata_i_reg[31]\(6) => TFT_CTRL_I_n_44,
      \s_axi_rdata_i_reg[31]\(5) => TFT_CTRL_I_n_45,
      \s_axi_rdata_i_reg[31]\(4) => TFT_CTRL_I_n_46,
      \s_axi_rdata_i_reg[31]\(3) => TFT_CTRL_I_n_47,
      \s_axi_rdata_i_reg[31]\(2) => TFT_CTRL_I_n_48,
      \s_axi_rdata_i_reg[31]\(1) => TFT_CTRL_I_n_49,
      \s_axi_rdata_i_reg[31]\(0) => TFT_CTRL_I_n_50,
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => \^s_axi_rvalid\,
      s_axi_rvalid_i_reg => TFT_CTRL_I_n_70,
      s_axi_wdata(2) => s_axi_wdata(3),
      s_axi_wdata(1 downto 0) => s_axi_wdata(1 downto 0),
      \s_axi_wdata[3]\ => AXI_LITE_IPIF_I_n_10,
      s_axi_wdata_0_sp_1 => AXI_LITE_IPIF_I_n_9,
      s_axi_wdata_1_sp_1 => AXI_LITE_IPIF_I_n_8,
      s_axi_wvalid => s_axi_wvalid,
      \state1__2\ => \I_SLAVE_ATTACHMENT/state1__2\,
      tft_dps => \^tft_dps\
    );
AXI_MASTER_BURST_I: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst
     port map (
      D(24) => ip2bus_mst_addr(0),
      D(23) => ip2bus_mst_addr(1),
      D(22) => ip2bus_mst_addr(2),
      D(21) => ip2bus_mst_addr(3),
      D(20) => ip2bus_mst_addr(4),
      D(19) => ip2bus_mst_addr(5),
      D(18) => ip2bus_mst_addr(6),
      D(17) => ip2bus_mst_addr(7),
      D(16) => ip2bus_mst_addr(8),
      D(15) => ip2bus_mst_addr(9),
      D(14) => ip2bus_mst_addr(10),
      D(13) => ip2bus_mst_addr(11),
      D(12) => ip2bus_mst_addr(12),
      D(11) => ip2bus_mst_addr(13),
      D(10) => ip2bus_mst_addr(14),
      D(9) => ip2bus_mst_addr(15),
      D(8) => ip2bus_mst_addr(16),
      D(7) => ip2bus_mst_addr(17),
      D(6) => ip2bus_mst_addr(18),
      D(5) => ip2bus_mst_addr(19),
      D(4) => ip2bus_mst_addr(20),
      D(3) => ip2bus_mst_addr(21),
      D(2) => ip2bus_mst_addr(22),
      D(1) => ip2bus_mst_addr(23),
      D(0) => ip2bus_mst_addr(24),
      E(0) => eof_pulse,
      IP2Bus_MstRd_dst_rdy => IP2Bus_MstRd_dst_rdy,
      IP2Bus_Mst_Type => IP2Bus_Mst_Type,
      Q(17 downto 12) => temp_bus2ip_mstrd_d(23 downto 18),
      Q(11 downto 6) => temp_bus2ip_mstrd_d(15 downto 10),
      Q(5 downto 0) => temp_bus2ip_mstrd_d(7 downto 2),
      bus2ip_mreset => bus2ip_mreset,
      bus2ip_mst_cmdack => bus2ip_mst_cmdack,
      bus2ip_mst_cmplt => bus2ip_mst_cmplt,
      bus2ip_mstrd_eof_n => bus2ip_mstrd_eof_n,
      eof_n => eof_n,
      ip2bus_mstrd_req => ip2bus_mstrd_req,
      m_axi_aclk => m_axi_aclk,
      m_axi_araddr(31 downto 0) => \^m_axi_araddr\(31 downto 0),
      m_axi_arburst(0) => \^m_axi_arburst\(0),
      m_axi_arlen(3 downto 0) => \^m_axi_arlen\(3 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arsize(0) => \^m_axi_arsize\(1),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_bready => m_axi_bready,
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(17 downto 12) => m_axi_rdata(23 downto 18),
      m_axi_rdata(11 downto 6) => m_axi_rdata(15 downto 10),
      m_axi_rdata(5 downto 0) => m_axi_rdata(7 downto 2),
      m_axi_rlast => m_axi_rlast,
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(0) => \^m_axi_wstrb\(2),
      m_axi_wvalid => m_axi_wvalid,
      md_error => md_error,
      mstr_src_rdy_n => mstr_src_rdy_n,
      sig_axi_por2rst_out => \I_RESET_MODULE/sig_axi_por2rst_out\,
      sig_llink2cmd_rd_busy => sig_llink2cmd_rd_busy,
      sig_llink_busy_reg => AXI_MASTER_BURST_I_n_13,
      sig_llink_reset_reg_reg => TFT_CTRL_I_n_69,
      sig_rd2llink_strm_tlast => sig_rd2llink_strm_tlast,
      sig_rd_discontinue => \I_RD_LLINK_ADAPTER/sig_rd_discontinue\
    );
FDS_HSYNC_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sys_tft_clk,
      O => \TFT_IF_U5/C0\
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
TFT_CTRL_I: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft_v2_0_22_tft_controller
     port map (
      \AXI_BRAM_data_i_reg[8]_0\(35) => Bus2IP_MstRd_d(8),
      \AXI_BRAM_data_i_reg[8]_0\(34) => Bus2IP_MstRd_d(9),
      \AXI_BRAM_data_i_reg[8]_0\(33) => Bus2IP_MstRd_d(10),
      \AXI_BRAM_data_i_reg[8]_0\(32) => Bus2IP_MstRd_d(11),
      \AXI_BRAM_data_i_reg[8]_0\(31) => Bus2IP_MstRd_d(12),
      \AXI_BRAM_data_i_reg[8]_0\(30) => Bus2IP_MstRd_d(13),
      \AXI_BRAM_data_i_reg[8]_0\(29) => Bus2IP_MstRd_d(16),
      \AXI_BRAM_data_i_reg[8]_0\(28) => Bus2IP_MstRd_d(17),
      \AXI_BRAM_data_i_reg[8]_0\(27) => Bus2IP_MstRd_d(18),
      \AXI_BRAM_data_i_reg[8]_0\(26) => Bus2IP_MstRd_d(19),
      \AXI_BRAM_data_i_reg[8]_0\(25) => Bus2IP_MstRd_d(20),
      \AXI_BRAM_data_i_reg[8]_0\(24) => Bus2IP_MstRd_d(21),
      \AXI_BRAM_data_i_reg[8]_0\(23) => Bus2IP_MstRd_d(24),
      \AXI_BRAM_data_i_reg[8]_0\(22) => Bus2IP_MstRd_d(25),
      \AXI_BRAM_data_i_reg[8]_0\(21) => Bus2IP_MstRd_d(26),
      \AXI_BRAM_data_i_reg[8]_0\(20) => Bus2IP_MstRd_d(27),
      \AXI_BRAM_data_i_reg[8]_0\(19) => Bus2IP_MstRd_d(28),
      \AXI_BRAM_data_i_reg[8]_0\(18) => Bus2IP_MstRd_d(29),
      \AXI_BRAM_data_i_reg[8]_0\(17 downto 12) => temp_bus2ip_mstrd_d(23 downto 18),
      \AXI_BRAM_data_i_reg[8]_0\(11 downto 6) => temp_bus2ip_mstrd_d(15 downto 10),
      \AXI_BRAM_data_i_reg[8]_0\(5 downto 0) => temp_bus2ip_mstrd_d(7 downto 2),
      Bus_RNW_reg => \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      C0 => \TFT_IF_U5/C0\,
      D(0) => TFT_CTRL_I_n_66,
      E(0) => eof_pulse,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ => TFT_CTRL_I_n_69,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ => \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      \IP2Bus_Data_reg[0]\(26) => TFT_CTRL_I_n_24,
      \IP2Bus_Data_reg[0]\(25) => TFT_CTRL_I_n_25,
      \IP2Bus_Data_reg[0]\(24) => TFT_CTRL_I_n_26,
      \IP2Bus_Data_reg[0]\(23) => TFT_CTRL_I_n_27,
      \IP2Bus_Data_reg[0]\(22) => TFT_CTRL_I_n_28,
      \IP2Bus_Data_reg[0]\(21) => TFT_CTRL_I_n_29,
      \IP2Bus_Data_reg[0]\(20) => TFT_CTRL_I_n_30,
      \IP2Bus_Data_reg[0]\(19) => TFT_CTRL_I_n_31,
      \IP2Bus_Data_reg[0]\(18) => TFT_CTRL_I_n_32,
      \IP2Bus_Data_reg[0]\(17) => TFT_CTRL_I_n_33,
      \IP2Bus_Data_reg[0]\(16) => TFT_CTRL_I_n_34,
      \IP2Bus_Data_reg[0]\(15) => TFT_CTRL_I_n_35,
      \IP2Bus_Data_reg[0]\(14) => TFT_CTRL_I_n_36,
      \IP2Bus_Data_reg[0]\(13) => TFT_CTRL_I_n_37,
      \IP2Bus_Data_reg[0]\(12) => TFT_CTRL_I_n_38,
      \IP2Bus_Data_reg[0]\(11) => TFT_CTRL_I_n_39,
      \IP2Bus_Data_reg[0]\(10) => TFT_CTRL_I_n_40,
      \IP2Bus_Data_reg[0]\(9) => TFT_CTRL_I_n_41,
      \IP2Bus_Data_reg[0]\(8) => TFT_CTRL_I_n_42,
      \IP2Bus_Data_reg[0]\(7) => TFT_CTRL_I_n_43,
      \IP2Bus_Data_reg[0]\(6) => TFT_CTRL_I_n_44,
      \IP2Bus_Data_reg[0]\(5) => TFT_CTRL_I_n_45,
      \IP2Bus_Data_reg[0]\(4) => TFT_CTRL_I_n_46,
      \IP2Bus_Data_reg[0]\(3) => TFT_CTRL_I_n_47,
      \IP2Bus_Data_reg[0]\(2) => TFT_CTRL_I_n_48,
      \IP2Bus_Data_reg[0]\(1) => TFT_CTRL_I_n_49,
      \IP2Bus_Data_reg[0]\(0) => TFT_CTRL_I_n_50,
      \IP2Bus_Data_reg[0]_0\ => AXI_LITE_IPIF_I_n_45,
      \IP2Bus_Data_reg[16]\ => AXI_LITE_IPIF_I_n_42,
      \IP2Bus_Data_reg[1]\ => AXI_LITE_IPIF_I_n_48,
      \IP2Bus_Data_reg[28]\ => AXI_LITE_IPIF_I_n_44,
      \IP2Bus_Data_reg[30]\ => AXI_LITE_IPIF_I_n_43,
      \IP2Bus_Data_reg[31]\ => AXI_LITE_IPIF_I_n_41,
      IP2Bus_MstRd_dst_rdy => IP2Bus_MstRd_dst_rdy,
      IP2Bus_Mst_Type => IP2Bus_Mst_Type,
      Q(0) => tft_base_addr_i(0),
      TFT_dps_reg_reg => AXI_LITE_IPIF_I_n_8,
      \TFT_iic_reg_data_reg[4]\(2) => TFT_iic_reg_data(4),
      \TFT_iic_reg_data_reg[4]\(1) => TFT_iic_reg_data(6),
      \TFT_iic_reg_data_reg[4]\(0) => TFT_iic_reg_data(7),
      TFT_iic_xfer => TFT_iic_xfer,
      TFT_intr_en_reg => AXI_LITE_IPIF_I_n_10,
      TFT_on_reg_reg => tft_on_reg_i,
      TFT_on_reg_reg_0 => AXI_LITE_IPIF_I_n_9,
      TFT_status_reg => TFT_status_reg,
      TFT_status_reg_reg => AXI_LITE_IPIF_I_n_38,
      bus2ip_mreset => bus2ip_mreset,
      bus2ip_mst_cmdack => bus2ip_mst_cmdack,
      bus2ip_mst_cmplt => bus2ip_mst_cmplt,
      bus2ip_mstrd_eof_n => bus2ip_mstrd_eof_n,
      bus2ip_rdce_d1 => \SLAVE_REG_U6/bus2ip_rdce_d1\,
      bus2ip_rdce_d1_reg => TFT_CTRL_I_n_70,
      bus2ip_rdce_d2 => \SLAVE_REG_U6/bus2ip_rdce_d2\,
      bus2ip_rdce_or => \SLAVE_REG_U6/bus2ip_rdce_or\,
      bus2ip_sreset => bus2ip_sreset,
      bus2ip_wrce(1) => bus2ip_wrce(3),
      bus2ip_wrce(0) => bus2ip_wrce(0),
      bus2ip_wrce_d1_reg => TFT_CTRL_I_n_71,
      bus2ip_wrce_or => \SLAVE_REG_U6/bus2ip_wrce_or\,
      cs_ce_clr => \I_SLAVE_ATTACHMENT/I_DECODER/cs_ce_clr\,
      eof_n => eof_n,
      ip2bus_mstrd_req => ip2bus_mstrd_req,
      ip2intc_irpt => ip2intc_irpt,
      m_axi_aclk => m_axi_aclk,
      m_axi_aresetn => m_axi_aresetn,
      mstr_src_rdy_n => mstr_src_rdy_n,
      prmry_in => tft_intr_en_i,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_awready => \^s_axi_awready\,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => \^s_axi_bvalid\,
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => \^s_axi_rvalid\,
      s_axi_rvalid_i_reg(2) => \I_SLAVE_ATTACHMENT/s_axi_rresp_i\,
      s_axi_rvalid_i_reg(1) => \I_SLAVE_ATTACHMENT/s_axi_bresp_i\,
      s_axi_rvalid_i_reg(0) => AXI_LITE_IPIF_I_n_7,
      s_axi_wdata(26 downto 16) => s_axi_wdata(31 downto 21),
      s_axi_wdata(15 downto 0) => s_axi_wdata(15 downto 0),
      s_axi_wdata_0_sp_1 => TFT_CTRL_I_n_72,
      sig_axi_por2rst_out => \I_RESET_MODULE/sig_axi_por2rst_out\,
      sig_llink2cmd_rd_busy => sig_llink2cmd_rd_busy,
      sig_rd2llink_strm_tlast => sig_rd2llink_strm_tlast,
      sig_rd_discontinue => \I_RD_LLINK_ADAPTER/sig_rd_discontinue\,
      \state1__2\ => \I_SLAVE_ATTACHMENT/state1__2\,
      sys_tft_clk => sys_tft_clk,
      \tft_base_addr_reg[0]_0\(24) => ip2bus_mst_addr(0),
      \tft_base_addr_reg[0]_0\(23) => ip2bus_mst_addr(1),
      \tft_base_addr_reg[0]_0\(22) => ip2bus_mst_addr(2),
      \tft_base_addr_reg[0]_0\(21) => ip2bus_mst_addr(3),
      \tft_base_addr_reg[0]_0\(20) => ip2bus_mst_addr(4),
      \tft_base_addr_reg[0]_0\(19) => ip2bus_mst_addr(5),
      \tft_base_addr_reg[0]_0\(18) => ip2bus_mst_addr(6),
      \tft_base_addr_reg[0]_0\(17) => ip2bus_mst_addr(7),
      \tft_base_addr_reg[0]_0\(16) => ip2bus_mst_addr(8),
      \tft_base_addr_reg[0]_0\(15) => ip2bus_mst_addr(9),
      \tft_base_addr_reg[0]_0\(14) => ip2bus_mst_addr(10),
      \tft_base_addr_reg[0]_0\(13) => ip2bus_mst_addr(11),
      \tft_base_addr_reg[0]_0\(12) => ip2bus_mst_addr(12),
      \tft_base_addr_reg[0]_0\(11) => ip2bus_mst_addr(13),
      \tft_base_addr_reg[0]_0\(10) => ip2bus_mst_addr(14),
      \tft_base_addr_reg[0]_0\(9) => ip2bus_mst_addr(15),
      \tft_base_addr_reg[0]_0\(8) => ip2bus_mst_addr(16),
      \tft_base_addr_reg[0]_0\(7) => ip2bus_mst_addr(17),
      \tft_base_addr_reg[0]_0\(6) => ip2bus_mst_addr(18),
      \tft_base_addr_reg[0]_0\(5) => ip2bus_mst_addr(19),
      \tft_base_addr_reg[0]_0\(4) => ip2bus_mst_addr(20),
      \tft_base_addr_reg[0]_0\(3) => ip2bus_mst_addr(21),
      \tft_base_addr_reg[0]_0\(2) => ip2bus_mst_addr(22),
      \tft_base_addr_reg[0]_0\(1) => ip2bus_mst_addr(23),
      \tft_base_addr_reg[0]_0\(0) => ip2bus_mst_addr(24),
      tft_de => tft_de,
      tft_dps => \^tft_dps\,
      tft_hsync => tft_hsync,
      tft_vga_b(5 downto 0) => tft_vga_b(5 downto 0),
      tft_vga_clk => tft_vga_clk,
      tft_vga_g(5 downto 0) => tft_vga_g(5 downto 0),
      tft_vga_r(5 downto 0) => tft_vga_r(5 downto 0),
      tft_vsync => tft_vsync
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
bus2ip_mreset_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axi_aresetn,
      O => bus2ip_mreset_i_1_n_0
    );
bus2ip_mreset_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => bus2ip_mreset_i_1_n_0,
      Q => bus2ip_mreset,
      R => '0'
    );
bus2ip_sreset_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => bus2ip_sreset_i_1_n_0
    );
bus2ip_sreset_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => bus2ip_sreset_i_1_n_0,
      Q => bus2ip_sreset,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    md_error : out STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rready : out STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wready : in STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    sys_tft_clk : in STD_LOGIC;
    tft_hsync : out STD_LOGIC;
    tft_vsync : out STD_LOGIC;
    tft_de : out STD_LOGIC;
    tft_dps : out STD_LOGIC;
    tft_vga_clk : out STD_LOGIC;
    tft_vga_r : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tft_vga_g : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tft_vga_b : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "snake_axi_tft_0_0,axi_tft,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "axi_tft,Vivado 2019.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal NLW_U0_tft_dvi_clk_n_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_tft_dvi_clk_p_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_tft_iic_scl_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_tft_iic_scl_t_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_tft_iic_sda_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_tft_iic_sda_t_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_tft_dvi_data_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute C_DEFAULT_TFT_BASE_ADDR : string;
  attribute C_DEFAULT_TFT_BASE_ADDR of U0 : label is "64'b0000000000000000000000000000000011110000000000000000000000000000";
  attribute C_EN_I2C_INTF : integer;
  attribute C_EN_I2C_INTF of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_I2C_SLAVE_ADDR : string;
  attribute C_I2C_SLAVE_ADDR of U0 : label is "8'b01110110";
  attribute C_MAX_BURST_LEN : integer;
  attribute C_MAX_BURST_LEN of U0 : label is 16;
  attribute C_M_AXI_ADDR_WIDTH : integer;
  attribute C_M_AXI_ADDR_WIDTH of U0 : label is 32;
  attribute C_M_AXI_DATA_WIDTH : integer;
  attribute C_M_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 3;
  attribute C_TFT_INTERFACE : integer;
  attribute C_TFT_INTERFACE of U0 : label is 0;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of ip2intc_irpt : signal is "xilinx.com:signal:interrupt:1.0 TFT_INTR INTERRUPT";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of ip2intc_irpt : signal is "XIL_INTERFACENAME TFT_INTR, SENSITIVITY EDGE_RISING, PortWidth 1";
  attribute x_interface_info of m_axi_aclk : signal is "xilinx.com:signal:clock:1.0 M_AXI_ACLK CLK";
  attribute x_interface_parameter of m_axi_aclk : signal is "XIL_INTERFACENAME M_AXI_ACLK, ASSOCIATED_BUSIF M_AXI_MM, ASSOCIATED_RESET m_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of m_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 M_AXI_ARESETN RST";
  attribute x_interface_parameter of m_axi_aresetn : signal is "XIL_INTERFACENAME M_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m_axi_arready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM ARREADY";
  attribute x_interface_parameter of m_axi_arready : signal is "XIL_INTERFACENAME M_AXI_MM, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of m_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM ARVALID";
  attribute x_interface_info of m_axi_awready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM AWREADY";
  attribute x_interface_info of m_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM AWVALID";
  attribute x_interface_info of m_axi_bready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM BREADY";
  attribute x_interface_info of m_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM BVALID";
  attribute x_interface_info of m_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM RLAST";
  attribute x_interface_info of m_axi_rready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM RREADY";
  attribute x_interface_info of m_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM RVALID";
  attribute x_interface_info of m_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM WLAST";
  attribute x_interface_info of m_axi_wready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM WREADY";
  attribute x_interface_info of m_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM WVALID";
  attribute x_interface_info of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK";
  attribute x_interface_parameter of s_axi_aclk : signal is "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI_MM, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST";
  attribute x_interface_parameter of s_axi_aresetn : signal is "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MM ARREADY";
  attribute x_interface_info of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MM ARVALID";
  attribute x_interface_info of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MM AWREADY";
  attribute x_interface_info of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MM AWVALID";
  attribute x_interface_info of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MM BREADY";
  attribute x_interface_info of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MM BVALID";
  attribute x_interface_info of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MM RREADY";
  attribute x_interface_info of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MM RVALID";
  attribute x_interface_info of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MM WREADY";
  attribute x_interface_info of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MM WVALID";
  attribute x_interface_info of sys_tft_clk : signal is "xilinx.com:signal:clock:1.0 TFT_CLK CLK";
  attribute x_interface_parameter of sys_tft_clk : signal is "XIL_INTERFACENAME TFT_CLK, ASSOCIATED_BUSIF VGA_INTF:DVI_INTF, FREQ_HZ 25000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of tft_de : signal is "xilinx.com:interface:vga:1.0 VGA_INTF DE";
  attribute x_interface_info of tft_dps : signal is "xilinx.com:interface:vga:1.0 VGA_INTF DPS";
  attribute x_interface_info of tft_hsync : signal is "xilinx.com:interface:vga:1.0 VGA_INTF HSYNC";
  attribute x_interface_info of tft_vga_clk : signal is "xilinx.com:interface:vga:1.0 VGA_INTF CLK";
  attribute x_interface_info of tft_vsync : signal is "xilinx.com:interface:vga:1.0 VGA_INTF VSYNC";
  attribute x_interface_info of m_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM ARADDR";
  attribute x_interface_info of m_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM ARBURST";
  attribute x_interface_info of m_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM ARCACHE";
  attribute x_interface_info of m_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM ARLEN";
  attribute x_interface_info of m_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM ARPROT";
  attribute x_interface_info of m_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM ARSIZE";
  attribute x_interface_info of m_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM AWADDR";
  attribute x_interface_info of m_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM AWBURST";
  attribute x_interface_info of m_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM AWCACHE";
  attribute x_interface_info of m_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM AWLEN";
  attribute x_interface_info of m_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM AWPROT";
  attribute x_interface_info of m_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM AWSIZE";
  attribute x_interface_info of m_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM BRESP";
  attribute x_interface_info of m_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM RDATA";
  attribute x_interface_info of m_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM RRESP";
  attribute x_interface_info of m_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM WDATA";
  attribute x_interface_info of m_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM WSTRB";
  attribute x_interface_info of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MM ARADDR";
  attribute x_interface_info of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MM AWADDR";
  attribute x_interface_parameter of s_axi_awaddr : signal is "XIL_INTERFACENAME S_AXI_MM, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MM BRESP";
  attribute x_interface_info of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MM RDATA";
  attribute x_interface_info of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MM RRESP";
  attribute x_interface_info of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MM WDATA";
  attribute x_interface_info of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MM WSTRB";
  attribute x_interface_info of tft_vga_b : signal is "xilinx.com:interface:vga:1.0 VGA_INTF BLUE";
  attribute x_interface_info of tft_vga_g : signal is "xilinx.com:interface:vga:1.0 VGA_INTF GREEN";
  attribute x_interface_info of tft_vga_r : signal is "xilinx.com:interface:vga:1.0 VGA_INTF RED";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft
     port map (
      ip2intc_irpt => ip2intc_irpt,
      m_axi_aclk => m_axi_aclk,
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arburst(1 downto 0) => m_axi_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => m_axi_arcache(3 downto 0),
      m_axi_aresetn => m_axi_aresetn,
      m_axi_arlen(7 downto 0) => m_axi_arlen(7 downto 0),
      m_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arsize(2 downto 0) => m_axi_arsize(2 downto 0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(31 downto 0) => m_axi_awaddr(31 downto 0),
      m_axi_awburst(1 downto 0) => m_axi_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => m_axi_awcache(3 downto 0),
      m_axi_awlen(7 downto 0) => m_axi_awlen(7 downto 0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awsize(2 downto 0) => m_axi_awsize(2 downto 0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rlast => m_axi_rlast,
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      m_axi_wlast => m_axi_wlast,
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(3 downto 0) => m_axi_wstrb(3 downto 0),
      m_axi_wvalid => m_axi_wvalid,
      md_error => md_error,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(3 downto 0) => s_axi_araddr(3 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(3 downto 0) => s_axi_awaddr(3 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      sys_tft_clk => sys_tft_clk,
      tft_de => tft_de,
      tft_dps => tft_dps,
      tft_dvi_clk_n => NLW_U0_tft_dvi_clk_n_UNCONNECTED,
      tft_dvi_clk_p => NLW_U0_tft_dvi_clk_p_UNCONNECTED,
      tft_dvi_data(11 downto 0) => NLW_U0_tft_dvi_data_UNCONNECTED(11 downto 0),
      tft_hsync => tft_hsync,
      tft_iic_scl_i => '0',
      tft_iic_scl_o => NLW_U0_tft_iic_scl_o_UNCONNECTED,
      tft_iic_scl_t => NLW_U0_tft_iic_scl_t_UNCONNECTED,
      tft_iic_sda_i => '0',
      tft_iic_sda_o => NLW_U0_tft_iic_sda_o_UNCONNECTED,
      tft_iic_sda_t => NLW_U0_tft_iic_sda_t_UNCONNECTED,
      tft_vga_b(5 downto 0) => tft_vga_b(5 downto 0),
      tft_vga_clk => tft_vga_clk,
      tft_vga_g(5 downto 0) => tft_vga_g(5 downto 0),
      tft_vga_r(5 downto 0) => tft_vga_r(5 downto 0),
      tft_vsync => tft_vsync
    );
end STRUCTURE;
