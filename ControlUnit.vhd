LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY ControlUnit IS
    PORT (
        clock : IN STD_LOGIC;
        -- Get and send control calls
        globalReset, ramReset, startStop, toggleFilter : IN STD_LOGIC;
        callGlobalReset, callRamReset, callStartStop, callToggleFilter : OUT STD_LOGIC;
        -- Display current state
        debugStateVector : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
    );
END ControlUnit;

ARCHITECTURE Behavioral OF ControlUnit IS
    TYPE stateType IS (
        t_RAMRESET,
        t_GLOBALRESET,
        t_RUNNING,
        t_STOPPED
    );
    SIGNAL keepRunningState, currState : stateType := t_GLOBALRESET;
    SIGNAL cycleDelay : INTEGER := 0;
	CONSTANT cycleDelayTarget : INTEGER := 256;
    SIGNAL firstExec : STD_LOGIC := '1';
BEGIN
    callToggleFilter <= toggleFilter;

    StateFlow : PROCESS (clock) BEGIN
        IF (rising_edge(clock)) THEN
			IF (globalReset = '1') THEN
                cycleDelay <= 0;
				currState <= t_GLOBALRESET;
			ELSIF (ramReset = '1') THEN
                cycleDelay <= 0;
                keepRunningState <= currState;
                currState <= t_RAMRESET;
			ELSE
                CASE (currState) IS
                    WHEN t_GLOBALRESET =>
                        callGlobalReset <= '1';
                        callRamReset <= '0';
                        callStartStop <= '0';
                        debugStateVector <= "00010";
                        IF (cycleDelay < cycleDelayTarget) THEN
                            cycleDelay <= cycleDelay + 1;
                            currState <= t_GLOBALRESET;
                        ELSE
                            cycleDelay <= 0;
                            firstExec <= '1';
                            currState <= t_RAMRESET;
                        END IF;

                    WHEN t_RAMRESET =>
                        callGlobalReset <= '0';
                        callRamReset <= '1';
                        callStartStop <= '0';
                        debugStateVector <= "00100";
                        IF (cycleDelay < cycleDelayTarget) THEN
                            cycleDelay <= cycleDelay + 1;
                            currState <= t_RAMRESET;
                        ELSE
                            IF (firstExec = '1') THEN
                                firstExec <= '0';
                                currState <= t_RUNNING;
                            ELSE
                                IF (keepRunningState = t_RUNNING) THEN
                                    currState <= t_RUNNING;
                                ELSE
                                    currState <= t_STOPPED;
                                END IF;
                            END IF;
                        END IF;

                    WHEN t_RUNNING =>
                        callGlobalReset <= '0';
                        callRamReset <= '0';
                        callStartStop <= '1';
                        debugStateVector <= "01000";
                        IF (startStop = '1') THEN
                            currState <= t_STOPPED;
                        ELSE
                            currState <= t_RUNNING;
                        END IF;

                    WHEN t_STOPPED =>
                        callGlobalReset <= '0';
                        callRamReset <= '0';
                        callStartStop <= '0';
                        debugStateVector <= "10000";
                        IF (startStop = '1') THEN
                            currState <= t_RUNNING;
                        ELSE
                            currState <= t_STOPPED;
                        END IF;

                    WHEN OTHERS =>
                        NULL;
                END CASE;
			END IF;
        END IF;
    END PROCESS;
END Behavioral;