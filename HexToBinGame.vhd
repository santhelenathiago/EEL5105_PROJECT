library ieee;
use ieee.std_logic_1164.all;

entity HexToBinGame is 
	port(KEY 		: in std_logic_vector(3 downto 0);
		  CLOCK_50 	: in std_logic;
		  SW			: in std_logic_vector(9 downto 0);
		  
		  LEDR 		: out std_logic_vector(9 downto 0);
		  HEX0 		: out std_logic_vector(6 downto 0);
		  HEX1 		: out std_logic_vector(6 downto 0);
		  HEX2 		: out std_logic_vector(6 downto 0);
		  HEX3 		: out std_logic_vector(6 downto 0);
		  HEX4 		: out std_logic_vector(6 downto 0);
		  HEX5 		: out std_logic_vector(6 downto 0));
end HexToBinGame;

architecture circuit of HexToBinGame is
	--Signals ------------------------------------------------------------------
	signal playingSig   : std_logic;
	signal playSig		  : std_logic;
	signal setupSig	  : std_logic;
	signal resetSig	  : std_logic;
	
	--Components ---------------------------------------------------------------
	component Datapath is 
		port(leds		 : out std_logic_vector(9 downto  0);
			  display0   : out std_logic_vector(6 downto  0);
		     display1   : out std_logic_vector(6 downto  0);
		     display2   : out std_logic_vector(6 downto  0);
		     display3   : out std_logic_vector(6 downto  0);
			  display4   : out std_logic_vector(6 downto  0);
			  playing	 : out std_logic;
			  
			  sws  		 : in  std_logic_vector(9 downto 0);
			  clock		 : in  std_logic;
			  play 		 : in  std_logic;
			  stp	       : in  std_logic;
			  reset 		 : in  std_logic);
	end component;
	
	component Control is 
		port(display5 : out std_logic_vector(6 downto 0);
	
			  stp	     : out std_logic;
			  play	  : out std_logic;
			  reset	  : out std_logic;
			  
			  clock	  : in std_logic;
			  playing  : in std_logic;
			  keys     : in std_logic_vector(3 downto 0));
	end component;
	
begin
	CONTROLLER : Control  port map(HEX5, setupSig, playSig, resetSig, CLOCK_50, playingSig, KEY);
	DATAPATHI  : Datapath port map(LEDR, HEX0, HEX1, HEX2, HEX3, HEX4, playingSig, SW, CLOCK_50, playSig, setupSig, resetSig);
end circuit;