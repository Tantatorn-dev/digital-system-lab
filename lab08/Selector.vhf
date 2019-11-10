--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Selector.vhf
-- /___/   /\     Timestamp : 10/28/2019 09:29:12
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl /home/lord-tantatorn/digital-system-lab/lab08/Selector.vhf -w /home/lord-tantatorn/digital-system-lab/lab08/Selector.sch
--Design Name: Selector
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL M4_1E_HXILINX_Selector -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M4_1E_HXILINX_Selector is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    D2  : in std_logic;
    D3  : in std_logic;
    E   : in std_logic;
    S0  : in std_logic;
    S1  : in std_logic
  );
end M4_1E_HXILINX_Selector;

architecture M4_1E_HXILINX_Selector_V of M4_1E_HXILINX_Selector is
begin
  process (D0, D1, D2, D3, E, S0, S1)
  variable sel : std_logic_vector(1 downto 0);
  begin
    sel := S1&S0;
    if( E = '0') then
    O <= '0';
    else
      case sel is
      when "00" => O <= D0;
      when "01" => O <= D1;
      when "10" => O <= D2;
      when "11" => O <= D3;
      when others => NULL;
      end case;
    end if;
    end process; 
end M4_1E_HXILINX_Selector_V;
----- CELL D2_4E_HXILINX_Selector -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity D2_4E_HXILINX_Selector is
  
port(
    D0  : out std_logic;
    D1  : out std_logic;
    D2  : out std_logic;
    D3  : out std_logic;

    A0  : in std_logic;
    A1  : in std_logic;
    E   : in std_logic
  );
end D2_4E_HXILINX_Selector;

architecture D2_4E_HXILINX_Selector_V of D2_4E_HXILINX_Selector is
  signal d_tmp : std_logic_vector(3 downto 0);
begin
  process (A0, A1, E)
  variable sel   : std_logic_vector(1 downto 0);
  begin
    sel := A1&A0;
    if( E = '0') then
    d_tmp <= "0000";
    else
      case sel is
      when "00" => d_tmp <= "0001";
      when "01" => d_tmp <= "0010";
      when "10" => d_tmp <= "0100";
      when "11" => d_tmp <= "1000";
      when others => NULL;
      end case;
    end if;
  end process; 

    D3 <= d_tmp(3);
    D2 <= d_tmp(2);
    D1 <= d_tmp(1);
    D0 <= d_tmp(0);

end D2_4E_HXILINX_Selector_V;
----- CELL CB2CE_HXILINX_Selector -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB2CE_HXILINX_Selector is
  
port (
    CEO  : out STD_LOGIC;
    Q0   : out STD_LOGIC;
    Q1   : out STD_LOGIC;
    TC   : out STD_LOGIC;
    C    : in STD_LOGIC;
    CE   : in STD_LOGIC;
    CLR  : in STD_LOGIC
    );
end CB2CE_HXILINX_Selector;

architecture Behavioral of CB2CE_HXILINX_Selector is

  signal COUNT : STD_LOGIC_VECTOR(1 downto 0) := (others => '0');
  constant TERMINAL_COUNT : STD_LOGIC_VECTOR(1 downto 0) := (others => '1');
  
begin

process(C, CLR)
begin
  if (CLR='1') then
    COUNT <= (others => '0');
  elsif (C'event and C = '1') then
    if (CE='1') then 
      COUNT <= COUNT+1;
    end if;
  end if;
end process;

TC   <= '1' when (COUNT = TERMINAL_COUNT) else '0';
CEO  <= '1' when ((COUNT = TERMINAL_COUNT) and CE='1') else '0';

Q1 <= COUNT(1);
Q0 <= COUNT(0);

end Behavioral;


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity divideTo200Hz_MUSER_Selector is
   port ( clkin  : in    std_logic; 
          clkout : out   std_logic);
end divideTo200Hz_MUSER_Selector;

architecture BEHAVIORAL of divideTo200Hz_MUSER_Selector is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Selector is
   port ( Clkin   : in    std_logic; 
          M       : in    std_logic_vector (3 downto 0); 
          N       : in    std_logic_vector (3 downto 0); 
          C0      : out   std_logic; 
          C1      : out   std_logic; 
          Output7 : out   std_logic_vector (6 downto 0));
end Selector;

architecture BEHAVIORAL of Selector is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal Carry   : std_logic_vector (3 downto 0);
   signal Output  : std_logic_vector (3 downto 0);
   signal Q0      : std_logic;
   signal Q1      : std_logic;
   signal XLXN_29 : std_logic;
   signal XLXN_36 : std_logic;
   signal XLXN_37 : std_logic;
   signal XLXN_38 : std_logic;
   signal XLXN_48 : std_logic;
   signal XLXN_52 : std_logic;
   component M4_1E_HXILINX_Selector
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             D2 : in    std_logic; 
             D3 : in    std_logic; 
             E  : in    std_logic; 
             S0 : in    std_logic; 
             S1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component BinaryToHex7Seg
      port ( Input  : in    std_logic_vector (3 downto 0); 
             Output : out   std_logic_vector (6 downto 0));
   end component;
   
   component divideTo200Hz_MUSER_Selector
      port ( clkin  : in    std_logic; 
             clkout : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component CB2CE_HXILINX_Selector
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             TC  : out   std_logic);
   end component;
   
   component D2_4E_HXILINX_Selector
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             E  : in    std_logic; 
             D0 : out   std_logic; 
             D1 : out   std_logic; 
             D2 : out   std_logic; 
             D3 : out   std_logic);
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_1_0 : label is "XLXI_1_0_3";
   attribute HU_SET of XLXI_1_1 : label is "XLXI_1_1_2";
   attribute HU_SET of XLXI_1_2 : label is "XLXI_1_2_1";
   attribute HU_SET of XLXI_1_3 : label is "XLXI_1_3_0";
   attribute HU_SET of XLXI_8 : label is "XLXI_8_4";
   attribute HU_SET of XLXI_9 : label is "XLXI_9_5";
begin
   XLXI_1_0 : M4_1E_HXILINX_Selector
      port map (D0=>N(0),
                D1=>M(0),
                D2=>Carry(0),
                D3=>Carry(0),
                E=>XLXN_48,
                S0=>Q0,
                S1=>Q1,
                O=>Output(0));
   
   XLXI_1_1 : M4_1E_HXILINX_Selector
      port map (D0=>N(1),
                D1=>M(1),
                D2=>Carry(1),
                D3=>Carry(1),
                E=>XLXN_48,
                S0=>Q0,
                S1=>Q1,
                O=>Output(1));
   
   XLXI_1_2 : M4_1E_HXILINX_Selector
      port map (D0=>N(2),
                D1=>M(2),
                D2=>Carry(2),
                D3=>Carry(2),
                E=>XLXN_48,
                S0=>Q0,
                S1=>Q1,
                O=>Output(2));
   
   XLXI_1_3 : M4_1E_HXILINX_Selector
      port map (D0=>N(3),
                D1=>M(3),
                D2=>Carry(3),
                D3=>Carry(3),
                E=>XLXN_48,
                S0=>Q0,
                S1=>Q1,
                O=>Output(3));
   
   XLXI_2 : BinaryToHex7Seg
      port map (Input(3 downto 0)=>Output(3 downto 0),
                Output(6 downto 0)=>Output7(6 downto 0));
   
   XLXI_4 : divideTo200Hz_MUSER_Selector
      port map (clkin=>Clkin,
                clkout=>XLXN_29);
   
   XLXI_6 : VCC
      port map (P=>XLXN_48);
   
   XLXI_8 : CB2CE_HXILINX_Selector
      port map (C=>XLXN_29,
                CE=>XLXN_48,
                CLR=>XLXN_52,
                CEO=>open,
                Q0=>Q0,
                Q1=>Q1,
                TC=>open);
   
   XLXI_9 : D2_4E_HXILINX_Selector
      port map (A0=>Q0,
                A1=>Q1,
                E=>XLXN_48,
                D0=>XLXN_36,
                D1=>XLXN_37,
                D2=>XLXN_38,
                D3=>XLXN_38);
   
   XLXI_12 : GND
      port map (G=>XLXN_52);
   
   XLXI_13_0 : GND
      port map (G=>Carry(0));
   
   XLXI_13_1 : GND
      port map (G=>Carry(1));
   
   XLXI_13_2 : GND
      port map (G=>Carry(2));
   
   XLXI_13_3 : GND
      port map (G=>Carry(3));
   
   XLXI_15 : INV
      port map (I=>XLXN_36,
                O=>C0);
   
   XLXI_16 : INV
      port map (I=>XLXN_37,
                O=>C1);
   
   XLXI_17 : GND
      port map (G=>XLXN_38);
   
end BEHAVIORAL;


