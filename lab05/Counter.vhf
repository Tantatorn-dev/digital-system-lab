--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Counter.vhf
-- /___/   /\     Timestamp : 09/16/2019 09:04:45
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl /home/lord-tantatorn/digital-system-lab/lab05/Counter.vhf -w /home/lord-tantatorn/digital-system-lab/lab05/Counter.sch
--Design Name: Counter
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL FJKC_HXILINX_Counter -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FJKC_HXILINX_Counter is
generic(
    INIT : bit := '0'
    );

  port (
    Q   : out STD_LOGIC := '0';
    C   : in STD_LOGIC;
    CLR : in STD_LOGIC;
    J   : in STD_LOGIC;
    K   : in STD_LOGIC
    );
end FJKC_HXILINX_Counter;

architecture Behavioral of FJKC_HXILINX_Counter is
signal q_tmp : std_logic := TO_X01(INIT);

begin

process(C, CLR)
begin
  if (CLR='1') then
    q_tmp <= '0';
  elsif (C'event and C = '1') then
    if(J='0') then
      if(K='1') then
      q_tmp <= '0';
    end if;
    else
      if(K='0') then
      q_tmp <= '1';
      else
      q_tmp <= not q_tmp;
      end if;
    end if;
  end if;  
end process;

Q <= q_tmp;

end Behavioral;

----- CELL FJKP_HXILINX_Counter -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FJKP_HXILINX_Counter is
generic(
    INIT : bit := '1'
    );

  port (
    Q   : out STD_LOGIC := '1';
    C   : in STD_LOGIC;
    J   : in STD_LOGIC;
    K   : in STD_LOGIC;
    PRE : in STD_LOGIC
    );
end FJKP_HXILINX_Counter;

architecture Behavioral of FJKP_HXILINX_Counter is
signal q_tmp : std_logic := TO_X01(INIT);
begin

process(C, PRE)
begin
  if (PRE='1') then
    q_tmp <= '1';
  elsif (C'event and C = '1') then
    if(J='0') then
      if(K='1') then
      q_tmp <= '0';
    end if;
    else
      if(K='0') then
      q_tmp <= '1';
      else
      q_tmp <= not q_tmp;
      end if;
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

entity Counter is
   port ( Clk   : in    std_logic; 
          Clr   : in    std_logic; 
          COM1  : out   std_logic; 
          COM2  : out   std_logic; 
          COM3  : out   std_logic; 
          Seven : out   std_logic_vector (6 downto 0));
   attribute LOC : string ;
   attribute LOC of Clk : signal is "P45";
   attribute LOC of Clr : signal is "P46";
end Counter;

architecture BEHAVIORAL of Counter is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal Input   : std_logic_vector (3 downto 0);
   signal XLXN_37 : std_logic;
   signal XLXN_42 : std_logic;
   signal XLXN_45 : std_logic;
   signal XLXN_49 : std_logic;
   component FourBitsToSevenSegment
      port ( Input   : in    std_logic_vector (3 downto 0); 
             COMMON1 : out   std_logic; 
             COMMON2 : out   std_logic; 
             COMMON3 : out   std_logic; 
             SevSeg  : out   std_logic_vector (6 downto 0));
   end component;
   
   component FJKP_HXILINX_Counter
      port ( C   : in    std_logic; 
             J   : in    std_logic; 
             K   : in    std_logic; 
             PRE : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
   component FJKC_HXILINX_Counter
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             J   : in    std_logic; 
             K   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
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
   
   attribute HU_SET of XLXI_6 : label is "XLXI_6_0";
   attribute HU_SET of XLXI_7 : label is "XLXI_7_1";
   attribute HU_SET of XLXI_8 : label is "XLXI_8_2";
begin
   XLXI_2 : FourBitsToSevenSegment
      port map (Input(3 downto 0)=>Input(3 downto 0),
                COMMON1=>COM1,
                COMMON2=>COM2,
                COMMON3=>COM3,
                SevSeg(6 downto 0)=>Seven(6 downto 0));
   
   XLXI_6 : FJKP_HXILINX_Counter
      port map (C=>XLXN_49,
                J=>XLXN_37,
                K=>XLXN_37,
                PRE=>Clr,
                Q=>Input(0));
   
   XLXI_7 : FJKC_HXILINX_Counter
      port map (C=>XLXN_49,
                CLR=>Clr,
                J=>Input(0),
                K=>XLXN_42,
                Q=>Input(1));
   
   XLXI_8 : FJKC_HXILINX_Counter
      port map (C=>XLXN_49,
                CLR=>Clr,
                J=>XLXN_45,
                K=>Input(1),
                Q=>Input(2));
   
   XLXI_12 : VCC
      port map (P=>XLXN_37);
   
   XLXI_13 : OR2
      port map (I0=>Input(2),
                I1=>Input(0),
                O=>XLXN_42);
   
   XLXI_14 : AND2
      port map (I0=>Input(1),
                I1=>Input(0),
                O=>XLXN_45);
   
   XLXI_15 : INV
      port map (I=>Clk,
                O=>XLXN_49);
   
end BEHAVIORAL;


