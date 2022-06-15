LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY FiltroMediaMovel IS
	PORT (
		CLOCK_50 : IN  STD_LOGIC;
		KEY : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		SW : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
		LEDG : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		LEDR : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		HEX7, HEX6, HEX5, HEX4 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		HEX3, HEX2, HEX1, HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END FiltroMediaMovel;

ARCHITECTURE Structural OF FiltroMediaMovel IS
	-- Pulse signals
	SIGNAL s_2HzLane : STD_LOGIC;
	
	-- Clean and syncronized inputs
	SIGNAL s_Key0, s_Key1, s_Key2, s_Swi0 : STD_LOGIC;
	
	-- Call and control signals
	SIGNAL s_GlobalReset, s_RamReset, s_Running, s_FilterOn : STD_LOGIC;
	
	-- Data signals
	SIGNAL s_Address : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL s_NoisyData : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL s_CleanData : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL s_CleanDataDisplay : STD_LOGIC_VECTOR(7 DOWNTO 0);
BEGIN
	-- Pulse generation
	Hz2Lane : ENTITY work.PulseGenerator(Behavioral)
		PORT MAP(
			clock => CLOCK_50,
			startStop => s_Running,
			reset => s_GlobalReset,
			pulse => s_2HzLane
		);

	-- Input syncronization and cleaning
	InputCleaner : ENTITY work.CleanInputManager(Structural)
		PORT MAP(
			clock => CLOCK_50,
			switch => SW(0),
			key0 => KEY(0),
			key1 => KEY(1),
			key2 => KEY(2),
			cleanSwitch => s_Swi0,
			cleanKey0 => s_Key0,
			cleanKey1 => s_Key1,
			cleanKey2 => s_Key2
		);
	
	-- Address generation
	AddressGenerator : ENTITY work.AddressGenerator(Behavioral)
		PORT MAP(
			clock => CLOCK_50,
			enable => s_2HzLane,
			reset => s_GlobalReset,
			address => s_Address
		);
		
	-- ROM reading
	RomManagment : ENTITY work.RomManager(Behavioral)
		PORT MAP(
			clock => CLOCK_50, 
			inAddress => s_Address,
			currData => s_NoisyData,
			nextData => LEDR
		);
		
	RomDisplay : ENTITY work.DataDisplayManager(Structural)
		PORT MAP(
			dataIn => s_NoisyData,
			signalDisplay => HEX3,
			hundredsDisplay => HEX2,
			dozensDisplay => HEX1,
			unitsDisplay => HEX0
		);

	-- RAM reading and writing
	RamManagment : ENTITY work.RamManager(Behavioral)
		PORT MAP(
			clock => CLOCK_50,
			reset => s_RamReset,
			inWriteEnable => s_Swi0, --TODO
			inAddress => s_Address,
			inData => s_NoisyData, --TODO
			outData => s_CleanDataDisplay
		);

	RamDisplay : ENTITY work.DataDisplayManager(Structural)
		PORT MAP(
			dataIn => s_CleanDataDisplay,
			signalDisplay => HEX7,
			hundredsDisplay => HEX6,
			dozensDisplay => HEX5,
			unitsDisplay => HEX4
		);

	-- State controller
	StateController : ENTITY work.ControlUnit(Behavioral)
		PORT MAP(
			-- Control signals
			clock => CLOCK_50,
			-- User inputs
			globalReset => s_Key2,
			ramReset => s_Key1,
			startStop => s_Key0,
			toggleFilter => s_Swi0,
			-- Outputs
			callGlobalReset => s_GlobalReset,
			callRamReset => s_RamReset,
			callSTartStop => s_Running,
			callToggleFilter => s_FilterOn,
			-- Debug state
			debugStateVector => LEDG(4 DOWNTO 0)
		);
END Structural;