LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Primeiro_projeto IS
	PORT (IN1 : IN std_logic;
		IN2 : IN std_logic;
	SAIDA : OUT std_logic);
END Primeiro_projeto;

ARCHITECTURE logica OF Primeiro_projeto IS
BEGIN
	SAIDA <= IN1 AND IN2;
END logica;