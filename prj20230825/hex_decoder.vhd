----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:52:00 08/24/2023 
-- Design Name: 
-- Module Name:    hex_decoder - Behavioral 
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

entity hex_decoder is
    Port ( INPUT : in  STD_LOGIC_VECTOR (3 downto 0);
           SAIDA : out  STD_LOGIC_VECTOR (7 downto 0);
			  AN : out STD_LOGIC_VECTOR(3 downto 0)
			  );
end hex_decoder;

architecture Behavioral of hex_decoder is
begin
	variable counter : integer range 0 to 3;
	process(INPUT)
	begin
		counter := 0;
		if (INPUT = "0000") then --0
			SAIDA <= "11000000";
		elsif INPUT = "0001" then --1
			SAIDA <= "11111001";
		elsif INPUT = "0010" then --2
			SAIDA <= "10100100";
		elsif INPUT = "0011" then --3
			SAIDA <= "10110000";
		elsif INPUT = "0100" then --4
			SAIDA <= "10011001";
		elsif INPUT = "0101" then --5
			SAIDA <= "10010010";
		elsif INPUT = "0110" then --6
			SAIDA <= "10000010";
		elsif INPUT = "0111" then --7
			SAIDA <= "11111000";
		elsif INPUT = "1000" then --8
			SAIDA <= "10000000";
		elsif INPUT = "1001" then --9
			SAIDA <= "10010000";
		elsif INPUT = "1010" then --A
			SAIDA <= "10001000";
		elsif INPUT = "1011" then --B
			SAIDA <= "10000011";
		elsif INPUT = "1100" then --C
			SAIDA <= "11000110";
		elsif INPUT = "1101" then --D
			SAIDA <= "10100001";
		elsif INPUT = "1110" then --E
			SAIDA <= "10000110";
		else
			SAIDA <= "10001110";
		end if;
	end process;
end Behavioral;

