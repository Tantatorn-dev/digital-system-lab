----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:47:55 09/14/2019 
-- Design Name: 
-- Module Name:    T_FlipFlop - Behavioral 
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

entity T_FlipFlop is
    Port ( T : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qb : out  STD_LOGIC;
           Clk : in  STD_LOGIC);
end T_FlipFlop;

architecture Behavioral of T_FlipFlop is
	signal temp : STD_LOGIC;
begin
		
	process(T,Clk)
	variable temp: STD_LOGIC := '0';
	begin
	if (RISING_EDGE(Clk)) then
		if(T = '1') then
			temp := not temp;
		end if;
	end if;
	Q <= not temp;
	Qb <= temp;
	end process;
	
end Behavioral;

