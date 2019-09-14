----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:29:49 09/14/2019 
-- Design Name: 
-- Module Name:    D_FlipFlop - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity D_FlipFlop is
    Port ( D : in  bit;
           CLK : in  bit;
           Q : buffer bit;
			  Qb :  buffer bit);
end D_FlipFlop;

architecture Behavioral of D_FlipFlop is
signal d1,d2:bit;
begin
		d1 <= D nand CLK;
		d2 <= (not D) nand CLK;
		Q <= d1 nand Qb;
		Qb <= d2 nand Q;
end Behavioral;

