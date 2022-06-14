LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY RamManager IS
	PORT (
		clock : IN STD_LOGIC;
		reset : IN STD_LOGIC;
		inWriteEnable : IN STD_LOGIC;
		inAddress : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		inData : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		outWriteEnable : OUT STD_LOGIC;
		outAddress : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		outData : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END RamManager;

ARCHITECTURE Behavioral OF RamManager IS
	SIGNAL s_address : unsigned(7 DOWNTO 0) := "00000000";
BEGIN
	PROCESS (clock)
	BEGIN
		IF (rising_edge(clock)) THEN
			IF (reset = '1') THEN
				outWriteEnable <= '1';
				outAddress <= STD_LOGIC_VECTOR(s_address);
				outData <= "00000000";
				s_address <= s_address + 1;
			ELSE
				outWriteEnable <= inWriteEnable;
				outAddress <= inAddress;
				outData <= inData;
			END IF;
		END IF;
	END PROCESS;
END Behavioral;

