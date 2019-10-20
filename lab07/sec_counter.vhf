--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : sec_counter.vhf
-- /___/   /\     Timestamp : 10/21/2019 05:13:21
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl /home/lord-tantatorn/digital-system-lab/lab07/sec_counter.vhf -w /home/lord-tantatorn/digital-system-lab/lab07/sec_counter.sch
--Design Name: sec_counter
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL CD4CE_HXILINX_sec_counter -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CD4CE_HXILINX_sec_counter is
  
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
end CD4CE_HXILINX_sec_counter;

architecture Behavioral of CD4CE_HXILINX_sec_counter is

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

entity sec_counter is
   port ( clear  : in    std_logic; 
          clk_in : in    std_logic; 
          A      : out   std_logic_vector (3 downto 0); 
          B      : out   std_logic_vector (3 downto 0); 
          tclk   : out   std_logic);
end sec_counter;

architecture BEHAVIORAL of sec_counter is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal tc      : std_logic;
   signal XLXN_15 : std_logic;
   signal XLXN_26 : std_logic;
   signal XLXN_45 : std_logic;
   signal XLXN_54 : std_logic;
   signal XLXN_73 : std_logic;
   signal XLXN_75 : std_logic;
   signal B_DUMMY : std_logic_vector (3 downto 0);
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component CD4CE_HXILINX_sec_counter
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
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component AND3B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B1 : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_13 : label is "XLXI_13_0";
   attribute HU_SET of XLXI_14 : label is "XLXI_14_1";
begin
   B(3 downto 0) <= B_DUMMY(3 downto 0);
   XLXI_3 : VCC
      port map (P=>XLXN_45);
   
   XLXI_4 : INV
      port map (I=>B_DUMMY(0),
                O=>XLXN_15);
   
   XLXI_6 : AND4
      port map (I0=>XLXN_26,
                I1=>B_DUMMY(2),
                I2=>B_DUMMY(1),
                I3=>XLXN_15,
                O=>tc);
   
   XLXI_8 : INV
      port map (I=>B_DUMMY(3),
                O=>XLXN_26);
   
   XLXI_9 : OR2
      port map (I0=>tc,
                I1=>clear,
                O=>XLXN_54);
   
   XLXI_13 : CD4CE_HXILINX_sec_counter
      port map (C=>clk_in,
                CE=>XLXN_45,
                CLR=>XLXN_54,
                CEO=>XLXN_73,
                Q0=>A(0),
                Q1=>A(1),
                Q2=>A(2),
                Q3=>A(3),
                TC=>open);
   
   XLXI_14 : CD4CE_HXILINX_sec_counter
      port map (C=>clk_in,
                CE=>XLXN_73,
                CLR=>XLXN_54,
                CEO=>open,
                Q0=>B_DUMMY(0),
                Q1=>B_DUMMY(1),
                Q2=>B_DUMMY(2),
                Q3=>B_DUMMY(3),
                TC=>open);
   
   XLXI_20 : AND2
      port map (I0=>XLXN_75,
                I1=>XLXN_73,
                O=>tclk);
   
   XLXI_21 : AND3B1
      port map (I0=>B_DUMMY(0),
                I1=>B_DUMMY(2),
                I2=>B_DUMMY(1),
                O=>XLXN_75);
   
end BEHAVIORAL;


