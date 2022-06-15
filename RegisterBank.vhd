LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
--
ENTITY RegisterBank IS
	PORT (
		clock : IN STD_LOGIC;
		writeEnable : STD_LOGIC;
		currDataIn : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		dataOut0, dataOut1, dataOut2 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END RegisterBank;
--

ARCHITECTURE Behavioral OF RegisterBank IS
	SIGNAL s_data0, s_data1, s_data2 : STD_LOGIC_VECTOR(7 DOWNTO 0);

BEGIN
	PROCESS (clock)
	BEGIN
		IF (rising_edge(clock)) THEN
			IF (writeEnable = '1') THEN
				s_data2 <= s_data1;
				s_data1 <= s_data0;
				s_data0 <= currDataIn;
			END IF;
		END IF;
	END PROCESS;

	dataOut0 <= s_data0;
	dataOut1 <= s_data1;
	dataOut2 <= s_data2;
END Behavioral;