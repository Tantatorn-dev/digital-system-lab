--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : display.vhf
-- /___/   /\     Timestamp : 10/21/2019 05:13:22
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl /home/lord-tantatorn/digital-system-lab/lab07/display.vhf -w /home/lord-tantatorn/digital-system-lab/lab07/display.sch
--Design Name: display
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL INV4_HXILINX_display -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity INV4_HXILINX_display is
  
port(
    O0  : out std_logic;
    O1  : out std_logic;
    O2  : out std_logic;
    O3  : out std_logic;

    I0  : in std_logic;
    I1  : in std_logic;
    I2  : in std_logic;
    I3  : in std_logic
  );
end INV4_HXILINX_display;

architecture INV4_HXILINX_display_V of INV4_HXILINX_display is
begin
  O0 <= not I0 ;
  O1 <= not I1 ;
  O2 <= not I2 ;
  O3 <= not I3 ;
end INV4_HXILINX_display_V;
----- CELL M4_1E_HXILINX_display -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M4_1E_HXILINX_display is
  
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
end M4_1E_HXILINX_display;

architecture M4_1E_HXILINX_display_V of M4_1E_HXILINX_display is
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
end M4_1E_HXILINX_display_V;
----- CELL D2_4E_HXILINX_display -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity D2_4E_HXILINX_display is
  
port(
    D0  : out std_logic;
    D1  : out std_logic;
    D2  : out std_logic;
    D3  : out std_logic;

    A0  : in std_logic;
    A1  : in std_logic;
    E   : in std_logic
  );
end D2_4E_HXILINX_display;

architecture D2_4E_HXILINX_display_V of D2_4E_HXILINX_display is
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

end D2_4E_HXILINX_display_V;
----- CELL CB2CE_HXILINX_display -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB2CE_HXILINX_display is
  
port (
    CEO  : out STD_LOGIC;
    Q0   : out STD_LOGIC;
    Q1   : out STD_LOGIC;
    TC   : out STD_LOGIC;
    C    : in STD_LOGIC;
    CE   : in STD_LOGIC;
    CLR  : in STD_LOGIC
    );
end CB2CE_HXILINX_display;

architecture Behavioral of CB2CE_HXILINX_display is

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

entity display is
   port ( A1   : in    std_logic_vector (3 downto 0); 
          A2   : in    std_logic_vector (3 downto 0); 
          B1   : in    std_logic_vector (3 downto 0); 
          B2   : in    std_logic_vector (3 downto 0); 
          clk  : in    std_logic; 
          C0   : out   std_logic; 
          C1   : out   std_logic; 
          C2   : out   std_logic; 
          C3   : out   std_logic; 
          data : out   std_logic_vector (6 downto 0));
end display;

architecture BEHAVIORAL of display is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal data_in                : std_logic_vector (3 downto 0);
   signal XLXN_31                : std_logic;
   signal XLXN_47                : std_logic;
   signal XLXN_91                : std_logic;
   signal XLXN_92                : std_logic;
   signal XLXN_93                : std_logic;
   signal XLXN_94                : std_logic;
   signal XLXN_95                : std_logic;
   signal XLXN_96                : std_logic;
   signal XLXI_13_CLR_openSignal : std_logic;
   component BCDToSevSeg
      port ( Input  : in    std_logic_vector (3 downto 0); 
             SevSeg : out   std_logic_vector (6 downto 0));
   end component;
   
   component M4_1E_HXILINX_display
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             D2 : in    std_logic; 
             D3 : in    std_logic; 
             E  : in    std_logic; 
             S0 : in    std_logic; 
             S1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component CB2CE_HXILINX_display
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             TC  : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component D2_4E_HXILINX_display
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             E  : in    std_logic; 
             D0 : out   std_logic; 
             D1 : out   std_logic; 
             D2 : out   std_logic; 
             D3 : out   std_logic);
   end component;
   
   component INV4_HXILINX_display
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O0 : out   std_logic; 
             O1 : out   std_logic; 
             O2 : out   std_logic; 
             O3 : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_8 : label is "XLXI_8_17";
   attribute HU_SET of XLXI_9 : label is "XLXI_9_18";
   attribute HU_SET of XLXI_10 : label is "XLXI_10_19";
   attribute HU_SET of XLXI_11 : label is "XLXI_11_20";
   attribute HU_SET of XLXI_13 : label is "XLXI_13_21";
   attribute HU_SET of XLXI_30 : label is "XLXI_30_22";
   attribute HU_SET of XLXI_31 : label is "XLXI_31_23";
begin
   XLXI_1 : BCDToSevSeg
      port map (Input(3 downto 0)=>data_in(3 downto 0),
                SevSeg(6 downto 0)=>data(6 downto 0));
   
   XLXI_8 : M4_1E_HXILINX_display
      port map (D0=>B2(3),
                D1=>B1(3),
                D2=>A2(3),
                D3=>A1(3),
                E=>XLXN_31,
                S0=>XLXN_91,
                S1=>XLXN_92,
                O=>data_in(3));
   
   XLXI_9 : M4_1E_HXILINX_display
      port map (D0=>B2(2),
                D1=>B1(2),
                D2=>A2(2),
                D3=>A1(2),
                E=>XLXN_31,
                S0=>XLXN_91,
                S1=>XLXN_92,
                O=>data_in(2));
   
   XLXI_10 : M4_1E_HXILINX_display
      port map (D0=>B2(1),
                D1=>B1(1),
                D2=>A2(1),
                D3=>A1(1),
                E=>XLXN_31,
                S0=>XLXN_91,
                S1=>XLXN_92,
                O=>data_in(1));
   
   XLXI_11 : M4_1E_HXILINX_display
      port map (D0=>B2(0),
                D1=>B1(0),
                D2=>A2(0),
                D3=>A1(0),
                E=>XLXN_31,
                S0=>XLXN_91,
                S1=>XLXN_92,
                O=>data_in(0));
   
   XLXI_13 : CB2CE_HXILINX_display
      port map (C=>clk,
                CE=>XLXN_47,
                CLR=>XLXI_13_CLR_openSignal,
                CEO=>open,
                Q0=>XLXN_91,
                Q1=>XLXN_92,
                TC=>open);
   
   XLXI_18 : VCC
      port map (P=>XLXN_47);
   
   XLXI_29 : VCC
      port map (P=>XLXN_31);
   
   XLXI_30 : D2_4E_HXILINX_display
      port map (A0=>XLXN_91,
                A1=>XLXN_92,
                E=>XLXN_31,
                D0=>XLXN_93,
                D1=>XLXN_94,
                D2=>XLXN_95,
                D3=>XLXN_96);
   
   XLXI_31 : INV4_HXILINX_display
      port map (I0=>XLXN_96,
                I1=>XLXN_95,
                I2=>XLXN_94,
                I3=>XLXN_93,
                O0=>C0,
                O1=>C2,
                O2=>C1,
                O3=>C3);
   
end BEHAVIORAL;


