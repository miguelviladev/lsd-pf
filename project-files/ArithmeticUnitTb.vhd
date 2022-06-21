LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY ArithmeticUnitTb IS
END ArithmeticUnitTb;

ARCHITECTURE Stimulus OF ArithmeticUnitTb IS
		SIGNAL s_Op0, s_Op1, s_Op2, s_Op3, s_Result : STD_LOGIC_VECTOR(7 DOWNTO 0);
BEGIN
	UUT : ENTITY work.ArithmeticUnit(Behavioral)
		PORT MAP(
			op0 => s_Op0,
			op1 => s_Op1,
			op2 => s_Op2,
			op3 => s_Op3,
			address => "00000011",
			result => s_Result
		);

	STIMULUSPROC : PROCESS BEGIN
		WAIT FOR 100 ns;
		s_Op0 <= "00001010";
		s_Op1 <= "00001010";
		s_Op2 <= "00001010";
		s_Op3 <= "00001010";
		WAIT FOR 100 ns;
		s_Op0 <= "00001010";
		s_Op1 <= "00000101";
		s_Op2 <= "00000100";
		s_Op3 <= "11111001";
		WAIT FOR 100 ns;
		s_Op0 <= "11111011";
		s_Op1 <= "11111001";
		s_Op2 <= "11110110";
		s_Op3 <= "00000001";
	END PROCESS;
END Stimulus;