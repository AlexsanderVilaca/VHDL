----------------------------------------------------------------------------------
-- Projeto inicial com VHDL
-- 
-- Descrição:
-- Porta lógica AND com três entradas (A, B, C)
-- Create Date:    21:46:36 08/10/2023 
-- Module Name:    porta_AND - Behavioral 
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

entity porta_AND is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           S : out  STD_LOGIC);
end porta_AND;

architecture Behavioral of porta_AND is

begin

	S <= A and B and C;

end Behavioral;

