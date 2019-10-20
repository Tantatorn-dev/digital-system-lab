--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : control.vhf
-- /___/   /\     Timestamp : 10/21/2019 05:13:21
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl /home/lord-tantatorn/digital-system-lab/lab07/control.vhf -w /home/lord-tantatorn/digital-system-lab/lab07/control.sch
--Design Name: control
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL FTC_HXILINX_control -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FTC_HXILINX_control is
generic(
    INIT : bit := '0'
    );

  port (
    Q   : out STD_LOGIC := '0';
    C   : in STD_LOGIC;
    CLR : in STD_LOGIC;
    T   : in STD_LOGIC
    );
end FTC_HXILINX_control;

architecture Behavioral of FTC_HXILINX_control is
signal q_tmp : std_logic := TO_X01(INIT);
begin

process(C, CLR)
begin
  if (CLR='1') then
    q_tmp <= '0';
  elsif (C'event and C = '1') then
    if(T='1') then
      q_tmp <= not q_tmp;
    end if;
  end if;  
end process;

Q <= q_tmp;

end Behavioral;


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity divideTo100Hz_MUSER_control is
   port ( clk_in  : in    std_logic; 
          clk_out : out   std_logic);
end divideTo100Hz_MUSER_control;

architecture BEHAVIORAL of divideTo100Hz_MUSER_control is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity divideTo1Hz_MUSER_control is
   port ( clk_in  : in    std_logic; 
          clk_out : out   std_logic);
end divideTo1Hz_MUSER_control;

architecture BEHAVIORAL of divideTo1Hz_MUSER_control is
   signal XLXN_1  : std_logic;
   signal XLXN_2  : std_logic;
   signal XLXN_3  : std_logic;
   signal XLXN_4  : std_logic;
   component divideTo100Hz_MUSER_control
      port ( clk_in  : in    std_logic; 
             clk_out : out   std_logic);
   end component;
   
   component divide5
      port ( CLK_IN  : in    std_logic; 
             CLK_OUT : out   std_logic);
   end component;
   
   component divide2
      port ( CLK_IN  : in    std_logic; 
             CLK_OUT : out   std_logic);
   end component;
   
begin
   XLXI_2 : divideTo100Hz_MUSER_control
      port map (clk_in=>clk_in,
                clk_out=>XLXN_1);
   
   XLXI_3 : divide5
      port map (CLK_IN=>XLXN_1,
                CLK_OUT=>XLXN_2);
   
   XLXI_4 : divide5
      port map (CLK_IN=>XLXN_2,
                CLK_OUT=>XLXN_3);
   
   XLXI_5 : divide2
      port map (CLK_IN=>XLXN_3,
                CLK_OUT=>XLXN_4);
   
   XLXI_6 : divide2
      port map (CLK_IN=>XLXN_4,
                CLK_OUT=>clk_out);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity control is
   port ( clk_in      : in    std_logic; 
          start_stop  : in    std_logic; 
          sw_clear    : in    std_logic; 
          clear       : out   std_logic; 
          clk_counter : out   std_logic; 
          clk_display : out   std_logic);
end control;

architecture BEHAVIORAL of control is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_1      : std_logic;
   signal XLXN_3      : std_logic;
   signal XLXN_8      : std_logic;
   signal XLXN_16     : std_logic;
   signal XLXN_17     : std_logic;
   component divideTo1Hz_MUSER_control
      port ( clk_in  : in    std_logic; 
             clk_out : out   std_logic);
   end component;
   
   component divideTo100Hz_MUSER_control
      port ( clk_in  : in    std_logic; 
             clk_out : out   std_logic);
   end component;
   
   component FTC_HXILINX_control
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             T   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_3 : label is "XLXI_3_4";
begin
   XLXI_1 : divideTo1Hz_MUSER_control
      port map (clk_in=>XLXN_8,
                clk_out=>clk_counter);
   
   XLXI_2 : divideTo100Hz_MUSER_control
      port map (clk_in=>clk_in,
                clk_out=>clk_display);
   
   XLXI_3 : FTC_HXILINX_control
      port map (C=>start_stop,
                CLR=>XLXN_3,
                T=>XLXN_1,
                Q=>XLXN_16);
   
   XLXI_4 : VCC
      port map (P=>XLXN_1);
   
   XLXI_5 : GND
      port map (G=>XLXN_3);
   
   XLXI_6 : AND2
      port map (I0=>XLXN_16,
                I1=>clk_in,
                O=>XLXN_8);
   
   XLXI_7 : AND2
      port map (I0=>sw_clear,
                I1=>XLXN_17,
                O=>clear);
   
   XLXI_8 : INV
      port map (I=>XLXN_16,
                O=>XLXN_17);
   
end BEHAVIORAL;


