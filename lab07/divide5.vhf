--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : divide5.vhf
-- /___/   /\     Timestamp : 10/21/2019 05:13:22
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl /home/lord-tantatorn/digital-system-lab/lab07/divide5.vhf -w /home/lord-tantatorn/digital-system-lab/lab06/divide5.sch
--Design Name: divide5
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity divide5 is
   port ( CLK_IN  : in    std_logic; 
          CLK_OUT : out   std_logic);
end divide5;

architecture BEHAVIORAL of divide5 is
   attribute BOX_TYPE   : string ;
   signal XLXN_3        : std_logic;
   signal XLXN_12       : std_logic;
   signal XLXN_13       : std_logic;
   signal XLXN_14       : std_logic;
   signal XLXN_17       : std_logic;
   signal XLXN_20       : std_logic;
   signal CLK_OUT_DUMMY : std_logic;
   component FDC
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDC : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
begin
   CLK_OUT <= CLK_OUT_DUMMY;
   XLXI_1 : FDC
      port map (C=>CLK_IN,
                CLR=>XLXN_20,
                D=>XLXN_12,
                Q=>XLXN_17);
   
   XLXI_4 : INV
      port map (I=>XLXN_17,
                O=>XLXN_12);
   
   XLXI_7 : FDC
      port map (C=>XLXN_12,
                CLR=>XLXN_20,
                D=>XLXN_13,
                Q=>XLXN_3);
   
   XLXI_8 : INV
      port map (I=>XLXN_3,
                O=>XLXN_13);
   
   XLXI_9 : FDC
      port map (C=>XLXN_13,
                CLR=>XLXN_20,
                D=>XLXN_14,
                Q=>CLK_OUT_DUMMY);
   
   XLXI_10 : INV
      port map (I=>CLK_OUT_DUMMY,
                O=>XLXN_14);
   
   XLXI_19 : AND2
      port map (I0=>CLK_OUT_DUMMY,
                I1=>XLXN_17,
                O=>XLXN_20);
   
end BEHAVIORAL;


