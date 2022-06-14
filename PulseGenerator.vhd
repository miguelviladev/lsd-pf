LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY PulseGenerator IS
    PORT (
        clock : IN STD_LOGIC;
        startStop : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        pulse : OUT STD_LOGIC
    );
END PulseGenerator;

ARCHITECTURE Behavioral OF PulseGenerator IS
	CONSTANT MAX : POSITIVE := 25000000;
   SIGNAL s_Cnt : NATURAL RANGE 0 TO MAX - 1;
BEGIN
    PROCESS (clock)
    BEGIN
        IF (rising_edge(clock)) THEN
            IF (startStop = '1') THEN
                pulse <= '0';
                IF (reset = '1') THEN
                    s_Cnt <= 0;
                ELSE
                    s_Cnt <= s_Cnt + 1;
                    IF (s_Cnt = MAX - 1) THEN
                        s_Cnt <= 0;
                        pulse <= '1';
                    END IF;
                END IF;
            END IF;
        END IF;
    END PROCESS;
END Behavioral;