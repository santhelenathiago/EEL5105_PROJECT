library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity ClockChanger is
    port (
		  choice  : in  std_logic_vector(1 downto 0);
        clk_in  : in  STD_LOGIC;
        reset   : in  STD_LOGIC;
        clk_out : out STD_LOGIC
    );
end ClockChanger;

architecture Behavioral of ClockChanger is
    signal counter0, counter1, counter2, counter3 : integer range 0 to 499999999 := 0;
	 signal clock0, clock1, clock2, clock3 : std_logic;
	 
begin
    frequency_divider: process (reset, clk_in) begin
        if (reset = '1') then
            counter0 <= 0;
				counter1 <= 0;
				counter2 <= 0;
				counter3 <= 0;
        elsif rising_edge(clk_in) then
            if (counter0 = 20) then --499999999
                counter0 <= 0;
            else
                counter0 <= counter0 + 1;
            end if;
				
				if (counter1 = 15) then --199999999
					counter1 <= 0;				
				else 
					counter1 <= counter1 + 1;
				end if;
				
				if (counter2 = 10) then --149999999 
					counter2 <= 0;				
				else 
					counter2 <= counter2 + 1;
				end if;
				
				if (counter3 = 5) then --99999999 
					counter3 <= 0;				
				else 
					counter3 <= counter3 + 1;
				end if;
				
        end if;
    end process;
    
    clock0 <= '1' when counter0 = 20 else '0'; --499999999
	 clock1 <= '1' when counter1 = 15 else '0'; --199999999
	 clock2 <= '1' when counter2 = 10 else '0'; --149999999
	 clock3 <= '1' when counter3 = 5 else '0'; --99999999
	 
	 clk_out <= clock0 when choice = "00" else 
					clock1 when choice = "01" else 
					clock2 when choice = "10" else
					clock3 when choice = "11";
					
end Behavioral;