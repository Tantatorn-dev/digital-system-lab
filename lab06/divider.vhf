--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : divider.vhf
-- /___/   /\     Timestamp : 10/06/2019 22:36:37
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl /home/lord-tantatorn/digital-system-lab/lab06/divider.vhf -w /home/lord-tantatorn/digital-system-lab/lab06/divider.sch
--Design Name: divider
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

entity divide5_MUSER_divider is
   port ( CLK_IN  : in    std_logic; 
          CLK_OUT : out   std_logic);
end divide5_MUSER_divider;

architecture BEHAVIORAL of divide5_MUSER_divider is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity divide2_MUSER_divider is
   port ( CLK_IN  : in    std_logic; 
          CLK_OUT : out   std_logic);
end divide2_MUSER_divider;

architecture BEHAVIORAL of divide2_MUSER_divider is
   attribute BOX_TYPE   : string ;
   signal XLXN_34       : std_logic;
   signal XLXN_115      : std_logic;
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
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
begin
   CLK_OUT <= CLK_OUT_DUMMY;
   XLXI_5 : FDC
      port map (C=>CLK_IN,
                CLR=>XLXN_115,
                D=>XLXN_34,
                Q=>CLK_OUT_DUMMY);
   
   XLXI_10 : INV
      port map (I=>CLK_OUT_DUMMY,
                O=>XLXN_34);
   
   XLXI_60 : GND
      port map (G=>XLXN_115);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity divider is
   port ( clk_in  : in    std_logic; 
          clk_out : out   std_logic);
end divider;

architecture BEHAVIORAL of divider is
   signal XLXN_2  : std_logic;
   signal XLXN_3  : std_logic;
   signal XLXN_4  : std_logic;
   signal XLXN_5  : std_logic;
   signal XLXN_6  : std_logic;
   signal XLXN_7  : std_logic;
   signal XLXN_12 : std_logic;
   signal XLXN_19 : std_logic;
   signal XLXN_22 : std_logic;
   signal XLXN_23 : std_logic;
   component divide2_MUSER_divider
      port ( CLK_IN  : in    std_logic; 
             CLK_OUT : out   std_logic);
   end component;
   
   component divide5_MUSER_divider
      port ( CLK_IN  : in    std_logic; 
             CLK_OUT : out   std_logic);
   end component;
   
begin
   XLXI_1 : divide2_MUSER_divider
      port map (CLK_IN=>clk_in,
                CLK_OUT=>XLXN_2);
   
   XLXI_2 : divide5_MUSER_divider
      port map (CLK_IN=>XLXN_2,
                CLK_OUT=>XLXN_3);
   
   XLXI_3 : divide2_MUSER_divider
      port map (CLK_IN=>XLXN_3,
                CLK_OUT=>XLXN_4);
   
   XLXI_4 : divide5_MUSER_divider
      port map (CLK_IN=>XLXN_4,
                CLK_OUT=>XLXN_5);
   
   XLXI_5 : divide2_MUSER_divider
      port map (CLK_IN=>XLXN_5,
                CLK_OUT=>XLXN_6);
   
   XLXI_6 : divide5_MUSER_divider
      port map (CLK_IN=>XLXN_6,
                CLK_OUT=>XLXN_7);
   
   XLXI_7 : divide2_MUSER_divider
      port map (CLK_IN=>XLXN_7,
                CLK_OUT=>XLXN_12);
   
   XLXI_12 : divide5_MUSER_divider
      port map (CLK_IN=>XLXN_12,
                CLK_OUT=>XLXN_19);
   
   XLXI_13 : divide2_MUSER_divider
      port map (CLK_IN=>XLXN_19,
                CLK_OUT=>XLXN_22);
   
   XLXI_16 : divide5_MUSER_divider
      port map (CLK_IN=>XLXN_22,
                CLK_OUT=>XLXN_23);
   
   XLXI_17 : divide2_MUSER_divider
      port map (CLK_IN=>XLXN_23,
                CLK_OUT=>clk_out);
   
end BEHAVIORAL;


