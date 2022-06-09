LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY FiltroMediaMovel IS
	PORT (
		CLOCK_50 : IN STD_LOGIC;
		KEY : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		SW : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
		HEX7, HEX6, HEX5, HEX4 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		HEX3, HEX2, HEX1, HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		LEDG : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END FiltroMediaMovel;

ARCHITECTURE Structural OF FiltroMediaMovel IS
	-- Clock signals
	SIGNAL s_2HzLane : STD_LOGIC;
	
	-- Clean and syncronized inputs
	SIGNAL s_Key0, s_Key1, s_Key2, s_Swi0 : STD_LOGIC;
	
	-- Call signals
	SIGNAL s_Reset : STD_LOGIC := '0';
BEGIN
	-- Pulse generation
	Hz2Lane : ENTITY work.PulseGenerator(Behavioral)
		PORT MAP(
			clock => CLOCK_50,
			reset => s_Reset,
			pulse => s_2HzLane);

	-- Input syncronization and cleaning
	InputSync : PROCESS (CLOCK_50)
	BEGIN
		IF (rising_edge(CLOCK_50)) THEN
			s_Swi0 <= SW(0);
		END IF;
	END PROCESS;
	DebounceKEY0 : ENTITY work.DebounceUnit(Behavioral)
		GENERIC MAP(
			kHzClkFreq => 50000,
			mSecMinInWidth => 100,
			inPolarity => '0',
			outPolarity => '1')
		PORT MAP(
			refClk => CLOCK_50,
			dirtyIn => KEY(0),
			pulsedOut => s_Key0);
	DebounceKEY1 : ENTITY work.DebounceUnit(Behavioral)
		GENERIC MAP(
			kHzClkFreq => 50000,
			mSecMinInWidth => 100,
			inPolarity => '0',
			outPolarity => '1')
		PORT MAP(
			refClk => CLOCK_50,
			dirtyIn => KEY(1),
			pulsedOut => s_Key1);
	DebounceKEY2 : ENTITY work.DebounceUnit(Behavioral)
		GENERIC MAP(
			kHzClkFreq => 50000,
			mSecMinInWidth => 100,
			inPolarity => '0',
			outPolarity => '1')
		PORT MAP(
			refClk => CLOCK_50,
			dirtyIn => KEY(2),
			pulsedOut => s_Key2);
	
	-- Address generation
	AddressGenerator : ENTITY work.AddressGenerator(Behavioral)
		PORT MAP(
			clock => CLOCK_50,
			enable => s_2HzLane,
			reset => s_Reset,
			address => LEDG(7 DOWNTO 0)
		);
	
END Structural;