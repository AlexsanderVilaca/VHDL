----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:17:19 09/01/2023 
-- Design Name: 
-- Module Name:    reg - Behavioral 
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

entity reg is
    Port ( D_IN : in  STD_LOGIC_VECTOR (3 downto 0);
           CLK : in  STD_LOGIC;
           CLK_EN : in  STD_LOGIC;
           CLR : in  STD_LOGIC;
           Q_OUT : out  STD_LOGIC_VECTOR (3 downto 0));
end reg;

architecture Behavioral of reg is

begin

	process (CLK)
	begin
	if rising_edge(CLK) THEN --triggar na borda de subida
		if CLR = '1' then
			Q_OUT <= "0000";
		elsif CLK_EN = '1' then
			Q_OUT <= D_IN;
		end if;
	end if;
	end process;

end Behavioral;

