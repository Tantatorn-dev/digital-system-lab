----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:43:24 09/14/2019 
-- Design Name: 
-- Module Name:    JK_FlipFlop - Behavioral 
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

entity JK_FlipFlop is
    Port ( J : in  STD_LOGIC;
           K : in  STD_LOGIC;
           Clear : in  STD_LOGIC;
           Preset : in  STD_LOGIC;
			  Clk : in STD_LOGIC;
           Q : out  STD_LOGIC;
           Qb : out  STD_LOGIC);
end JK_FlipFlop;

architecture Behavioral of JK_FlipFlop is
	signal temp: STD_LOGIC;
begin
	process(Clk)
	begin
	if RISING_EDGE(Clk) then
		if Clear = '1' then
			temp <= '0';
		elsif Preset = '1' then
			if (J='0' and K='0') then
				temp <= temp;
			elsif (J='0' and K='1') then
				temp <= '0';
			elsif (J='1' and K='0') then
				temp <= '1';
			elsif (J='1' and K='1') then 
				temp <= not (temp);
			end if;
		end if;
	end if;
	end process;
	
	Q <= temp;
	Qb <= not temp;

end Behavioral;

