----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:59:17 09/01/2023 
-- Design Name: 
-- Module Name:    mux2X1 - Behavioral 
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

entity mux2X1 is
    Port ( IN_A : in  STD_LOGIC_VECTOR (3 downto 0);
           IN_B : in  STD_LOGIC_VECTOR (3 downto 0);
           SEL : in  STD_LOGIC;
           MUX_OUT : out  STD_LOGIC_VECTOR(3 downto 0)
	  );
end mux2X1;

architecture Behavioral of mux2X1 is

begin
	process (IN_A, IN_B, SEL)
	begin
		case SEL is
			when '0' => MUX_OUT <= IN_A;
			when '1' => MUX_OUT <= IN_B;
			when others => NULL;
		end case;
	end process;
end Behavioral;

