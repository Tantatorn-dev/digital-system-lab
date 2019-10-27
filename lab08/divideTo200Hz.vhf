--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : divideTo200Hz.vhf
-- /___/   /\     Timestamp : 10/27/2019 20:52:27
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl /home/lord-tantatorn/digital-system-lab/lab08/divideTo200Hz.vhf -w /home/lord-tantatorn/digital-system-lab/lab08/divideTo200Hz.sch
--Design Name: divideTo200Hz
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

entity divideTo200Hz is
   port ( clkin  : in    std_logic; 
          clkout : out   std_logic);
end divideTo200Hz;

architecture BEHAVIORAL of divideTo200Hz is
   signal XLXN_3  : std_logic;
   signal XLXN_4  : std_logic;
   signal XLXN_5  : std_logic;
   signal XLXN_6  : std_logic;
   signal XLXN_7  : std_logic;
   signal XLXN_9  : std_logic;
   signal XLXN_10 : std_logic;
   signal XLXN_11 : std_logic;
   signal XLXN_12 : std_logic;
   component divide5
      port ( CLK_IN  : in    std_logic; 
             CLK_OUT : out   std_logic);
   end component;
   
   component divide2
      port ( CLK_IN  : in    std_logic; 
             CLK_OUT : out   std_logic);
   end component;
   
begin
   XLXI_1 : divide5
      port map (CLK_IN=>clkin,
                CLK_OUT=>XLXN_3);
   
   XLXI_2 : divide5
      port map (CLK_IN=>XLXN_3,
                CLK_OUT=>XLXN_4);
   
   XLXI_3 : divide5
      port map (CLK_IN=>XLXN_4,
                CLK_OUT=>XLXN_5);
   
   XLXI_4 : divide5
      port map (CLK_IN=>XLXN_5,
                CLK_OUT=>XLXN_6);
   
   XLXI_5 : divide5
      port map (CLK_IN=>XLXN_6,
                CLK_OUT=>XLXN_7);
   
   XLXI_6 : divide2
      port map (CLK_IN=>XLXN_7,
                CLK_OUT=>XLXN_9);
   
   XLXI_7 : divide2
      port map (CLK_IN=>XLXN_9,
                CLK_OUT=>XLXN_10);
   
   XLXI_8 : divide2
      port map (CLK_IN=>XLXN_10,
                CLK_OUT=>XLXN_11);
   
   XLXI_9 : divide2
      port map (CLK_IN=>XLXN_11,
                CLK_OUT=>XLXN_12);
   
   XLXI_10 : divide2
      port map (CLK_IN=>XLXN_12,
                CLK_OUT=>clkout);
   
end BEHAVIORAL;


