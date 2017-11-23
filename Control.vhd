library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Control is 
	port(display5 : out std_logic_vector(6 downto 0);
	
		  stp	     : out std_logic;
		  play	  : out std_logic;
		  reset	  : out std_logic;
		  
		  clock	  : in std_logic;
		  playing  : in std_logic;
		  keys     : in std_logic_vector(3 downto 0));
end Control;

architecture controller of control is 
	--Signals ------------------------------------------------------------------
	signal btn        : std_logic_vector(3 downto 0);
	signal stpSig     : std_logic := '0';
	signal playSig    : std_logic := '0';
	signal resetSig 	: std_logic := '0';
 	
	type STATES is (Init, Setup, Game, Result);
	signal nextS, actualS : STATES;
	
	--Components ---------------------------------------------------------------
	component ButtonSync is 
		port(KEY0, KEY1, KEY2, KEY3, CLK: in std_logic;
			  BTN0, BTN1, BTN2, BTN3: out std_logic);
	end component;
	
begin	
	process (clock, btn(0), actualS) 
	begin
		if (btn(0) = '0') then
			actualS <= Init;
			resetSig <= '1';
		elsif (rising_edge(clock)) then
			actualS <= nextS;
			resetSig <= '0';
		end if;
	end process;
	
	process (actualS, btn(1), playing) 
	begin
		case actualS is
			when Init =>
				stpSig  <= '0';
				playSig <= '0';
				
				if (btn(1) = '0') then
					nextS <= Setup;
				else 
					nextS <= Init;
				end if;
				
			when Setup =>
				stpSig  <= '1';	
				playSig <= '0';
				
				if (btn(1) = '0') then
					nextS <= Game;
					playSig <= '1';
				else 
					nextS <= Setup;
				end if;
				
			when Game =>
				stpSig   <= '0';
				playSig  <= '1';
				
				if (playing = '1') then 
					nextS <= Game;
				else 
					nextS <= Result;
				end if;
				
			when Result =>
				stpSig  <= '0';
				playSig <= '0';
				
				if (btn(1) = '0') then 
					nextS <= Init;
				else 
					nextS <= Result;
				end if;
			
		end case;
	end process;
	--ButtonSync usage ---------------------------------------------------------
	BTNSYNC : ButtonSync port map(keys(0), keys(1), keys(2), keys(3), 
	                              clock, btn(0), btn(1), btn(2), btn(3));
	
	--Connections with outputs and inputs --------------------------------------
	stp 	  	  <= stpSig;
	play  	  <= playSig;
	reset      <= resetSig;
	
	--Display L ----------------------------------------------------------------
	display5 <= "0001110" when playSig = '1' or stpSig = '1' else "1111111";
	
end controller;