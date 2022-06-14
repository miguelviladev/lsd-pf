LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY ControlUnit IS
    PORT (
        clock : IN STD_LOGIC;

        -- Control reset signals delay
        delayStop : IN STD_LOGIC;
        delayStart : OUT STD_LOGIC;

        -- Get and send control calls
        globalReset, ramReset, startStop, toggleFilter : IN STD_LOGIC;
        callGlobalReset, callRamReset, callStartStop, callToggleFilter : OUT STD_LOGIC;

        -- Display current state
        debugStateVector : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
    );
END ControlUnit;

ARCHITECTURE Behavioral OF ControlUnit IS
    TYPE stateType IS (
        t_BOOT,
        t_RAMRESET,
        t_GLOBALRESET,
        t_RUNNING,
        t_STOPPED
    );
    SIGNAL nextState, currState : stateType := t_BOOT;

    -- Signals for controlling reset delyer
    SIGNAL s_ChangedState : STD_LOGIC := '1';
    SIGNAL s_DelayStop : STD_LOGIC := '0';
BEGIN
    Listener : PROCESS (clock) BEGIN
        IF (rising_edge(clock)) THEN
            IF (globalReset = '1') THEN
                s_ChangedState <= '1';
                nextState <= t_BOOT;
            ELSIF (ramReset = '1') THEN
                s_ChangedState <= '1';
                currState <= t_RAMRESET;
            ELSE
                IF (currState = nextState) THEN
                    s_ChangedState <= '0';
                ELSE
                    s_ChangedState <= '1';
                    IF (currState = t_RAMRESET) THEN
                        callRamReset <= '0';
                    ELSE
                        callRamReset <= '1';
                    END IF;
                END IF;
                currState <= nextState;
            END IF;
        END IF;
    END PROCESS;

    StateFlow : PROCESS (globalReset, ramReset, startStop, toggleFilter) BEGIN
        CASE (currState) IS
            WHEN t_BOOT =>
                callGlobalReset <= '0';
                callRamReset <= '0';
                callStartStop <= '0';
                nextState <= t_GLOBALRESET;
                debugStateVector <= "00001";
            WHEN t_GLOBALRESET =>
                callGlobalReset <= '1';
                callRamReset <= '0';
                callStartStop <= '0';
                debugStateVector <= "00010";
                IF (s_DelayStop = '1') THEN
                    nextState <= t_RAMRESET;
                ELSE
                    nextState <= t_GLOBALRESET;
                END IF;
            WHEN t_RAMRESET =>
                callGlobalReset <= '0';
                callRamReset <= '1';
                callStartStop <= '0';
                debugStateVector <= "00100";
                IF (s_DelayStop = '1') THEN
                    nextState <= t_STOPPED;
                ELSE
                    nextState <= t_RAMRESET;
                END IF;
            WHEN t_RUNNING =>
                callGlobalReset <= '0';
                callRamReset <= '0';
                callStartStop <= '1';
                debugStateVector <= "01000";
                IF (startStop = '1') THEN
                    nextState <= t_STOPPED;
                ELSE
                    nextState <= t_RUNNING;
                END IF;
            WHEN t_STOPPED =>
                callGlobalReset <= '0';
                callRamReset <= '0';
                callStartStop <= '0';
                debugStateVector <= "10000";
                IF (startStop = '1') THEN
                    nextState <= t_RUNNING;
                ELSE
                    nextState <= t_STOPPED;
                END IF;
            WHEN OTHERS =>
                NULL;
        END CASE;
    END PROCESS;

    -- Signals for controlling start/stop delayer
    delayStart <= s_ChangedState;
    s_DelayStop <= '1' WHEN ((delayStop = '1') AND (s_ChangedState = '0')) ELSE '0';
END Behavioral;