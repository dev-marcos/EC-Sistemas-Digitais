LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Exercicio_3 IS
	PORT (D0 : IN std_logic;
			D1 : IN std_logic;
			B0 : OUT std_logic;
			B1 : OUT std_logic;
			B2 : OUT std_logic;
			B3 : OUT std_logic);
		
END Exercicio_3;

ARCHITECTURE logica OF Exercicio_3 IS
BEGIN
	B0 <= (NOT D0) AND (NOT D1);
	B1 <= D0 AND (NOT D1);
	B2 <= (NOT D0) AND D1;
	B3 <= D0 AND D1;
END logica;