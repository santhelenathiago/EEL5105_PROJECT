library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;

entity IntToHexConv is 
	port(input  : in 	integer range 0 to 160;
		  output : out std_logic_vector);
end IntToHexConv;

architecture bhvr of IntToHexConv is 
begin
	output <= std_logic_vector(input);

end bhvr;