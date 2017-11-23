library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux is 
	port (entrada0 : in std_logic_vector(3 downto 0);
			entrada1 : in std_logic_vector(3 downto 0);
			sel : in std_logic;
			saida : out std_logic_vector(3 downto 0));
end mux;

architecture circuito of mux is 
begin
	saida <= entrada0 when sel = '0' else
				entrada1;
end circuito;