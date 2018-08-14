-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (win64) Build 1733598 Wed Dec 14 22:35:39 MST 2016
-- Date        : Mon Aug 13 20:20:20 2018
-- Host        : WRFA1EF running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Prj/xilinxPrj/MicroblazePrj/Prj4Interrupt/Prj/mb_interrupt/mb_interrupt.srcs/sources_1/bd/mb_interrupt/ip/mb_interrupt_microblaze_0_xlconcat_1/mb_interrupt_microblaze_0_xlconcat_1_sim_netlist.vhdl
-- Design      : mb_interrupt_microblaze_0_xlconcat_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_interrupt_microblaze_0_xlconcat_1 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mb_interrupt_microblaze_0_xlconcat_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mb_interrupt_microblaze_0_xlconcat_1 : entity is "mb_interrupt_microblaze_0_xlconcat_1,xlconcat,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of mb_interrupt_microblaze_0_xlconcat_1 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of mb_interrupt_microblaze_0_xlconcat_1 : entity is "xlconcat,Vivado 2016.4";
end mb_interrupt_microblaze_0_xlconcat_1;

architecture STRUCTURE of mb_interrupt_microblaze_0_xlconcat_1 is
  signal \^in0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^in1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^in2\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  \^in0\(0) <= In0(0);
  \^in1\(0) <= In1(0);
  \^in2\(0) <= In2(0);
  dout(2) <= \^in2\(0);
  dout(1) <= \^in1\(0);
  dout(0) <= \^in0\(0);
end STRUCTURE;
