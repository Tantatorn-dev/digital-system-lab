----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:44:15 09/08/2019 
-- Design Name: 
-- Module Name:    two_adder - Behavioral 
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

entity two_adder is
    Port ( sw0 : in  STD_LOGIC;
           sw1 : in  STD_LOGIC;
           sw2 : in  STD_LOGIC;
           sw3 : in  STD_LOGIC;
           sum0 : out  STD_LOGIC;
           sum1 : out  STD_LOGIC;
           carry1 : out  STD_LOGIC);
end two_adder;

architecture Behavioral of two_adder is
	signal carry0: STD_LOGIC;
begin
	sum0 <= sw0 xor sw1;
	carry0 <= sw0 and sw1;
	sum1	<= carry0 xor  (sw2 xor sw3);
	carry1 <= (carry0 and (sw2 xor sw3)) or (sw2 and sw3);
end Behavioral;

