library ieee;
use ieee.std_logic_1164.all;

entity ROM2 is
  port (address  : in std_logic_vector(3 downto 0);
		  data 	  : out std_logic_vector(7 downto 0));
end entity ROM2;

architecture behavioral2 of ROM2 is
  type mem is array (0 to 9) of std_logic_vector(7 downto 0);
  constant my_Rom : mem := (
	0 => "00111010", -- 3A
	1 => "01101011", -- 6B
   2 => "11010011", -- D3
	3 => "10100111", -- A7
	4 => "01000111", -- 47
	5 => "11001111", -- CF
	6 => "10111001", -- B9
	7 => "11001101", -- CD
	8 => "10011001", -- 99
	9 => "11111111"); --FF
begin
   process (address)
   begin
     case address is
       when "0000" => data <= my_rom(0);
       when "0001" => data <= my_rom(1);
       when "0010" => data <= my_rom(2);
       when "0011" => data <= my_rom(3);
       when "0100" => data <= my_rom(4);
       when "0101" => data <= my_rom(5);
       when "0110" => data <= my_rom(6);
       when "0111" => data <= my_rom(7);
       when "1000" => data <= my_rom(8);
       when "1001" => data <= my_rom(9);
       when others => data <= "00000000";
       end case;
  end process;
end architecture behavioral2;