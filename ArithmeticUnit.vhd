LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY ArithmeticUnit IS
	PORT (
		address : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		op0, op1, op2, op3 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		result : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END ArithmeticUnit;

ARCHITECTURE Behavioral OF ArithmeticUnit IS
BEGIN
		result <= op0 WHEN ((address = "00000000") or (address = "00000001") or (address = "11111111")) ELSE STD_LOGIC_VECTOR((signed(op0) + signed(op1) + signed(op2) + signed(op3)) / 4);
END Behavioral;