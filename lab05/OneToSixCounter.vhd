----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:06:12 09/15/2019 
-- Design Name: 
-- Module Name:    OneToSixCounter - Behavioral 
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
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity OneToSixCounter is
    Port ( Clk : in  STD_LOGIC;
			COMMON1 : out STD_LOGIC;
			COMMON2 : out STD_LOGIC;
			COMMON3 : out STD_LOGIC;
			SevSeg : out STD_LOGIC_VECTOR(6 downto 0));
end OneToSixCounter;

architecture Behavioral of OneToSixCounter is

begin
	COMMON1 <= '1';
	COMMON2 <= '1';
	COMMON3 <= '1';
	
	process(Clk)
	variable temp: STD_LOGIC_VECTOR(2 downto 0) := "001";
	begin
	
		if (RISING_EDGE(Clk)) then
			if temp = "110" then
				temp := "001";
			else 
				temp := temp + 1;
			end if;
		end if;
		
		case temp is
			when "000" => SevSeg <= "1111110" ;
			when "001" => SevSeg <= "0110000" ;
			when "010" => SevSeg <= "1101101" ;
			when "011" => SevSeg <= "1111001" ;
			when "100" => SevSeg <= "0110011" ;
			when "101" => SevSeg <= "1011011" ;
			when "110" => SevSeg <= "1011111" ;
			when others => SevSeg <= "0000000";
		end case;
		
	end process;
end Behavioral;

