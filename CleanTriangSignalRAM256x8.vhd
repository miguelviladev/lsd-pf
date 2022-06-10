library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity CleanTriangSignalRAM256x8 is
	port(writeEnable : in std_logic;
		  clock		  : in std_logic;
		  writeData	  : in std_logic_vector(7 downto 0);
		  address	  : in std_logic_vector(7 downto 0);
		  dataOut	  : out std_logic_vector(7 downto 0));
end CleanTriangSignalRAM256x8;

architecture Behavioral of CleanTriangSignalRAM256x8 is
	constant NUM_WORDS : integer := 256;
	constant WORD_SIZE : integer := 8;
	
	subtype TDataWord is std_logic_vector(WORD_SIZE - 1 downto 0);
	type TMemory is array (0 to NUM_WORDS - 1) of TDataWord;
	signal s_memory: TMemory;
	
begin
	process(clock)
	begin
		if (rising_edge(clock)) then
			if (writeEnable = '1') then
				s_memory(to_integer(unsigned(address))) <= writeData;
			end if;
		end if;
	end process;
	dataOut <= s_memory(to_integer(unsigned(address)));
end Behavioral;