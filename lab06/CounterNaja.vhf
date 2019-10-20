--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : CounterNaja.vhf
-- /___/   /\     Timestamp : 10/06/2019 22:36:37
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl /home/lord-tantatorn/digital-system-lab/lab06/CounterNaja.vhf -w /home/lord-tantatorn/digital-system-lab/lab06/CounterNaja.sch
--Design Name: CounterNaja
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL COMP4_HXILINX_CounterNaja -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity COMP4_HXILINX_CounterNaja is
  
port(
    EQ  : out std_logic;

    A0  : in std_logic;
    A1  : in std_logic;
    A2  : in std_logic;
    A3  : in std_logic;
    B0  : in std_logic;
    B1  : in std_logic;
    B2  : in std_logic;
    B3  : in std_logic
  );
end COMP4_HXILINX_CounterNaja;

architecture COMP4_HXILINX_CounterNaja_V of COMP4_HXILINX_CounterNaja is
begin
  EQ <= '1' when (A0=B0 and A1=B1 and A2=B2 and A3=B3) else '0';
end COMP4_HXILINX_CounterNaja_V;
----- CELL CD4CE_HXILINX_CounterNaja -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CD4CE_HXILINX_CounterNaja is
  
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
end CD4CE_HXILINX_CounterNaja;

architecture Behavioral of CD4CE_HXILINX_CounterNaja is

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

----- CELL M2_1_HXILINX_CounterNaja -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M2_1_HXILINX_CounterNaja is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    S0  : in std_logic
  );
end M2_1_HXILINX_CounterNaja;

architecture M2_1_HXILINX_CounterNaja_V of M2_1_HXILINX_CounterNaja is
begin
  process (D0, D1, S0)
  begin
    case S0 is
    when '0' => O <= D0;
    when '1' => O <= D1;
    when others => NULL;
    end case;
    end process; 
end M2_1_HXILINX_CounterNaja_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity divide5_MUSER_CounterNaja is
   port ( CLK_IN  : in    std_logic; 
          CLK_OUT : out   std_logic);
end divide5_MUSER_CounterNaja;

architecture BEHAVIORAL of divide5_MUSER_CounterNaja is
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

entity divide2_MUSER_CounterNaja is
   port ( CLK_IN  : in    std_logic; 
          CLK_OUT : out   std_logic);
end divide2_MUSER_CounterNaja;

architecture BEHAVIORAL of divide2_MUSER_CounterNaja is
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

entity divider_MUSER_CounterNaja is
   port ( clk_in  : in    std_logic; 
          clk_out : out   std_logic);
end divider_MUSER_CounterNaja;

architecture BEHAVIORAL of divider_MUSER_CounterNaja is
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
   component divide2_MUSER_CounterNaja
      port ( CLK_IN  : in    std_logic; 
             CLK_OUT : out   std_logic);
   end component;
   
   component divide5_MUSER_CounterNaja
      port ( CLK_IN  : in    std_logic; 
             CLK_OUT : out   std_logic);
   end component;
   
begin
   XLXI_1 : divide2_MUSER_CounterNaja
      port map (CLK_IN=>clk_in,
                CLK_OUT=>XLXN_2);
   
   XLXI_2 : divide5_MUSER_CounterNaja
      port map (CLK_IN=>XLXN_2,
                CLK_OUT=>XLXN_3);
   
   XLXI_3 : divide2_MUSER_CounterNaja
      port map (CLK_IN=>XLXN_3,
                CLK_OUT=>XLXN_4);
   
   XLXI_4 : divide5_MUSER_CounterNaja
      port map (CLK_IN=>XLXN_4,
                CLK_OUT=>XLXN_5);
   
   XLXI_5 : divide2_MUSER_CounterNaja
      port map (CLK_IN=>XLXN_5,
                CLK_OUT=>XLXN_6);
   
   XLXI_6 : divide5_MUSER_CounterNaja
      port map (CLK_IN=>XLXN_6,
                CLK_OUT=>XLXN_7);
   
   XLXI_7 : divide2_MUSER_CounterNaja
      port map (CLK_IN=>XLXN_7,
                CLK_OUT=>XLXN_12);
   
   XLXI_12 : divide5_MUSER_CounterNaja
      port map (CLK_IN=>XLXN_12,
                CLK_OUT=>XLXN_19);
   
   XLXI_13 : divide2_MUSER_CounterNaja
      port map (CLK_IN=>XLXN_19,
                CLK_OUT=>XLXN_22);
   
   XLXI_16 : divide5_MUSER_CounterNaja
      port map (CLK_IN=>XLXN_22,
                CLK_OUT=>XLXN_23);
   
   XLXI_17 : divide2_MUSER_CounterNaja
      port map (CLK_IN=>XLXN_23,
                CLK_OUT=>clk_out);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity CounterNaja is
   port ( OSC     : in    std_logic; 
          SW      : in    std_logic; 
          Buzz    : out   std_logic; 
          COMMON0 : out   std_logic; 
          COMMON1 : out   std_logic; 
          COMMON2 : out   std_logic; 
          COMMON3 : out   std_logic; 
          SevSeg  : out   std_logic_vector (6 downto 0));
end CounterNaja;

architecture BEHAVIORAL of CounterNaja is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal Buzzer                : std_logic;
   signal L7                    : std_logic;
   signal OutA_0                : std_logic;
   signal OutA_1                : std_logic;
   signal OutA_2                : std_logic;
   signal OutA_3                : std_logic;
   signal OutB_0                : std_logic;
   signal OutB_1                : std_logic;
   signal OutB_2                : std_logic;
   signal swPush                : std_logic;
   signal ToSevSeg              : std_logic_vector (3 downto 0);
   signal XLXN_16               : std_logic;
   signal XLXN_18               : std_logic;
   signal XLXN_76               : std_logic;
   signal COMMON1_DUMMY         : std_logic;
   signal XLXI_1_CLR_openSignal : std_logic;
   signal XLXI_2_CLR_openSignal : std_logic;
   component CD4CE_HXILINX_CounterNaja
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
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component M2_1_HXILINX_CounterNaja
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component BCDToSevSeg
      port ( Input  : in    std_logic_vector (3 downto 0); 
             SevSeg : out   std_logic_vector (6 downto 0));
   end component;
   
   component divider_MUSER_CounterNaja
      port ( clk_in  : in    std_logic; 
             clk_out : out   std_logic);
   end component;
   
   component COMP4_HXILINX_CounterNaja
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             A2 : in    std_logic; 
             A3 : in    std_logic; 
             B0 : in    std_logic; 
             B1 : in    std_logic; 
             B2 : in    std_logic; 
             B3 : in    std_logic; 
             EQ : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_0";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_1";
   attribute HU_SET of XLXI_16 : label is "XLXI_16_2";
   attribute HU_SET of XLXI_17 : label is "XLXI_17_3";
   attribute HU_SET of XLXI_18 : label is "XLXI_18_4";
   attribute HU_SET of XLXI_19 : label is "XLXI_19_5";
   attribute HU_SET of XLXI_41 : label is "XLXI_41_6";
begin
   COMMON1 <= COMMON1_DUMMY;
   XLXI_1 : CD4CE_HXILINX_CounterNaja
      port map (C=>XLXN_16,
                CE=>XLXN_18,
                CLR=>XLXI_1_CLR_openSignal,
                CEO=>open,
                Q0=>OutB_0,
                Q1=>OutB_1,
                Q2=>OutB_2,
                Q3=>L7,
                TC=>open);
   
   XLXI_2 : CD4CE_HXILINX_CounterNaja
      port map (C=>XLXN_76,
                CE=>XLXN_18,
                CLR=>XLXI_2_CLR_openSignal,
                CEO=>open,
                Q0=>OutA_0,
                Q1=>OutA_1,
                Q2=>OutA_2,
                Q3=>OutA_3,
                TC=>XLXN_16);
   
   XLXI_3 : AND2
      port map (I0=>COMMON1_DUMMY,
                I1=>SW,
                O=>XLXN_76);
   
   XLXI_6 : VCC
      port map (P=>XLXN_18);
   
   XLXI_16 : M2_1_HXILINX_CounterNaja
      port map (D0=>OutA_3,
                D1=>L7,
                S0=>COMMON1_DUMMY,
                O=>ToSevSeg(3));
   
   XLXI_17 : M2_1_HXILINX_CounterNaja
      port map (D0=>OutA_2,
                D1=>OutB_2,
                S0=>COMMON1_DUMMY,
                O=>ToSevSeg(2));
   
   XLXI_18 : M2_1_HXILINX_CounterNaja
      port map (D0=>OutA_1,
                D1=>OutB_1,
                S0=>COMMON1_DUMMY,
                O=>ToSevSeg(1));
   
   XLXI_19 : M2_1_HXILINX_CounterNaja
      port map (D0=>OutA_0,
                D1=>OutB_0,
                S0=>COMMON1_DUMMY,
                O=>ToSevSeg(0));
   
   XLXI_21 : INV
      port map (I=>COMMON1_DUMMY,
                O=>COMMON0);
   
   XLXI_32 : BCDToSevSeg
      port map (Input(3 downto 0)=>ToSevSeg(3 downto 0),
                SevSeg(6 downto 0)=>SevSeg(6 downto 0));
   
   XLXI_33 : VCC
      port map (P=>COMMON2);
   
   XLXI_34 : VCC
      port map (P=>COMMON3);
   
   XLXI_40 : divider_MUSER_CounterNaja
      port map (clk_in=>OSC,
                clk_out=>COMMON1_DUMMY);
   
   XLXI_41 : COMP4_HXILINX_CounterNaja
      port map (A0=>OutB_0,
                A1=>OutB_1,
                A2=>OutB_2,
                A3=>L7,
                B0=>OutA_0,
                B1=>OutA_1,
                B2=>OutA_2,
                B3=>OutA_3,
                EQ=>Buzzer);
   
   XLXI_42 : INV
      port map (I=>SW,
                O=>swPush);
   
   XLXI_43 : AND2
      port map (I0=>swPush,
                I1=>Buzzer,
                O=>Buzz);
   
end BEHAVIORAL;


