--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : divideTo100Hz.vhf
-- /___/   /\     Timestamp : 10/21/2019 05:13:22
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl /home/lord-tantatorn/digital-system-lab/lab07/divideTo100Hz.vhf -w /home/lord-tantatorn/digital-system-lab/lab07/divideTo100Hz.sch
--Design Name: divideTo100Hz
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

entity divideTo100Hz is
   port ( clk_in  : in    std_logic; 
          clk_out : out   std_logic);
end divideTo100Hz;

architecture BEHAVIORAL of divideTo100Hz is
   signal XLXN_1  : std_logic;
   signal XLXN_3  : std_logic;
   signal XLXN_5  : std_logic;
   signal XLXN_9  : std_logic;
   signal XLXN_11 : std_logic;
   signal XLXN_15 : std_logic;
   signal XLXN_16 : std_logic;
   signal XLXN_17 : std_logic;
   signal XLXN_18 : std_logic;
   signal XLXN_19 : std_logic;
   component divide2
      port ( CLK_IN  : in    std_logic; 
             CLK_OUT : out   std_logic);
   end component;
   
   component divide5
      port ( CLK_IN  : in    std_logic; 
             CLK_OUT : out   std_logic);
   end component;
   
begin
   XLXI_1 : divide2
      port map (CLK_IN=>clk_in,
                CLK_OUT=>XLXN_1);
   
   XLXI_2 : divide5
      port map (CLK_IN=>XLXN_1,
                CLK_OUT=>XLXN_15);
   
   XLXI_5 : divide5
      port map (CLK_IN=>XLXN_3,
                CLK_OUT=>XLXN_16);
   
   XLXI_6 : divide5
      port map (CLK_IN=>XLXN_5,
                CLK_OUT=>XLXN_17);
   
   XLXI_7 : divide5
      port map (CLK_IN=>XLXN_9,
                CLK_OUT=>XLXN_18);
   
   XLXI_8 : divide5
      port map (CLK_IN=>XLXN_11,
                CLK_OUT=>XLXN_19);
   
   XLXI_9 : divide2
      port map (CLK_IN=>XLXN_15,
                CLK_OUT=>XLXN_3);
   
   XLXI_10 : divide2
      port map (CLK_IN=>XLXN_16,
                CLK_OUT=>XLXN_5);
   
   XLXI_11 : divide2
      port map (CLK_IN=>XLXN_17,
                CLK_OUT=>XLXN_9);
   
   XLXI_12 : divide2
      port map (CLK_IN=>XLXN_18,
                CLK_OUT=>XLXN_11);
   
   XLXI_14 : divide2
      port map (CLK_IN=>XLXN_19,
                CLK_OUT=>clk_out);
   
end BEHAVIORAL;


