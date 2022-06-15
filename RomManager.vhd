LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY RomManager IS
	PORT (
		clock : IN STD_LOGIC;
		inAddress : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		currData : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		nextData : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END RomManager;

ARCHITECTURE Behavioral OF RomManager IS
	TYPE stateType IS (
		t_NEXTADDRESS,
		t_CURRADDRESS
	);
	SIGNAL currState : stateType := t_CURRADDRESS;
	SIGNAL s_SearchAddress, s_SearchData : STD_LOGIC_VECTOR(7 DOWNTO 0);
BEGIN
	StateFlow : PROCESS (clock) BEGIN
		IF (rising_edge(clock)) THEN
			CASE (currState) IS
				WHEN t_CURRADDRESS =>
					s_SearchAddress <= inAddress;
					nextData <= s_SearchData;
					currState <= t_NEXTADDRESS;
					
				WHEN t_NEXTADDRESS =>
					s_SearchAddress <= STD_LOGIC_VECTOR(UNSIGNED(inAddress) + 1);
					currData <= s_SearchData;
					currState <= t_CURRADDRESS;
					
				WHEN OTHERS =>
					NULL;
			END CASE;
		END IF;
	END PROCESS;

	NoisyROM : ENTITY work.NoisyTriangSignalROM256x8(Behavioral)
		PORT MAP(
			address => s_SearchAddress,
			dataOut => s_SearchData
		);

END Behavioral;