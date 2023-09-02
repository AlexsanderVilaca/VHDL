----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:37:36 08/31/2023 
-- Design Name: 
-- Module Name:    hierarquia - Behavioral 
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

entity hierarquia is
	port
	(
	A, B, C, D : in STD_LOGIC;
	saida : out STD_LOGIC
	);
end hierarquia;

architecture Behavioral of hierarquia is
	--declaração dos componentes
	component azul
		port(
		input1, input2 : in STD_LOGIC;
		saidaAzul : out STD_LOGIC
		);
	end component;
	
	component vermelho
		port(
		input1, input2 : in STD_LOGIC;
		saidaVermelha : out STD_LOGIC
		);
	end component;
	
	--declaraçao dos sinais (aka fios)
	SIGNAL saidaCompAzul_1_to_inputCompAzul_2 : STD_LOGIC;
	SIGNAL saidaCompVermelhor_1_to_inputCompAzul_2 : STD_LOGIC;
	
begin
	--instaciação dos componentes
	compAzul_1: azul port map (
		input1 => A, --entrada input1 será ligada ao A
		input2 => B,
		saidaAzul => saidaCompAzul_1_to_inputCompAzul_2
	);
	
	compAzul_2: azul port map (
		input1 => saidaCompAzul_1_to_inputCompAzul_2,
		input2 => saidaCompVermelhor_1_to_inputCompAzul_2,
		saidaAzul => saida
	);
	
	compVermelho_1: vermelho port map (
		input1 => C,
		input2 => D,
		saidaVermelha => saidaCompVermelhor_1_to_inputCompAzul_2
	);
	
end Behavioral;

