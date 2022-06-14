LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY Delayer IS
    PORT (
        clock : IN STD_LOGIC;
        start : IN STD_LOGIC;
        done : OUT STD_LOGIC;
    );
END Delayer;

ARCHITECTURE Behavioral OF Delayer IS
    CONSTANT delay : INTEGER := 300;
    SIGNAL count : INTEGER := 0;
BEGIN
    Counting : PROCESS (clock) BEGIN
        IF (count < delay) THEN
            count <= count + 1;
        ELSE
            count <= 0;
            done <= '1';
        END IF;
END Behavioral;