LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Exercicio_2 IS
	PORT (A : IN std_logic;
			B : IN std_logic;
			S0 : OUT std_logic;
			S1 : OUT std_logic;
			S2 : OUT std_logic);
		
END Exercicio_2;

ARCHITECTURE logica OF Exercicio_2 IS
BEGIN
	S0 <= (NOT A) AND B;
	s1 <= A XNOR B;
	s2 <= (NOT B) AND A;
END logica;