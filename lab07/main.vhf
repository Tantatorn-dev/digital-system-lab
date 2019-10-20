--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : main.vhf
-- /___/   /\     Timestamp : 10/21/2019 05:13:21
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl /home/lord-tantatorn/digital-system-lab/lab07/main.vhf -w /home/lord-tantatorn/digital-system-lab/lab07/main.sch
--Design Name: main
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL FTC_HXILINX_main -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FTC_HXILINX_main is
generic(
    INIT : bit := '0'
    );

  port (
    Q   : out STD_LOGIC := '0';
    C   : in STD_LOGIC;
    CLR : in STD_LOGIC;
    T   : in STD_LOGIC
    );
end FTC_HXILINX_main;

architecture Behavioral of FTC_HXILINX_main is
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

----- CELL INV4_HXILINX_main -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity INV4_HXILINX_main is
  
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
end INV4_HXILINX_main;

architecture INV4_HXILINX_main_V of INV4_HXILINX_main is
begin
  O0 <= not I0 ;
  O1 <= not I1 ;
  O2 <= not I2 ;
  O3 <= not I3 ;
end INV4_HXILINX_main_V;
----- CELL CD4CE_HXILINX_main -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CD4CE_HXILINX_main is
  
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
end CD4CE_HXILINX_main;

architecture Behavioral of CD4CE_HXILINX_main is

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

----- CELL M4_1E_HXILINX_main -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M4_1E_HXILINX_main is
  
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
end M4_1E_HXILINX_main;

architecture M4_1E_HXILINX_main_V of M4_1E_HXILINX_main is
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
end M4_1E_HXILINX_main_V;
----- CELL D2_4E_HXILINX_main -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity D2_4E_HXILINX_main is
  
port(
    D0  : out std_logic;
    D1  : out std_logic;
    D2  : out std_logic;
    D3  : out std_logic;

    A0  : in std_logic;
    A1  : in std_logic;
    E   : in std_logic
  );
end D2_4E_HXILINX_main;

architecture D2_4E_HXILINX_main_V of D2_4E_HXILINX_main is
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

end D2_4E_HXILINX_main_V;
----- CELL CB2CE_HXILINX_main -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB2CE_HXILINX_main is
  
port (
    CEO  : out STD_LOGIC;
    Q0   : out STD_LOGIC;
    Q1   : out STD_LOGIC;
    TC   : out STD_LOGIC;
    C    : in STD_LOGIC;
    CE   : in STD_LOGIC;
    CLR  : in STD_LOGIC
    );
end CB2CE_HXILINX_main;

architecture Behavioral of CB2CE_HXILINX_main is

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

entity min_counter_MUSER_main is
   port ( clear  : in    std_logic; 
          clk_in : in    std_logic; 
          A      : out   std_logic_vector (3 downto 0); 
          B      : out   std_logic_vector (3 downto 0));
end min_counter_MUSER_main;

architecture BEHAVIORAL of min_counter_MUSER_main is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal XLXN_45 : std_logic;
   signal XLXN_55 : std_logic;
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component CD4CE_HXILINX_main
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
   
   attribute HU_SET of XLXI_13 : label is "XLXI_13_5";
   attribute HU_SET of XLXI_14 : label is "XLXI_14_6";
begin
   XLXI_1 : VCC
      port map (P=>XLXN_45);
   
   XLXI_13 : CD4CE_HXILINX_main
      port map (C=>clk_in,
                CE=>XLXN_45,
                CLR=>clear,
                CEO=>XLXN_55,
                Q0=>A(0),
                Q1=>A(1),
                Q2=>A(2),
                Q3=>A(3),
                TC=>open);
   
   XLXI_14 : CD4CE_HXILINX_main
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity sec_counter_MUSER_main is
   port ( clear  : in    std_logic; 
          clk_in : in    std_logic; 
          A      : out   std_logic_vector (3 downto 0); 
          B      : out   std_logic_vector (3 downto 0); 
          tclk   : out   std_logic);
end sec_counter_MUSER_main;

architecture BEHAVIORAL of sec_counter_MUSER_main is
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
   
   component CD4CE_HXILINX_main
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
   
   attribute HU_SET of XLXI_13 : label is "XLXI_13_7";
   attribute HU_SET of XLXI_14 : label is "XLXI_14_8";
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
   
   XLXI_13 : CD4CE_HXILINX_main
      port map (C=>clk_in,
                CE=>XLXN_45,
                CLR=>XLXN_54,
                CEO=>XLXN_73,
                Q0=>A(0),
                Q1=>A(1),
                Q2=>A(2),
                Q3=>A(3),
                TC=>open);
   
   XLXI_14 : CD4CE_HXILINX_main
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity display_MUSER_main is
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
end display_MUSER_main;

architecture BEHAVIORAL of display_MUSER_main is
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
   
   component M4_1E_HXILINX_main
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             D2 : in    std_logic; 
             D3 : in    std_logic; 
             E  : in    std_logic; 
             S0 : in    std_logic; 
             S1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component CB2CE_HXILINX_main
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
   
   component D2_4E_HXILINX_main
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             E  : in    std_logic; 
             D0 : out   std_logic; 
             D1 : out   std_logic; 
             D2 : out   std_logic; 
             D3 : out   std_logic);
   end component;
   
   component INV4_HXILINX_main
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O0 : out   std_logic; 
             O1 : out   std_logic; 
             O2 : out   std_logic; 
             O3 : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_8 : label is "XLXI_8_9";
   attribute HU_SET of XLXI_9 : label is "XLXI_9_10";
   attribute HU_SET of XLXI_10 : label is "XLXI_10_11";
   attribute HU_SET of XLXI_11 : label is "XLXI_11_12";
   attribute HU_SET of XLXI_13 : label is "XLXI_13_13";
   attribute HU_SET of XLXI_30 : label is "XLXI_30_14";
   attribute HU_SET of XLXI_31 : label is "XLXI_31_15";
begin
   XLXI_1 : BCDToSevSeg
      port map (Input(3 downto 0)=>data_in(3 downto 0),
                SevSeg(6 downto 0)=>data(6 downto 0));
   
   XLXI_8 : M4_1E_HXILINX_main
      port map (D0=>B2(3),
                D1=>B1(3),
                D2=>A2(3),
                D3=>A1(3),
                E=>XLXN_31,
                S0=>XLXN_91,
                S1=>XLXN_92,
                O=>data_in(3));
   
   XLXI_9 : M4_1E_HXILINX_main
      port map (D0=>B2(2),
                D1=>B1(2),
                D2=>A2(2),
                D3=>A1(2),
                E=>XLXN_31,
                S0=>XLXN_91,
                S1=>XLXN_92,
                O=>data_in(2));
   
   XLXI_10 : M4_1E_HXILINX_main
      port map (D0=>B2(1),
                D1=>B1(1),
                D2=>A2(1),
                D3=>A1(1),
                E=>XLXN_31,
                S0=>XLXN_91,
                S1=>XLXN_92,
                O=>data_in(1));
   
   XLXI_11 : M4_1E_HXILINX_main
      port map (D0=>B2(0),
                D1=>B1(0),
                D2=>A2(0),
                D3=>A1(0),
                E=>XLXN_31,
                S0=>XLXN_91,
                S1=>XLXN_92,
                O=>data_in(0));
   
   XLXI_13 : CB2CE_HXILINX_main
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
   
   XLXI_30 : D2_4E_HXILINX_main
      port map (A0=>XLXN_91,
                A1=>XLXN_92,
                E=>XLXN_31,
                D0=>XLXN_93,
                D1=>XLXN_94,
                D2=>XLXN_95,
                D3=>XLXN_96);
   
   XLXI_31 : INV4_HXILINX_main
      port map (I0=>XLXN_96,
                I1=>XLXN_95,
                I2=>XLXN_94,
                I3=>XLXN_93,
                O0=>C0,
                O1=>C2,
                O2=>C1,
                O3=>C3);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity divideTo100Hz_MUSER_main is
   port ( clk_in  : in    std_logic; 
          clk_out : out   std_logic);
end divideTo100Hz_MUSER_main;

architecture BEHAVIORAL of divideTo100Hz_MUSER_main is
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

entity divideTo1Hz_MUSER_main is
   port ( clk_in  : in    std_logic; 
          clk_out : out   std_logic);
end divideTo1Hz_MUSER_main;

architecture BEHAVIORAL of divideTo1Hz_MUSER_main is
   signal XLXN_1  : std_logic;
   signal XLXN_2  : std_logic;
   signal XLXN_3  : std_logic;
   signal XLXN_4  : std_logic;
   component divideTo100Hz_MUSER_main
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
   XLXI_2 : divideTo100Hz_MUSER_main
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

entity control_MUSER_main is
   port ( clk_in      : in    std_logic; 
          start_stop  : in    std_logic; 
          sw_clear    : in    std_logic; 
          clear       : out   std_logic; 
          clk_counter : out   std_logic; 
          clk_display : out   std_logic);
end control_MUSER_main;

architecture BEHAVIORAL of control_MUSER_main is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_1      : std_logic;
   signal XLXN_3      : std_logic;
   signal XLXN_8      : std_logic;
   signal XLXN_16     : std_logic;
   signal XLXN_17     : std_logic;
   component divideTo1Hz_MUSER_main
      port ( clk_in  : in    std_logic; 
             clk_out : out   std_logic);
   end component;
   
   component divideTo100Hz_MUSER_main
      port ( clk_in  : in    std_logic; 
             clk_out : out   std_logic);
   end component;
   
   component FTC_HXILINX_main
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
   
   attribute HU_SET of XLXI_3 : label is "XLXI_3_16";
begin
   XLXI_1 : divideTo1Hz_MUSER_main
      port map (clk_in=>XLXN_8,
                clk_out=>clk_counter);
   
   XLXI_2 : divideTo100Hz_MUSER_main
      port map (clk_in=>clk_in,
                clk_out=>clk_display);
   
   XLXI_3 : FTC_HXILINX_main
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity main is
   port ( osc     : in    std_logic; 
          sw1     : in    std_logic; 
          sw2     : in    std_logic; 
          common0 : out   std_logic; 
          common1 : out   std_logic; 
          common2 : out   std_logic; 
          common3 : out   std_logic; 
          SevSeg  : out   std_logic_vector (6 downto 0));
end main;

architecture BEHAVIORAL of main is
   signal XLXN_17 : std_logic;
   signal XLXN_23 : std_logic_vector (3 downto 0);
   signal XLXN_24 : std_logic_vector (3 downto 0);
   signal XLXN_27 : std_logic_vector (3 downto 0);
   signal XLXN_28 : std_logic_vector (3 downto 0);
   signal XLXN_29 : std_logic;
   signal XLXN_37 : std_logic;
   signal XLXN_38 : std_logic;
   component control_MUSER_main
      port ( start_stop  : in    std_logic; 
             clk_in      : in    std_logic; 
             clk_counter : out   std_logic; 
             clk_display : out   std_logic; 
             sw_clear    : in    std_logic; 
             clear       : out   std_logic);
   end component;
   
   component display_MUSER_main
      port ( B2   : in    std_logic_vector (3 downto 0); 
             A2   : in    std_logic_vector (3 downto 0); 
             B1   : in    std_logic_vector (3 downto 0); 
             A1   : in    std_logic_vector (3 downto 0); 
             clk  : in    std_logic; 
             data : out   std_logic_vector (6 downto 0); 
             c3   : out   std_logic; 
             c1   : out   std_logic; 
             c0   : out   std_logic; 
             c2   : out   std_logic);
   end component;
   
   component sec_counter_MUSER_main
      port ( clk_in : in    std_logic; 
             clear  : in    std_logic; 
             A      : out   std_logic_vector (3 downto 0); 
             B      : out   std_logic_vector (3 downto 0); 
             tclk   : out   std_logic);
   end component;
   
   component min_counter_MUSER_main
      port ( clk_in : in    std_logic; 
             clear  : in    std_logic; 
             A      : out   std_logic_vector (3 downto 0); 
             B      : out   std_logic_vector (3 downto 0));
   end component;
   
begin
   XLXI_1 : control_MUSER_main
      port map (clk_in=>osc,
                start_stop=>sw1,
                sw_clear=>sw2,
                clear=>XLXN_29,
                clk_counter=>XLXN_38,
                clk_display=>XLXN_17);
   
   XLXI_7 : display_MUSER_main
      port map (A1(3 downto 0)=>XLXN_24(3 downto 0),
                A2(3 downto 0)=>XLXN_27(3 downto 0),
                B1(3 downto 0)=>XLXN_23(3 downto 0),
                B2(3 downto 0)=>XLXN_28(3 downto 0),
                clk=>XLXN_17,
                c0=>common0,
                c1=>common1,
                c2=>common2,
                c3=>common3,
                data(6 downto 0)=>SevSeg(6 downto 0));
   
   XLXI_11 : sec_counter_MUSER_main
      port map (clear=>XLXN_29,
                clk_in=>XLXN_38,
                A(3 downto 0)=>XLXN_24(3 downto 0),
                B(3 downto 0)=>XLXN_23(3 downto 0),
                tclk=>XLXN_37);
   
   XLXI_12 : min_counter_MUSER_main
      port map (clear=>XLXN_29,
                clk_in=>XLXN_37,
                A(3 downto 0)=>XLXN_27(3 downto 0),
                B(3 downto 0)=>XLXN_28(3 downto 0));
   
end BEHAVIORAL;


