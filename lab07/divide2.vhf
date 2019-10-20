--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : divide2.vhf
-- /___/   /\     Timestamp : 10/21/2019 05:13:21
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl /home/lord-tantatorn/digital-system-lab/lab07/divide2.vhf -w /home/lord-tantatorn/digital-system-lab/lab06/divide2.sch
--Design Name: divide2
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

entity divide2 is
   port ( CLK_IN  : in    std_logic; 
          CLK_OUT : out   std_logic);
end divide2;

architecture BEHAVIORAL of divide2 is
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


