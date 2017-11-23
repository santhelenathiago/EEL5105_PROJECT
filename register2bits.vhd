library ieee;
use ieee.std_logic_1164.all;

entity register2bits is
	port(clock  : in std_logic;
		  input  : in std_logic_vector(1 downto 0);
		  output : out std_logic_vector(1 downto 0);
		  load   : in std_logic;
		  reset  : in std_logic
		  );
end register2bits;

architecture internalCircuit of register2bits is

	component FFD is
		port (CLK: in std_logic;
				EN: in std_logic;
				RST: in std_logic;
				D: in std_logic;
				Q: out std_logic );
	end component;

begin
	FFD0 : FFD port map(clock, load, reset, input(0), output(0));
	FFD1 : FFD port map(clock, load, reset, input(1), output(1));
end internalCircuit;