library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.shift_left;

entity Datapath is
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
		  
end Datapath;

architecture dtpth of Datapath is 
	--Signals -----------------------------------------------------------------
	signal gameLevel 		: std_logic_vector(1 downto 0);
	signal currentHex		: std_logic_vector(7 downto 0);
	signal playingSig		: std_logic := '0';
	signal showingResult : std_logic := '0';
	
	signal pointsMult    : integer range 0  to 3;
	signal pointsSum		: std_logic_vector(3 downto 0);
	signal hexpoints 		: std_logic_vector(7 downto 0);
	
	--ROM things --------------------------------------------------------------
	signal gameROM   		: std_logic_vector(1 downto 0);
	signal ROMin			: std_logic_vector(3 downto 0);
	signal ROM0out			: std_logic_vector(7 downto 0);
	signal ROM1out			: std_logic_vector(7 downto 0);
	signal ROM2out			: std_logic_vector(7 downto 0);
	signal ROM3out			: std_logic_vector(7 downto 0);
	
	--Displays things ---------------------------------------------------------
	signal display3E		: std_logic_vector(3 downto 0);
	signal display2E		: std_logic_vector(3 downto 0);
	signal display1E		: std_logic_vector(3 downto 0);
	signal display0E		: std_logic_vector(3 downto 0);
	
	signal display0p		: std_logic_vector(6 downto 0);
	signal display1p		: std_logic_vector(6 downto 0);
	signal display2s		: std_logic_vector(6 downto 0); 
	signal display3s		: std_logic_vector(6 downto 0);
	
	--Game clock things -------------------------------------------------------
	signal gameClock		: std_logic;
	signal resetGC			: std_logic;
	
	signal ledsSig			: std_logic_vector(9 downto 0) := "0000000000";

	--Components --------------------------------------------------------------
	component ROM0  is
		port (address : in  std_logic_vector(3 downto 0);
				data 	  : out std_logic_vector(7 downto 0));
	end component;
	
	component ROM1 is
		port (address : in  std_logic_vector(3 downto 0);
				data 	  : out std_logic_vector(7 downto 0));		
	end component;
	
	component ROM2 is
		port (address : in  std_logic_vector(3 downto 0);
				data 	  : out std_logic_vector(7 downto 0));
	end component;
	
	component ROM3 is
		port (address : in  std_logic_vector(3 downto 0);
				data 	  : out std_logic_vector(7 downto 0));
	end component;
	
	component decod7seg is 
		port (entrada : in  std_logic_vector(3 downto 0);
				saida   : out std_logic_vector(6 downto 0));
	end component;
	
	component ClockChanger is
		port (choice  : in  std_logic_vector(1 downto 0);
				clk_in  : in  STD_LOGIC;
				reset   : in  STD_LOGIC;
				clk_out : out STD_LOGIC);
	end component;
	
	--Begin -------------------------------------------------------------------
begin
	process(play, stp, sws, gameClock, reset)
	begin
		if(reset = '1') then 
			playingSig 		<= '0';
			ledsSig 			<= "0000000000";
			showingResult 	<= '0';
			resetGC			<= '1';
			pointsSum      <= "0000";
		--Setup process -------------------------------------------------------
		elsif(stp = '1') then
			gameLevel 		<= sws(9 downto 8);
			gameROM   		<= sws(1 downto 0);
			ledsSig 			<= "0000000000"; 
			resetGC 			<= '1';
			showingResult  <= '0';
			pointsSum      <= "0000";
			
		elsif(play = '1' and playingSig = '0' and showingResult = '0') then
			--Game State -------------------------------------------------------
			playingSig <= '1';
			resetGC <= '0';
			ROMin <= "0000";
			ledsSig <= "0000000000";
		
		elsif (rising_edge(gameClock)) then
			if ((currentHex(3 downto 0) = sws(3 downto 0)) and 
				 (currentHex(7 downto 4) = sws(7 downto 4))) then
				 ledsSig <= ledsSig(8 downto 0) & '1';
				 pointsSum <= pointsSum + 1;
			end if;	 
				 
			ROMin <= ROMin + "0001";
	      if (ROMin = "1001") then
					playingSig <= '0';
					showingResult <= '1';
					resetGC <= '1';
		   end if;			
		end if;
	end process;
	
	
	-- Playing states ---------------------------------------------------------
	playing 	<= playingSig;
	leds 		<= ledsSig;
	
	--Points calculating ------------------------------------------------------
	pointsMult <= 0  when gameLevel = "00" else
					  1  when gameLevel = "01" else
					  2  when gameLevel = "10" else
					  3  when gameLevel = "11";
					  
	--Display current level ---------------------------------------------------
	display4 <= "1000000" when gameLevel  = "00" and (stp = '1' or playingSig = '1') else
					"1111001" when gameLevel  = "01" and (stp = '1' or playingSig = '1') else
					"0100100" when gameLevel  = "10" and (stp = '1' or playingSig = '1') else
					"0110000" when gameLevel  = "11" and (stp = '1' or playingSig = '1') else 
					"1111111";
					
	--Display values for game room --------------------------------------------
	display0E <= currentHex(3 downto 0);
	display1E <= currentHex(7 downto 4);
	
	display2E <= hexpoints(3 downto 0);
	display3E <= hexpoints(7 downto 4);
	
	display0  <= "1111111" when playingSig 	= '0' else display0p;
	display1  <= "1111111" when playingSig 	= '0' else display1p;	
	display2  <= "1111111" when showingResult = '0' else display2s;	
	display3  <= "1111111" when showingResult = '0' else display3s;
	
	DISPLAY0D : decod7seg port map(display0E, display0p);
	DISPLAY1D : decod7seg port map(display1E, display1p);
	DISPLAY2D : decod7seg port map(display2E, display2s);
	DISPLAY3D : decod7seg port map(display3E, display3s);
					
	--Values to bem displayed -------------------------------------------------
	currentHex <= ROM0out when gameROM = "00" else
					  ROM1out when gameROM = "01" else
					  ROM2out when gameROM = "10" else
					  ROM3out when gameROM = "11";
					  
					  
	hexpoints <= "0000" & pointsSum       when pointsMult = 0 else 
					 "000" & pointsSum & "0"  when pointsMult = 1 else
					 "00" & pointsSum & "00"  when pointsMult = 2 else
					 "0" & pointsSum & "000"  when pointsMult = 3;		  
	
	--ClockChanger Application ------------------------------------------------
	changeClock : ClockChanger port map(gameLevel, clock, resetGC, gameClock);
	
	--ROMs instantiation ------------------------------------------------------
	iROM0 : ROM0 port map(ROMin, ROM0out);
	iROM1 : ROM1 port map(ROMin, ROM1out);
	iROM2 : ROM2 port map(ROMin, ROM2out);
	iROM3 : ROM3 port map(ROMin, ROM3out);	
	
end dtpth;