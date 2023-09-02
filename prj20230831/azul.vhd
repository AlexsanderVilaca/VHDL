----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:06:55 08/31/2023 
-- Design Name: 
-- Module Name:    azul - Behavioral 
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

entity azul is
    Port ( input1 : in  STD_LOGIC;
           input2 : in  STD_LOGIC;
           saidaAzul : out  STD_LOGIC);
end azul;

architecture Behavioral of azul is

begin
	saidaAzul <= input1 AND input2;
end Behavioral;

