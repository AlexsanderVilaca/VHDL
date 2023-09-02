----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:34:39 09/01/2023 
-- Design Name: 
-- Module Name:    display_controller - Behavioral 
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

entity display_controller is
    Port ( NUM : in  STD_LOGIC_VECTOR (3 downto 0);
           CLOCK : in  STD_LOGIC;
           CLEAR : in  STD_LOGIC;
           SEL : in  STD_LOGIC;
           EN1 : in  STD_LOGIC;
           EN2 : in  STD_LOGIC;
           EN3 : in  STD_LOGIC;
           DISP : out  STD_LOGIC_VECTOR (7 downto 0));
end display_controller;
	
architecture Behavioral of display_controller is
	--declaração dos componentes
	
	--declaraçao do registrador (como se fosse sua classe)
	component reg --registrador
		port(
			D_IN : in STD_LOGIC_VECTOR(3 downto 0);
			CLK : in STD_LOGIC;
			CLK_EN : in STD_LOGIC;
			CLR : in STD_LOGIC;
			Q_OUT : out STD_LOGIC_VECTOR(3 downto 0)
		);
	end component;
	
	--declaração do mux
	component mux2X1
		port(
			IN_A : in STD_LOGIC_VECTOR(3 downto 0);
			IN_B : in STD_LOGIC_VECTOR(3 downto 0);
			SEL : in STD_LOGIC; --selelect para escolher qual entrada do mux estará disponível na saida
			MUX_OUT : out STD_LOGIC_VECTOR(3 downto 0)
		);
	end component;
	
	--declaração do convesor de 4-bit (hex) para de 7-segmentos (bit)
	component CONV_7SEG
		port (
			ENT : in STD_LOGIC_VECTOR(3 downto 0);
			SEG7 : out STD_LOGIC_VECTOR(7 downto 0)
		);
	end component;
	
	--declaraçao dos sinais (fios)
	SIGNAL outR1_to_inMUX : STD_LOGIC_VECTOR(3 downto 0);
	SIGNAL outR2_to_inMUX : STD_LOGIC_VECTOR(3 downto 0);
	SIGNAL outMUX_to_inR3 : STD_LOGIC_VECTOR(3 downto 0);
	SIGNAL outR3_to_inSEG7 : STD_LOGIC_VECTOR(3 downto 0);
begin
	--instanciação dos componentes
	useR1 : reg port map (
		D_IN => NUM,
		CLK => CLOCK,
		CLK_EN => EN1,
		CLR => CLEAR,
		Q_OUT => outR1_to_inMUX
	);
	
	useR2 : reg port map (
		D_IN => NUM,
		CLK => CLOCK,
		CLK_EN => EN2,
		CLR => CLEAR,
		Q_OUT => outR2_to_inMUX
	);
	
	useMUX : mux2X1 port map (
		IN_A => outR1_to_inMUX,
		IN_B => outR2_to_inMUX,
		SEL => SEL,
		MUX_OUT => outMUX_to_inR3
	);
	
	useR3 : reg port map (
		D_IN => outMUX_to_inR3,
		CLK => CLOCK,
		CLK_EN => EN3,
		CLR => CLEAR,
		Q_OUT => outR3_to_inSEG7
	);
	
	useCONV7SEG : CONV_7SEG port map (
		ENT => outR3_to_inSEG7,
		SEG7 => DISP
	);

end Behavioral;

