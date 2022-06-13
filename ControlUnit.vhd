LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY ControlUnit IS
    PORT (
        clock, inRamReset, inGlobalReset, inStart, inFilterOn : IN STD_LOGIC;
        stateRamReset, stateGlobalReset, stateRunning, stateFilterOn : OUT STD_LOGIC;
        stateOnVector : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
    );
END ControlUnit;

ARCHITECTURE Behavioral OF ControlUnit IS
    TYPE stateType IS (
        RAMRESET,
        GLOBALRESET,
        RUNNING,
        STOPPED
    );
    SIGNAL nextState : stateType;
    SIGNAL currState : stateType := RAMRESET;
    SIGNAL cycleCount : integer := 0;
BEGIN
    LISTENER : PROCESS (clock) BEGIN
        IF (rising_edge(clock)) THEN
            IF (inRamReset = '1') THEN
                currState <= RAMRESET;
            ELSIF (inGlobalReset = '1') THEN
                currState <= GLOBALRESET;
            ELSE
                currState <= nextState;
            END IF;
		END IF;
    END PROCESS;

        BEHAVPROC : PROCESS (inRamReset, inGlobalReset, inStart) BEGIN
            CASE (currState) IS
                WHEN RAMRESET =>
                    stateRamReset <= '1';
                    stateGlobalReset <= '0';
                    stateRunning <= '0';
                    stateFilterOn <= '0';
                    stateOnVector <= "00010";
                    cycleCount <= cycleCount + 1;
                    IF (cycleCount >= 50000000) THEN
                        nextState <= RUNNING;
                        cycleCount <= 0;
                    END IF;
                WHEN GLOBALRESET =>
                    stateRamReset <= '0';
                    stateGlobalReset <= '1';
                    stateRunning <= '0';
                    stateFilterOn <= '0';
                    stateOnVector <= "00100";

                    -- Do other things here

                    nextState <= RAMRESET;
                WHEN RUNNING =>
                    stateRamReset <= '0';
                    stateGlobalReset <= '0';
                    stateRunning <= '1';
                    stateFilterOn <= '0';
                    stateOnVector <= "01000";
                    IF (inStart = '1') THEN
                        nextState <= STOPPED;
                    END IF;
                WHEN STOPPED =>
                    stateRamReset <= '0';
                    stateGlobalReset <= '0';
                    stateRunning <= '0';
                    stateFilterOn <= '0';
                    stateOnVector <= "10000";
                    IF (inStart = '1') THEN
                        nextState <= RUNNING;
                    END IF;
            END CASE;
        END PROCESS;
    END Behavioral;