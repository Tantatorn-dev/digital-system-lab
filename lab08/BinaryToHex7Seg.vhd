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

entity BinaryToHex7Seg is
	 Port ( Input  : in STD_LOGIC_VECTOR (3 downto 0);
           Output : out STD_LOGIC_VECTOR (6 downto 0));
end BinaryToHex7Seg;

architecture Behavioral of BinaryToHex is

begin

process(Input)
	begin
		case Input is
			when "0000" => Output <= "1111110" ;
			when "0001" => Output <= "0110000" ;
			when "0010" => Output <= "1101101" ;
			when "0011" => Output <= "1111001" ;
			when "0100" => Output <= "0110011" ;
			when "0101" => Output <= "1011011" ;
			when "0110" => Output <= "1011111" ;
			when "0111" => Output <= "1110000" ;
			when "1000" => Output <= "1111111" ;
			when "1001" => Output <= "1111011" ;
			when "1010" => Output <= "1110111" ;
			when "1011" => Output <= "0011111" ;
			when "1100" => Output <= "1001110" ;
			when "1101" => Output <= "0111101" ;
			when "1110" => Output <= "1001111" ;
			when "1111" => Output <= "1000111" ;
			when others => Output <= "0000000" ;
		end case;
	end process;
end Behavioral;

