----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:21:41 09/08/2019 
-- Design Name: 
-- Module Name:    two_bit_adder - Behavioral 
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

entity two_bit_adder is
    Port ( sw0 : in  STD_LOGIC;
           sw1 : in  STD_LOGIC;
           sw2 : in  STD_LOGIC;
           sw3 : in  STD_LOGIC;
           sum0 : out  STD_LOGIC;
           sum1 : out  STD_LOGIC;
           carry1 : out  STD_LOGIC);
end two_bit_adder;

architecture Behavioral of two_bit_adder is
	
begin
	 
end Behavioral;

