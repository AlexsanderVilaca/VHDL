----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:32:44 08/17/2023 
-- Design Name: 
-- Module Name:    mux - Behavioral 
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

entity mux is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           CS : in  STD_LOGIC;
           O : out  STD_LOGIC);
end mux;

architecture Behavioral of mux is

begin
	-- Mux com case (process)
	process (CS, A, B)
	begin
		case CS is
			when '0' => O <= A;
			when '1' => O <= B;
			when others => NULL;
		end case;
	end process;

end Behavioral;

