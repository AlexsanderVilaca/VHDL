----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:24:06 09/01/2023 
-- Design Name: 
-- Module Name:    CONV_7SEG - Behavioral 
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

entity CONV_7SEG is
    Port ( ENT : in  STD_LOGIC_VECTOR (3 downto 0);
           SEG7 : out  STD_LOGIC_VECTOR (7 downto 0));
end CONV_7SEG;

architecture Behavioral of CONV_7SEG is

begin
	SEG7 <= 	"11000000" WHEN ENT = "0000" ELSE --0
				"11111001" WHEN ENT = "0001" ELSE --1
				"10100100" WHEN ENT = "0010" ELSE --2
				"10110000" WHEN ENT = "0011" ELSE --3
				"10011001" WHEN ENT = "0100" ELSE --4
				"10010010" WHEN ENT = "0101" ELSE --5
				"10000010" WHEN ENT = "0110" ELSE --6
				"11111000" WHEN ENT = "0111" ELSE --7
				"10000000" WHEN ENT = "1000" ELSE --8
				"10010000" WHEN ENT = "1001" ELSE --9
				"10001000" WHEN ENT = "1010" ELSE --A
				"10000011" WHEN ENT = "1011" ELSE --B
				"11000110" WHEN ENT = "1100" ELSE --C
				"10100001" WHEN ENT = "1101" ELSE --D
				"10000110" WHEN ENT = "1110" ELSE --E
				"10001110"; --F
end Behavioral;

