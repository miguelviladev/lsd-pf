LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY RomManager IS
	PORT (
		inAddress : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		currData : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		nextData : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END RomManager;

ARCHITECTURE Behavioral OF RomManager IS
	SIGNAL s_OldAddress, s_TmpAddress, s_TmpData, s_SearchAddress, s_SearchData : STD_LOGIC_VECTOR(7 DOWNTO 0);
BEGIN
	BEHAV : PROCESS(inAddress) BEGIN
		IF (inAddress /= s_OldAddress) THEN
			s_OldAddress <= inAddress;
			s_SearchAddress <= inAddress;
			currData <= s_SearchData;
		ELSE
			s_SearchAddress <= STD_LOGIC_VECTOR(UNSIGNED(s_OldAddress)+1);
			nextData <= s_SearchData;
		END IF;
	END PROCESS;

	NoisyROM : ENTITY work.NoisyTriangSignalROM256x8(Behavioral)
		PORT MAP(
			address => s_SearchAddress,
			dataOut => s_SearchData
		);

END Behavioral;

