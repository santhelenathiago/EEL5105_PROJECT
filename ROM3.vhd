library ieee;
use ieee.std_logic_1164.all;

entity ROM3 is
  port (address  : in std_logic_vector(3 downto 0);
		  data 	  : out std_logic_vector(7 downto 0));
end entity ROM3;

architecture behavioral3 of ROM3 is
  type mem is array (0 to 9) of std_logic_vector(7 downto 0);
  constant my_Rom : mem := (
	0 => "11110011", -- F3
	1 => "10001101", -- 8D
   2 => "11010110", -- D6
	3 => "11100101", -- E5
	4 => "11001101", -- CD
	5 => "00100111", -- 27
	6 => "10011101", -- 9D
	7 => "11010101", -- D5
	8 => "11000011", -- C3
	9 => "00101001"); --29
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
end architecture behavioral3;