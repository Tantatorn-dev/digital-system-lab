--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : min_counter.vhf
-- /___/   /\     Timestamp : 10/21/2019 05:13:21
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl /home/lord-tantatorn/digital-system-lab/lab07/min_counter.vhf -w /home/lord-tantatorn/digital-system-lab/lab07/min_counter.sch
--Design Name: min_counter
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL CD4CE_HXILINX_min_counter -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CD4CE_HXILINX_min_counter is
  
port (
    CEO  : out STD_LOGIC;
    Q0   : out STD_LOGIC;
    Q1   : out STD_LOGIC;
    Q2   : out STD_LOGIC;
    Q3   : out STD_LOGIC;
    TC   : out STD_LOGIC;
    C    : in STD_LOGIC;
    CE   : in STD_LOGIC;
    CLR  : in STD_LOGIC
    );
end CD4CE_HXILINX_min_counter;

architecture Behavioral of CD4CE_HXILINX_min_counter is

  signal COUNT : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
  constant TERMINAL_COUNT : STD_LOGIC_VECTOR(3 downto 0) := "1001";
  
begin

process(C, CLR)
begin
  if (CLR='1') then
    COUNT <= (others => '0');
  elsif (C'event and C = '1') then
    if (CE='1') then 

      if (COUNT = "1001") then
        COUNT <= "0000";
      elsif (COUNT = "1011") then
        COUNT <= "0110";
      elsif (COUNT = "1101") then
        COUNT <= "0100";
      elsif (COUNT = "1111") then
        COUNT <= "0010";
      else
        COUNT <= COUNT+1;
      end if;

    end if;
  end if;
end process;

TC   <= '0' when (CLR = '1') else
        '1' when (COUNT = TERMINAL_COUNT) else '0';
CEO  <= '1' when ((COUNT = TERMINAL_COUNT) and CE='1') else '0';

Q3   <= COUNT(3);
Q2   <= COUNT(2);
Q1   <= COUNT(1);
Q0   <= COUNT(0);

end Behavioral;


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity min_counter is
   port ( clear  : in    std_logic; 
          clk_in : in    std_logic; 
          A      : out   std_logic_vector (3 downto 0); 
          B      : out   std_logic_vector (3 downto 0));
end min_counter;

architecture BEHAVIORAL of min_counter is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal XLXN_45 : std_logic;
   signal XLXN_55 : std_logic;
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component CD4CE_HXILINX_min_counter
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             Q2  : out   std_logic; 
             Q3  : out   std_logic; 
             TC  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_13 : label is "XLXI_13_2";
   attribute HU_SET of XLXI_14 : label is "XLXI_14_3";
begin
   XLXI_1 : VCC
      port map (P=>XLXN_45);
   
   XLXI_13 : CD4CE_HXILINX_min_counter
      port map (C=>clk_in,
                CE=>XLXN_45,
                CLR=>clear,
                CEO=>XLXN_55,
                Q0=>A(0),
                Q1=>A(1),
                Q2=>A(2),
                Q3=>A(3),
                TC=>open);
   
   XLXI_14 : CD4CE_HXILINX_min_counter
      port map (C=>clk_in,
                CE=>XLXN_55,
                CLR=>clear,
                CEO=>open,
                Q0=>B(0),
                Q1=>B(1),
                Q2=>B(2),
                Q3=>B(3),
                TC=>open);
   
end BEHAVIORAL;


