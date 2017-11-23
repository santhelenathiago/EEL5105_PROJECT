-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"

-- DATE "11/23/2017 15:50:05"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	HexToBinGame IS
    PORT (
	KEY : IN std_logic_vector(3 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END HexToBinGame;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF HexToBinGame IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~89_sumout\ : std_logic;
SIGNAL \CONTROLLER|resetSig~feeder_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CONTROLLER|BTNSYNC|btn0state.EsperaApertar~0_combout\ : std_logic;
SIGNAL \CONTROLLER|BTNSYNC|btn0state.EsperaApertar~q\ : std_logic;
SIGNAL \CONTROLLER|BTNSYNC|btn0next.SaidaAtiva~0_combout\ : std_logic;
SIGNAL \CONTROLLER|BTNSYNC|btn0state.SaidaAtiva~q\ : std_logic;
SIGNAL \CONTROLLER|resetSig~q\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \CONTROLLER|BTNSYNC|btn1state.EsperaApertar~0_combout\ : std_logic;
SIGNAL \CONTROLLER|BTNSYNC|btn1state.EsperaApertar~q\ : std_logic;
SIGNAL \CONTROLLER|BTNSYNC|btn1next.SaidaAtiva~0_combout\ : std_logic;
SIGNAL \CONTROLLER|BTNSYNC|btn1state.SaidaAtiva~q\ : std_logic;
SIGNAL \DATAPATHI|ROMin[0]~0_combout\ : std_logic;
SIGNAL \DATAPATHI|ROMin[1]~1_combout\ : std_logic;
SIGNAL \DATAPATHI|ROMin[2]~2_combout\ : std_logic;
SIGNAL \DATAPATHI|ROMin[3]~3_combout\ : std_logic;
SIGNAL \DATAPATHI|Equal2~0_combout\ : std_logic;
SIGNAL \DATAPATHI|showingResult~0_combout\ : std_logic;
SIGNAL \DATAPATHI|showingResult~q\ : std_logic;
SIGNAL \DATAPATHI|playingSig~7_combout\ : std_logic;
SIGNAL \DATAPATHI|playingSig~1_combout\ : std_logic;
SIGNAL \DATAPATHI|playingSig~3_combout\ : std_logic;
SIGNAL \DATAPATHI|playingSig~0_combout\ : std_logic;
SIGNAL \DATAPATHI|playingSig~_emulated_q\ : std_logic;
SIGNAL \DATAPATHI|playingSig~2_combout\ : std_logic;
SIGNAL \CONTROLLER|Selector3~0_combout\ : std_logic;
SIGNAL \CONTROLLER|actualS.Game~q\ : std_logic;
SIGNAL \CONTROLLER|Selector4~0_combout\ : std_logic;
SIGNAL \CONTROLLER|actualS.Result~q\ : std_logic;
SIGNAL \CONTROLLER|actualS.Init~0_combout\ : std_logic;
SIGNAL \CONTROLLER|actualS.Init~q\ : std_logic;
SIGNAL \CONTROLLER|actualS.Setup~0_combout\ : std_logic;
SIGNAL \CONTROLLER|actualS.Setup~q\ : std_logic;
SIGNAL \DATAPATHI|playingSig~6_combout\ : std_logic;
SIGNAL \DATAPATHI|resetGC~1_combout\ : std_logic;
SIGNAL \DATAPATHI|resetGC~3_combout\ : std_logic;
SIGNAL \DATAPATHI|resetGC~0_combout\ : std_logic;
SIGNAL \DATAPATHI|resetGC~_emulated_q\ : std_logic;
SIGNAL \DATAPATHI|resetGC~2_combout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~90\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~93_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~94\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~97_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~98\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~113_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~114\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~101_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~102\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~105_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~106\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~109_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~110\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~81_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~82\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~85_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~86\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~9_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~10\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~13_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~14\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~5_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~6\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~17_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~18\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~21_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~22\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~25_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~26\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~29_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~30\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~33_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~34\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~37_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~38\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~41_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~42\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~45_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Equal1~1_combout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~46\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~1_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~2\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~49_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~50\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~53_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~54\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~57_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~58\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~61_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~62\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~65_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~66\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~69_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~70\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~73_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~74\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add1~77_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Equal1~3_combout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Equal1~4_combout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Equal1~2_combout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Equal1~0_combout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Equal1~5_combout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|clock1~q\ : std_logic;
SIGNAL \DATAPATHI|gameROM[0]~0_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~113_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~114\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~109_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~110\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~105_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~106\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~101_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~102\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~53_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~54\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~9_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~10\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~13_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~14\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~17_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~18\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~21_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~22\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~25_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~26\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~29_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~30\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~33_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~34\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~37_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~38\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~41_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~42\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~45_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~46\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~1_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~2\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~49_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~50\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~5_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~6\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~57_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~58\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~61_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~62\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~65_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~66\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~69_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~70\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~73_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~74\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~77_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~78\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~97_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Equal2~4_combout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Equal2~2_combout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~98\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~93_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~94\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~89_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~90\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~85_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~86\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add2~81_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Equal2~3_combout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Equal2~1_combout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Equal2~0_combout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Equal2~5_combout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|clock2~q\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~57_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~58\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~53_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~54\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~49_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~50\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~1_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~2\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~45_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~46\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~41_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~42\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~37_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~38\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~33_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~34\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~29_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~30\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~25_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~26\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~21_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~22\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~17_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~18\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~13_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~14\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~9_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~10\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~113_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~114\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~5_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~6\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~61_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~62\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~109_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~110\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~105_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~106\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~101_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~102\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~97_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Equal3~4_combout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Equal3~0_combout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~98\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~93_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~94\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~89_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~90\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~85_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~86\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~81_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~82\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~77_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~78\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~73_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Equal3~3_combout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~74\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~69_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~70\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add3~65_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Equal3~2_combout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Equal3~1_combout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Equal3~5_combout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|clock3~q\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~33_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~34\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~37_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~38\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~41_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~42\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~45_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~46\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~1_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~2\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~49_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~50\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~53_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~54\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~57_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~58\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~61_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~62\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~65_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~66\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~69_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~70\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~73_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~74\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~77_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~78\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~81_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~82\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~85_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~86\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~29_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Equal0~1_combout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~30\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~113_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~114\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~89_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~90\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~93_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~94\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~101_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~102\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~105_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~106\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~109_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~110\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~97_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Equal0~4_combout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Equal0~3_combout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Equal0~2_combout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~98\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~25_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~26\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~21_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~22\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~17_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~18\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~13_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~14\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~9_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~10\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Add0~5_sumout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Equal0~0_combout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|Equal0~5_combout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|clock0~q\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \DATAPATHI|changeClock|clockOut~0_combout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|clockOut~q\ : std_logic;
SIGNAL \DATAPATHI|ledsSig[0]~feeder_combout\ : std_logic;
SIGNAL \DATAPATHI|ledsSig[9]~0_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \DATAPATHI|currentHex[5]~5_combout\ : std_logic;
SIGNAL \DATAPATHI|currentHex[3]~2_combout\ : std_logic;
SIGNAL \DATAPATHI|currentHex[4]~4_combout\ : std_logic;
SIGNAL \DATAPATHI|process_0~2_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \DATAPATHI|currentHex[0]~0_combout\ : std_logic;
SIGNAL \DATAPATHI|currentHex[2]~3_combout\ : std_logic;
SIGNAL \DATAPATHI|currentHex[1]~1_combout\ : std_logic;
SIGNAL \DATAPATHI|process_0~1_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \DATAPATHI|currentHex[6]~7_combout\ : std_logic;
SIGNAL \DATAPATHI|currentHex[7]~6_combout\ : std_logic;
SIGNAL \DATAPATHI|process_0~0_combout\ : std_logic;
SIGNAL \DATAPATHI|process_0~3_combout\ : std_logic;
SIGNAL \DATAPATHI|ledsSig[6]~feeder_combout\ : std_logic;
SIGNAL \DATAPATHI|ledsSig[7]~feeder_combout\ : std_logic;
SIGNAL \DATAPATHI|ledsSig[8]~feeder_combout\ : std_logic;
SIGNAL \DATAPATHI|ledsSig[9]~feeder_combout\ : std_logic;
SIGNAL \DATAPATHI|DISPLAY0D|saida[0]~0_combout\ : std_logic;
SIGNAL \DATAPATHI|DISPLAY0D|saida[0]~1_combout\ : std_logic;
SIGNAL \DATAPATHI|DISPLAY0D|saida[1]~2_combout\ : std_logic;
SIGNAL \DATAPATHI|DISPLAY0D|saida[2]~3_combout\ : std_logic;
SIGNAL \DATAPATHI|DISPLAY0D|saida[3]~4_combout\ : std_logic;
SIGNAL \DATAPATHI|DISPLAY0D|saida[4]~5_combout\ : std_logic;
SIGNAL \DATAPATHI|DISPLAY0D|saida[5]~6_combout\ : std_logic;
SIGNAL \DATAPATHI|DISPLAY0D|saida[6]~7_combout\ : std_logic;
SIGNAL \DATAPATHI|DISPLAY1D|saida[0]~0_combout\ : std_logic;
SIGNAL \DATAPATHI|DISPLAY1D|saida[0]~1_combout\ : std_logic;
SIGNAL \DATAPATHI|DISPLAY1D|saida[1]~2_combout\ : std_logic;
SIGNAL \DATAPATHI|DISPLAY1D|saida[2]~3_combout\ : std_logic;
SIGNAL \DATAPATHI|DISPLAY1D|saida[3]~4_combout\ : std_logic;
SIGNAL \DATAPATHI|DISPLAY1D|saida[4]~5_combout\ : std_logic;
SIGNAL \DATAPATHI|DISPLAY1D|saida[5]~6_combout\ : std_logic;
SIGNAL \DATAPATHI|DISPLAY1D|saida[6]~7_combout\ : std_logic;
SIGNAL \DATAPATHI|process_0~4_combout\ : std_logic;
SIGNAL \DATAPATHI|pointsSum[0]~1_combout\ : std_logic;
SIGNAL \DATAPATHI|pointsSum[1]~0_combout\ : std_logic;
SIGNAL \DATAPATHI|pointsSum[2]~2_combout\ : std_logic;
SIGNAL \DATAPATHI|pointsSum[3]~3_combout\ : std_logic;
SIGNAL \DATAPATHI|DISPLAY2D|saida[0]~0_combout\ : std_logic;
SIGNAL \DATAPATHI|DISPLAY2D|saida[0]~1_combout\ : std_logic;
SIGNAL \DATAPATHI|hexpoints[2]~2_combout\ : std_logic;
SIGNAL \DATAPATHI|hexpoints[0]~0_combout\ : std_logic;
SIGNAL \DATAPATHI|hexpoints[1]~1_combout\ : std_logic;
SIGNAL \DATAPATHI|hexpoints[3]~3_combout\ : std_logic;
SIGNAL \DATAPATHI|DISPLAY2D|saida[1]~2_combout\ : std_logic;
SIGNAL \DATAPATHI|DISPLAY2D|saida[2]~3_combout\ : std_logic;
SIGNAL \DATAPATHI|DISPLAY2D|saida[3]~4_combout\ : std_logic;
SIGNAL \DATAPATHI|DISPLAY2D|saida[4]~5_combout\ : std_logic;
SIGNAL \DATAPATHI|DISPLAY2D|saida[5]~6_combout\ : std_logic;
SIGNAL \DATAPATHI|DISPLAY2D|saida[6]~7_combout\ : std_logic;
SIGNAL \DATAPATHI|hexpoints[4]~5_combout\ : std_logic;
SIGNAL \DATAPATHI|hexpoints[5]~4_combout\ : std_logic;
SIGNAL \DATAPATHI|DISPLAY3D|saida~0_combout\ : std_logic;
SIGNAL \DATAPATHI|DISPLAY3D|saida[1]~1_combout\ : std_logic;
SIGNAL \DATAPATHI|DISPLAY3D|saida[2]~2_combout\ : std_logic;
SIGNAL \DATAPATHI|DISPLAY3D|saida[3]~3_combout\ : std_logic;
SIGNAL \DATAPATHI|display3[4]~0_combout\ : std_logic;
SIGNAL \rtl~4_combout\ : std_logic;
SIGNAL \DATAPATHI|display3[6]~1_combout\ : std_logic;
SIGNAL \DATAPATHI|display4[0]~0_combout\ : std_logic;
SIGNAL \DATAPATHI|display4~1_combout\ : std_logic;
SIGNAL \DATAPATHI|display4[2]~2_combout\ : std_logic;
SIGNAL \DATAPATHI|display4[4]~3_combout\ : std_logic;
SIGNAL \DATAPATHI|display4~4_combout\ : std_logic;
SIGNAL \DATAPATHI|display4~5_combout\ : std_logic;
SIGNAL \CONTROLLER|display5~0_combout\ : std_logic;
SIGNAL \DATAPATHI|hexpoints\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DATAPATHI|pointsSum\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DATAPATHI|ROMin\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DATAPATHI|ledsSig\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \DATAPATHI|changeClock|counter0\ : std_logic_vector(28 DOWNTO 0);
SIGNAL \DATAPATHI|gameROM\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DATAPATHI|changeClock|counter3\ : std_logic_vector(28 DOWNTO 0);
SIGNAL \DATAPATHI|changeClock|counter1\ : std_logic_vector(28 DOWNTO 0);
SIGNAL \DATAPATHI|gameLevel\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DATAPATHI|changeClock|counter2\ : std_logic_vector(28 DOWNTO 0);
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \DATAPATHI|ALT_INV_resetGC~1_combout\ : std_logic;
SIGNAL \DATAPATHI|ALT_INV_playingSig~1_combout\ : std_logic;
SIGNAL \DATAPATHI|ALT_INV_gameLevel\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DATAPATHI|ALT_INV_gameROM\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DATAPATHI|ALT_INV_resetGC~0_combout\ : std_logic;
SIGNAL \DATAPATHI|ALT_INV_resetGC~2_combout\ : std_logic;
SIGNAL \DATAPATHI|ALT_INV_resetGC~_emulated_q\ : std_logic;
SIGNAL \DATAPATHI|changeClock|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|ALT_INV_Equal3~4_combout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|ALT_INV_Equal3~3_combout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|ALT_INV_Equal3~2_combout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|ALT_INV_Equal3~1_combout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|ALT_INV_Equal2~4_combout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|ALT_INV_Equal2~3_combout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|ALT_INV_Equal2~2_combout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \DATAPATHI|changeClock|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \CONTROLLER|BTNSYNC|ALT_INV_btn0state.EsperaApertar~q\ : std_logic;
SIGNAL \CONTROLLER|ALT_INV_actualS.Result~q\ : std_logic;
SIGNAL \DATAPATHI|ALT_INV_playingSig~0_combout\ : std_logic;
SIGNAL \DATAPATHI|ALT_INV_playingSig~7_combout\ : std_logic;
SIGNAL \DATAPATHI|ALT_INV_playingSig~6_combout\ : std_logic;
SIGNAL \CONTROLLER|BTNSYNC|ALT_INV_btn1state.EsperaApertar~q\ : std_logic;
SIGNAL \DATAPATHI|changeClock|ALT_INV_clock0~q\ : std_logic;
SIGNAL \DATAPATHI|changeClock|ALT_INV_clock3~q\ : std_logic;
SIGNAL \DATAPATHI|changeClock|ALT_INV_clock1~q\ : std_logic;
SIGNAL \DATAPATHI|changeClock|ALT_INV_clock2~q\ : std_logic;
SIGNAL \CONTROLLER|BTNSYNC|ALT_INV_btn0state.SaidaAtiva~q\ : std_logic;
SIGNAL \CONTROLLER|ALT_INV_actualS.Init~q\ : std_logic;
SIGNAL \DATAPATHI|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \DATAPATHI|ALT_INV_process_0~4_combout\ : std_logic;
SIGNAL \DATAPATHI|ALT_INV_playingSig~2_combout\ : std_logic;
SIGNAL \DATAPATHI|ALT_INV_playingSig~_emulated_q\ : std_logic;
SIGNAL \DATAPATHI|ALT_INV_gameROM[0]~0_combout\ : std_logic;
SIGNAL \DATAPATHI|ALT_INV_process_0~3_combout\ : std_logic;
SIGNAL \DATAPATHI|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \DATAPATHI|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \DATAPATHI|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \DATAPATHI|ALT_INV_ledsSig[9]~0_combout\ : std_logic;
SIGNAL \CONTROLLER|BTNSYNC|ALT_INV_btn1state.SaidaAtiva~q\ : std_logic;
SIGNAL \CONTROLLER|ALT_INV_resetSig~q\ : std_logic;
SIGNAL \CONTROLLER|ALT_INV_display5~0_combout\ : std_logic;
SIGNAL \CONTROLLER|ALT_INV_actualS.Game~q\ : std_logic;
SIGNAL \DATAPATHI|ALT_INV_display4~4_combout\ : std_logic;
SIGNAL \DATAPATHI|ALT_INV_display4[4]~3_combout\ : std_logic;
SIGNAL \DATAPATHI|ALT_INV_display4~1_combout\ : std_logic;
SIGNAL \DATAPATHI|ALT_INV_display4[0]~0_combout\ : std_logic;
SIGNAL \CONTROLLER|ALT_INV_actualS.Setup~q\ : std_logic;
SIGNAL \DATAPATHI|DISPLAY3D|ALT_INV_saida[3]~3_combout\ : std_logic;
SIGNAL \DATAPATHI|DISPLAY3D|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \DATAPATHI|ALT_INV_hexpoints[4]~5_combout\ : std_logic;
SIGNAL \DATAPATHI|ALT_INV_hexpoints\ : std_logic_vector(6 DOWNTO 6);
SIGNAL \DATAPATHI|ALT_INV_hexpoints[5]~4_combout\ : std_logic;
SIGNAL \DATAPATHI|ALT_INV_hexpoints[3]~3_combout\ : std_logic;
SIGNAL \DATAPATHI|ALT_INV_hexpoints[2]~2_combout\ : std_logic;
SIGNAL \DATAPATHI|ALT_INV_hexpoints[1]~1_combout\ : std_logic;
SIGNAL \DATAPATHI|ALT_INV_hexpoints[0]~0_combout\ : std_logic;
SIGNAL \DATAPATHI|DISPLAY2D|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \DATAPATHI|ALT_INV_pointsSum\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DATAPATHI|ALT_INV_showingResult~q\ : std_logic;
SIGNAL \DATAPATHI|ALT_INV_currentHex[6]~7_combout\ : std_logic;
SIGNAL \DATAPATHI|ALT_INV_currentHex[7]~6_combout\ : std_logic;
SIGNAL \DATAPATHI|ALT_INV_currentHex[5]~5_combout\ : std_logic;
SIGNAL \DATAPATHI|ALT_INV_currentHex[4]~4_combout\ : std_logic;
SIGNAL \DATAPATHI|DISPLAY1D|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \DATAPATHI|ALT_INV_currentHex[2]~3_combout\ : std_logic;
SIGNAL \DATAPATHI|ALT_INV_currentHex[3]~2_combout\ : std_logic;
SIGNAL \DATAPATHI|ALT_INV_currentHex[1]~1_combout\ : std_logic;
SIGNAL \DATAPATHI|ALT_INV_currentHex[0]~0_combout\ : std_logic;
SIGNAL \DATAPATHI|DISPLAY0D|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \DATAPATHI|ALT_INV_ROMin\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DATAPATHI|ALT_INV_ledsSig\ : std_logic_vector(8 DOWNTO 5);
SIGNAL \DATAPATHI|changeClock|ALT_INV_counter0\ : std_logic_vector(28 DOWNTO 0);
SIGNAL \DATAPATHI|changeClock|ALT_INV_counter3\ : std_logic_vector(28 DOWNTO 0);
SIGNAL \DATAPATHI|changeClock|ALT_INV_counter1\ : std_logic_vector(28 DOWNTO 0);
SIGNAL \DATAPATHI|changeClock|ALT_INV_counter2\ : std_logic_vector(28 DOWNTO 0);

BEGIN

ww_KEY <= KEY;
ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\DATAPATHI|ALT_INV_resetGC~1_combout\ <= NOT \DATAPATHI|resetGC~1_combout\;
\DATAPATHI|ALT_INV_playingSig~1_combout\ <= NOT \DATAPATHI|playingSig~1_combout\;
\DATAPATHI|ALT_INV_gameLevel\(0) <= NOT \DATAPATHI|gameLevel\(0);
\DATAPATHI|ALT_INV_gameLevel\(1) <= NOT \DATAPATHI|gameLevel\(1);
\DATAPATHI|ALT_INV_gameROM\(0) <= NOT \DATAPATHI|gameROM\(0);
\DATAPATHI|ALT_INV_gameROM\(1) <= NOT \DATAPATHI|gameROM\(1);
\DATAPATHI|ALT_INV_resetGC~0_combout\ <= NOT \DATAPATHI|resetGC~0_combout\;
\DATAPATHI|ALT_INV_resetGC~2_combout\ <= NOT \DATAPATHI|resetGC~2_combout\;
\DATAPATHI|ALT_INV_resetGC~_emulated_q\ <= NOT \DATAPATHI|resetGC~_emulated_q\;
\DATAPATHI|changeClock|ALT_INV_Equal0~4_combout\ <= NOT \DATAPATHI|changeClock|Equal0~4_combout\;
\DATAPATHI|changeClock|ALT_INV_Equal0~3_combout\ <= NOT \DATAPATHI|changeClock|Equal0~3_combout\;
\DATAPATHI|changeClock|ALT_INV_Equal0~2_combout\ <= NOT \DATAPATHI|changeClock|Equal0~2_combout\;
\DATAPATHI|changeClock|ALT_INV_Equal0~1_combout\ <= NOT \DATAPATHI|changeClock|Equal0~1_combout\;
\DATAPATHI|changeClock|ALT_INV_Equal0~0_combout\ <= NOT \DATAPATHI|changeClock|Equal0~0_combout\;
\DATAPATHI|changeClock|ALT_INV_Equal3~4_combout\ <= NOT \DATAPATHI|changeClock|Equal3~4_combout\;
\DATAPATHI|changeClock|ALT_INV_Equal3~3_combout\ <= NOT \DATAPATHI|changeClock|Equal3~3_combout\;
\DATAPATHI|changeClock|ALT_INV_Equal3~2_combout\ <= NOT \DATAPATHI|changeClock|Equal3~2_combout\;
\DATAPATHI|changeClock|ALT_INV_Equal3~1_combout\ <= NOT \DATAPATHI|changeClock|Equal3~1_combout\;
\DATAPATHI|changeClock|ALT_INV_Equal3~0_combout\ <= NOT \DATAPATHI|changeClock|Equal3~0_combout\;
\DATAPATHI|changeClock|ALT_INV_Equal1~4_combout\ <= NOT \DATAPATHI|changeClock|Equal1~4_combout\;
\DATAPATHI|changeClock|ALT_INV_Equal1~3_combout\ <= NOT \DATAPATHI|changeClock|Equal1~3_combout\;
\DATAPATHI|changeClock|ALT_INV_Equal1~2_combout\ <= NOT \DATAPATHI|changeClock|Equal1~2_combout\;
\DATAPATHI|changeClock|ALT_INV_Equal1~1_combout\ <= NOT \DATAPATHI|changeClock|Equal1~1_combout\;
\DATAPATHI|changeClock|ALT_INV_Equal1~0_combout\ <= NOT \DATAPATHI|changeClock|Equal1~0_combout\;
\DATAPATHI|changeClock|ALT_INV_Equal2~4_combout\ <= NOT \DATAPATHI|changeClock|Equal2~4_combout\;
\DATAPATHI|changeClock|ALT_INV_Equal2~3_combout\ <= NOT \DATAPATHI|changeClock|Equal2~3_combout\;
\DATAPATHI|changeClock|ALT_INV_Equal2~2_combout\ <= NOT \DATAPATHI|changeClock|Equal2~2_combout\;
\DATAPATHI|changeClock|ALT_INV_Equal2~1_combout\ <= NOT \DATAPATHI|changeClock|Equal2~1_combout\;
\DATAPATHI|changeClock|ALT_INV_Equal2~0_combout\ <= NOT \DATAPATHI|changeClock|Equal2~0_combout\;
\CONTROLLER|BTNSYNC|ALT_INV_btn0state.EsperaApertar~q\ <= NOT \CONTROLLER|BTNSYNC|btn0state.EsperaApertar~q\;
\CONTROLLER|ALT_INV_actualS.Result~q\ <= NOT \CONTROLLER|actualS.Result~q\;
\DATAPATHI|ALT_INV_playingSig~0_combout\ <= NOT \DATAPATHI|playingSig~0_combout\;
\DATAPATHI|ALT_INV_playingSig~7_combout\ <= NOT \DATAPATHI|playingSig~7_combout\;
\DATAPATHI|ALT_INV_playingSig~6_combout\ <= NOT \DATAPATHI|playingSig~6_combout\;
\CONTROLLER|BTNSYNC|ALT_INV_btn1state.EsperaApertar~q\ <= NOT \CONTROLLER|BTNSYNC|btn1state.EsperaApertar~q\;
\DATAPATHI|changeClock|ALT_INV_clock0~q\ <= NOT \DATAPATHI|changeClock|clock0~q\;
\DATAPATHI|changeClock|ALT_INV_clock3~q\ <= NOT \DATAPATHI|changeClock|clock3~q\;
\DATAPATHI|changeClock|ALT_INV_clock1~q\ <= NOT \DATAPATHI|changeClock|clock1~q\;
\DATAPATHI|changeClock|ALT_INV_clock2~q\ <= NOT \DATAPATHI|changeClock|clock2~q\;
\CONTROLLER|BTNSYNC|ALT_INV_btn0state.SaidaAtiva~q\ <= NOT \CONTROLLER|BTNSYNC|btn0state.SaidaAtiva~q\;
\CONTROLLER|ALT_INV_actualS.Init~q\ <= NOT \CONTROLLER|actualS.Init~q\;
\DATAPATHI|ALT_INV_Equal2~0_combout\ <= NOT \DATAPATHI|Equal2~0_combout\;
\DATAPATHI|ALT_INV_process_0~4_combout\ <= NOT \DATAPATHI|process_0~4_combout\;
\DATAPATHI|ALT_INV_playingSig~2_combout\ <= NOT \DATAPATHI|playingSig~2_combout\;
\DATAPATHI|ALT_INV_playingSig~_emulated_q\ <= NOT \DATAPATHI|playingSig~_emulated_q\;
\DATAPATHI|ALT_INV_gameROM[0]~0_combout\ <= NOT \DATAPATHI|gameROM[0]~0_combout\;
\DATAPATHI|ALT_INV_process_0~3_combout\ <= NOT \DATAPATHI|process_0~3_combout\;
\DATAPATHI|ALT_INV_process_0~2_combout\ <= NOT \DATAPATHI|process_0~2_combout\;
\DATAPATHI|ALT_INV_process_0~1_combout\ <= NOT \DATAPATHI|process_0~1_combout\;
\DATAPATHI|ALT_INV_process_0~0_combout\ <= NOT \DATAPATHI|process_0~0_combout\;
\DATAPATHI|ALT_INV_ledsSig[9]~0_combout\ <= NOT \DATAPATHI|ledsSig[9]~0_combout\;
\CONTROLLER|BTNSYNC|ALT_INV_btn1state.SaidaAtiva~q\ <= NOT \CONTROLLER|BTNSYNC|btn1state.SaidaAtiva~q\;
\CONTROLLER|ALT_INV_resetSig~q\ <= NOT \CONTROLLER|resetSig~q\;
\CONTROLLER|ALT_INV_display5~0_combout\ <= NOT \CONTROLLER|display5~0_combout\;
\CONTROLLER|ALT_INV_actualS.Game~q\ <= NOT \CONTROLLER|actualS.Game~q\;
\DATAPATHI|ALT_INV_display4~4_combout\ <= NOT \DATAPATHI|display4~4_combout\;
\DATAPATHI|ALT_INV_display4[4]~3_combout\ <= NOT \DATAPATHI|display4[4]~3_combout\;
\DATAPATHI|ALT_INV_display4~1_combout\ <= NOT \DATAPATHI|display4~1_combout\;
\DATAPATHI|ALT_INV_display4[0]~0_combout\ <= NOT \DATAPATHI|display4[0]~0_combout\;
\CONTROLLER|ALT_INV_actualS.Setup~q\ <= NOT \CONTROLLER|actualS.Setup~q\;
\DATAPATHI|DISPLAY3D|ALT_INV_saida[3]~3_combout\ <= NOT \DATAPATHI|DISPLAY3D|saida[3]~3_combout\;
\DATAPATHI|DISPLAY3D|ALT_INV_saida~0_combout\ <= NOT \DATAPATHI|DISPLAY3D|saida~0_combout\;
\DATAPATHI|ALT_INV_hexpoints[4]~5_combout\ <= NOT \DATAPATHI|hexpoints[4]~5_combout\;
\DATAPATHI|ALT_INV_hexpoints\(6) <= NOT \DATAPATHI|hexpoints\(6);
\DATAPATHI|ALT_INV_hexpoints[5]~4_combout\ <= NOT \DATAPATHI|hexpoints[5]~4_combout\;
\DATAPATHI|ALT_INV_hexpoints[3]~3_combout\ <= NOT \DATAPATHI|hexpoints[3]~3_combout\;
\DATAPATHI|ALT_INV_hexpoints[2]~2_combout\ <= NOT \DATAPATHI|hexpoints[2]~2_combout\;
\DATAPATHI|ALT_INV_hexpoints[1]~1_combout\ <= NOT \DATAPATHI|hexpoints[1]~1_combout\;
\DATAPATHI|ALT_INV_hexpoints[0]~0_combout\ <= NOT \DATAPATHI|hexpoints[0]~0_combout\;
\DATAPATHI|DISPLAY2D|ALT_INV_saida[0]~0_combout\ <= NOT \DATAPATHI|DISPLAY2D|saida[0]~0_combout\;
\DATAPATHI|ALT_INV_pointsSum\(3) <= NOT \DATAPATHI|pointsSum\(3);
\DATAPATHI|ALT_INV_pointsSum\(2) <= NOT \DATAPATHI|pointsSum\(2);
\DATAPATHI|ALT_INV_pointsSum\(0) <= NOT \DATAPATHI|pointsSum\(0);
\DATAPATHI|ALT_INV_pointsSum\(1) <= NOT \DATAPATHI|pointsSum\(1);
\DATAPATHI|ALT_INV_showingResult~q\ <= NOT \DATAPATHI|showingResult~q\;
\DATAPATHI|ALT_INV_currentHex[6]~7_combout\ <= NOT \DATAPATHI|currentHex[6]~7_combout\;
\DATAPATHI|ALT_INV_currentHex[7]~6_combout\ <= NOT \DATAPATHI|currentHex[7]~6_combout\;
\DATAPATHI|ALT_INV_currentHex[5]~5_combout\ <= NOT \DATAPATHI|currentHex[5]~5_combout\;
\DATAPATHI|ALT_INV_currentHex[4]~4_combout\ <= NOT \DATAPATHI|currentHex[4]~4_combout\;
\DATAPATHI|DISPLAY1D|ALT_INV_saida[0]~0_combout\ <= NOT \DATAPATHI|DISPLAY1D|saida[0]~0_combout\;
\DATAPATHI|ALT_INV_currentHex[2]~3_combout\ <= NOT \DATAPATHI|currentHex[2]~3_combout\;
\DATAPATHI|ALT_INV_currentHex[3]~2_combout\ <= NOT \DATAPATHI|currentHex[3]~2_combout\;
\DATAPATHI|ALT_INV_currentHex[1]~1_combout\ <= NOT \DATAPATHI|currentHex[1]~1_combout\;
\DATAPATHI|ALT_INV_currentHex[0]~0_combout\ <= NOT \DATAPATHI|currentHex[0]~0_combout\;
\DATAPATHI|DISPLAY0D|ALT_INV_saida[0]~0_combout\ <= NOT \DATAPATHI|DISPLAY0D|saida[0]~0_combout\;
\DATAPATHI|ALT_INV_ROMin\(3) <= NOT \DATAPATHI|ROMin\(3);
\DATAPATHI|ALT_INV_ROMin\(2) <= NOT \DATAPATHI|ROMin\(2);
\DATAPATHI|ALT_INV_ROMin\(1) <= NOT \DATAPATHI|ROMin\(1);
\DATAPATHI|ALT_INV_ROMin\(0) <= NOT \DATAPATHI|ROMin\(0);
\DATAPATHI|ALT_INV_ledsSig\(8) <= NOT \DATAPATHI|ledsSig\(8);
\DATAPATHI|ALT_INV_ledsSig\(7) <= NOT \DATAPATHI|ledsSig\(7);
\DATAPATHI|ALT_INV_ledsSig\(6) <= NOT \DATAPATHI|ledsSig\(6);
\DATAPATHI|ALT_INV_ledsSig\(5) <= NOT \DATAPATHI|ledsSig\(5);
\DATAPATHI|changeClock|ALT_INV_counter0\(16) <= NOT \DATAPATHI|changeClock|counter0\(16);
\DATAPATHI|changeClock|ALT_INV_counter0\(21) <= NOT \DATAPATHI|changeClock|counter0\(21);
\DATAPATHI|changeClock|ALT_INV_counter0\(20) <= NOT \DATAPATHI|changeClock|counter0\(20);
\DATAPATHI|changeClock|ALT_INV_counter0\(19) <= NOT \DATAPATHI|changeClock|counter0\(19);
\DATAPATHI|changeClock|ALT_INV_counter0\(22) <= NOT \DATAPATHI|changeClock|counter0\(22);
\DATAPATHI|changeClock|ALT_INV_counter0\(18) <= NOT \DATAPATHI|changeClock|counter0\(18);
\DATAPATHI|changeClock|ALT_INV_counter0\(17) <= NOT \DATAPATHI|changeClock|counter0\(17);
\DATAPATHI|changeClock|ALT_INV_counter0\(14) <= NOT \DATAPATHI|changeClock|counter0\(14);
\DATAPATHI|changeClock|ALT_INV_counter0\(13) <= NOT \DATAPATHI|changeClock|counter0\(13);
\DATAPATHI|changeClock|ALT_INV_counter0\(12) <= NOT \DATAPATHI|changeClock|counter0\(12);
\DATAPATHI|changeClock|ALT_INV_counter0\(11) <= NOT \DATAPATHI|changeClock|counter0\(11);
\DATAPATHI|changeClock|ALT_INV_counter0\(10) <= NOT \DATAPATHI|changeClock|counter0\(10);
\DATAPATHI|changeClock|ALT_INV_counter0\(9) <= NOT \DATAPATHI|changeClock|counter0\(9);
\DATAPATHI|changeClock|ALT_INV_counter0\(8) <= NOT \DATAPATHI|changeClock|counter0\(8);
\DATAPATHI|changeClock|ALT_INV_counter0\(7) <= NOT \DATAPATHI|changeClock|counter0\(7);
\DATAPATHI|changeClock|ALT_INV_counter0\(6) <= NOT \DATAPATHI|changeClock|counter0\(6);
\DATAPATHI|changeClock|ALT_INV_counter0\(5) <= NOT \DATAPATHI|changeClock|counter0\(5);
\DATAPATHI|changeClock|ALT_INV_counter0\(3) <= NOT \DATAPATHI|changeClock|counter0\(3);
\DATAPATHI|changeClock|ALT_INV_counter0\(2) <= NOT \DATAPATHI|changeClock|counter0\(2);
\DATAPATHI|changeClock|ALT_INV_counter0\(1) <= NOT \DATAPATHI|changeClock|counter0\(1);
\DATAPATHI|changeClock|ALT_INV_counter0\(0) <= NOT \DATAPATHI|changeClock|counter0\(0);
\DATAPATHI|changeClock|ALT_INV_counter0\(15) <= NOT \DATAPATHI|changeClock|counter0\(15);
\DATAPATHI|changeClock|ALT_INV_counter0\(23) <= NOT \DATAPATHI|changeClock|counter0\(23);
\DATAPATHI|changeClock|ALT_INV_counter0\(24) <= NOT \DATAPATHI|changeClock|counter0\(24);
\DATAPATHI|changeClock|ALT_INV_counter0\(25) <= NOT \DATAPATHI|changeClock|counter0\(25);
\DATAPATHI|changeClock|ALT_INV_counter0\(26) <= NOT \DATAPATHI|changeClock|counter0\(26);
\DATAPATHI|changeClock|ALT_INV_counter0\(27) <= NOT \DATAPATHI|changeClock|counter0\(27);
\DATAPATHI|changeClock|ALT_INV_counter0\(28) <= NOT \DATAPATHI|changeClock|counter0\(28);
\DATAPATHI|changeClock|ALT_INV_counter0\(4) <= NOT \DATAPATHI|changeClock|counter0\(4);
\DATAPATHI|changeClock|ALT_INV_counter3\(14) <= NOT \DATAPATHI|changeClock|counter3\(14);
\DATAPATHI|changeClock|ALT_INV_counter3\(17) <= NOT \DATAPATHI|changeClock|counter3\(17);
\DATAPATHI|changeClock|ALT_INV_counter3\(18) <= NOT \DATAPATHI|changeClock|counter3\(18);
\DATAPATHI|changeClock|ALT_INV_counter3\(19) <= NOT \DATAPATHI|changeClock|counter3\(19);
\DATAPATHI|changeClock|ALT_INV_counter3\(20) <= NOT \DATAPATHI|changeClock|counter3\(20);
\DATAPATHI|changeClock|ALT_INV_counter3\(21) <= NOT \DATAPATHI|changeClock|counter3\(21);
\DATAPATHI|changeClock|ALT_INV_counter3\(22) <= NOT \DATAPATHI|changeClock|counter3\(22);
\DATAPATHI|changeClock|ALT_INV_counter3\(23) <= NOT \DATAPATHI|changeClock|counter3\(23);
\DATAPATHI|changeClock|ALT_INV_counter3\(24) <= NOT \DATAPATHI|changeClock|counter3\(24);
\DATAPATHI|changeClock|ALT_INV_counter3\(25) <= NOT \DATAPATHI|changeClock|counter3\(25);
\DATAPATHI|changeClock|ALT_INV_counter3\(26) <= NOT \DATAPATHI|changeClock|counter3\(26);
\DATAPATHI|changeClock|ALT_INV_counter3\(27) <= NOT \DATAPATHI|changeClock|counter3\(27);
\DATAPATHI|changeClock|ALT_INV_counter3\(28) <= NOT \DATAPATHI|changeClock|counter3\(28);
\DATAPATHI|changeClock|ALT_INV_counter3\(16) <= NOT \DATAPATHI|changeClock|counter3\(16);
\DATAPATHI|changeClock|ALT_INV_counter3\(0) <= NOT \DATAPATHI|changeClock|counter3\(0);
\DATAPATHI|changeClock|ALT_INV_counter3\(1) <= NOT \DATAPATHI|changeClock|counter3\(1);
\DATAPATHI|changeClock|ALT_INV_counter3\(2) <= NOT \DATAPATHI|changeClock|counter3\(2);
\DATAPATHI|changeClock|ALT_INV_counter3\(4) <= NOT \DATAPATHI|changeClock|counter3\(4);
\DATAPATHI|changeClock|ALT_INV_counter3\(5) <= NOT \DATAPATHI|changeClock|counter3\(5);
\DATAPATHI|changeClock|ALT_INV_counter3\(6) <= NOT \DATAPATHI|changeClock|counter3\(6);
\DATAPATHI|changeClock|ALT_INV_counter3\(7) <= NOT \DATAPATHI|changeClock|counter3\(7);
\DATAPATHI|changeClock|ALT_INV_counter3\(8) <= NOT \DATAPATHI|changeClock|counter3\(8);
\DATAPATHI|changeClock|ALT_INV_counter3\(9) <= NOT \DATAPATHI|changeClock|counter3\(9);
\DATAPATHI|changeClock|ALT_INV_counter3\(10) <= NOT \DATAPATHI|changeClock|counter3\(10);
\DATAPATHI|changeClock|ALT_INV_counter3\(11) <= NOT \DATAPATHI|changeClock|counter3\(11);
\DATAPATHI|changeClock|ALT_INV_counter3\(12) <= NOT \DATAPATHI|changeClock|counter3\(12);
\DATAPATHI|changeClock|ALT_INV_counter3\(13) <= NOT \DATAPATHI|changeClock|counter3\(13);
\DATAPATHI|changeClock|ALT_INV_counter3\(15) <= NOT \DATAPATHI|changeClock|counter3\(15);
\DATAPATHI|changeClock|ALT_INV_counter3\(3) <= NOT \DATAPATHI|changeClock|counter3\(3);
\DATAPATHI|changeClock|ALT_INV_counter1\(3) <= NOT \DATAPATHI|changeClock|counter1\(3);
\DATAPATHI|changeClock|ALT_INV_counter1\(6) <= NOT \DATAPATHI|changeClock|counter1\(6);
\DATAPATHI|changeClock|ALT_INV_counter1\(5) <= NOT \DATAPATHI|changeClock|counter1\(5);
\DATAPATHI|changeClock|ALT_INV_counter1\(4) <= NOT \DATAPATHI|changeClock|counter1\(4);
\DATAPATHI|changeClock|ALT_INV_counter1\(2) <= NOT \DATAPATHI|changeClock|counter1\(2);
\DATAPATHI|changeClock|ALT_INV_counter1\(1) <= NOT \DATAPATHI|changeClock|counter1\(1);
\DATAPATHI|changeClock|ALT_INV_counter1\(0) <= NOT \DATAPATHI|changeClock|counter1\(0);
\DATAPATHI|changeClock|ALT_INV_counter1\(8) <= NOT \DATAPATHI|changeClock|counter1\(8);
\DATAPATHI|changeClock|ALT_INV_counter1\(7) <= NOT \DATAPATHI|changeClock|counter1\(7);
\DATAPATHI|changeClock|ALT_INV_counter1\(28) <= NOT \DATAPATHI|changeClock|counter1\(28);
\DATAPATHI|changeClock|ALT_INV_counter1\(27) <= NOT \DATAPATHI|changeClock|counter1\(27);
\DATAPATHI|changeClock|ALT_INV_counter1\(26) <= NOT \DATAPATHI|changeClock|counter1\(26);
\DATAPATHI|changeClock|ALT_INV_counter1\(25) <= NOT \DATAPATHI|changeClock|counter1\(25);
\DATAPATHI|changeClock|ALT_INV_counter1\(24) <= NOT \DATAPATHI|changeClock|counter1\(24);
\DATAPATHI|changeClock|ALT_INV_counter1\(23) <= NOT \DATAPATHI|changeClock|counter1\(23);
\DATAPATHI|changeClock|ALT_INV_counter1\(22) <= NOT \DATAPATHI|changeClock|counter1\(22);
\DATAPATHI|changeClock|ALT_INV_counter1\(21) <= NOT \DATAPATHI|changeClock|counter1\(21);
\DATAPATHI|changeClock|ALT_INV_counter1\(19) <= NOT \DATAPATHI|changeClock|counter1\(19);
\DATAPATHI|changeClock|ALT_INV_counter1\(18) <= NOT \DATAPATHI|changeClock|counter1\(18);
\DATAPATHI|changeClock|ALT_INV_counter1\(17) <= NOT \DATAPATHI|changeClock|counter1\(17);
\DATAPATHI|changeClock|ALT_INV_counter1\(16) <= NOT \DATAPATHI|changeClock|counter1\(16);
\DATAPATHI|changeClock|ALT_INV_counter1\(15) <= NOT \DATAPATHI|changeClock|counter1\(15);
\DATAPATHI|changeClock|ALT_INV_counter1\(14) <= NOT \DATAPATHI|changeClock|counter1\(14);
\DATAPATHI|changeClock|ALT_INV_counter1\(13) <= NOT \DATAPATHI|changeClock|counter1\(13);
\DATAPATHI|changeClock|ALT_INV_counter1\(12) <= NOT \DATAPATHI|changeClock|counter1\(12);
\DATAPATHI|changeClock|ALT_INV_counter1\(10) <= NOT \DATAPATHI|changeClock|counter1\(10);
\DATAPATHI|changeClock|ALT_INV_counter1\(9) <= NOT \DATAPATHI|changeClock|counter1\(9);
\DATAPATHI|changeClock|ALT_INV_counter1\(11) <= NOT \DATAPATHI|changeClock|counter1\(11);
\DATAPATHI|changeClock|ALT_INV_counter1\(20) <= NOT \DATAPATHI|changeClock|counter1\(20);
\DATAPATHI|changeClock|ALT_INV_counter2\(0) <= NOT \DATAPATHI|changeClock|counter2\(0);
\DATAPATHI|changeClock|ALT_INV_counter2\(1) <= NOT \DATAPATHI|changeClock|counter2\(1);
\DATAPATHI|changeClock|ALT_INV_counter2\(2) <= NOT \DATAPATHI|changeClock|counter2\(2);
\DATAPATHI|changeClock|ALT_INV_counter2\(3) <= NOT \DATAPATHI|changeClock|counter2\(3);
\DATAPATHI|changeClock|ALT_INV_counter2\(24) <= NOT \DATAPATHI|changeClock|counter2\(24);
\DATAPATHI|changeClock|ALT_INV_counter2\(25) <= NOT \DATAPATHI|changeClock|counter2\(25);
\DATAPATHI|changeClock|ALT_INV_counter2\(26) <= NOT \DATAPATHI|changeClock|counter2\(26);
\DATAPATHI|changeClock|ALT_INV_counter2\(27) <= NOT \DATAPATHI|changeClock|counter2\(27);
\DATAPATHI|changeClock|ALT_INV_counter2\(28) <= NOT \DATAPATHI|changeClock|counter2\(28);
\DATAPATHI|changeClock|ALT_INV_counter2\(23) <= NOT \DATAPATHI|changeClock|counter2\(23);
\DATAPATHI|changeClock|ALT_INV_counter2\(22) <= NOT \DATAPATHI|changeClock|counter2\(22);
\DATAPATHI|changeClock|ALT_INV_counter2\(21) <= NOT \DATAPATHI|changeClock|counter2\(21);
\DATAPATHI|changeClock|ALT_INV_counter2\(20) <= NOT \DATAPATHI|changeClock|counter2\(20);
\DATAPATHI|changeClock|ALT_INV_counter2\(19) <= NOT \DATAPATHI|changeClock|counter2\(19);
\DATAPATHI|changeClock|ALT_INV_counter2\(18) <= NOT \DATAPATHI|changeClock|counter2\(18);
\DATAPATHI|changeClock|ALT_INV_counter2\(4) <= NOT \DATAPATHI|changeClock|counter2\(4);
\DATAPATHI|changeClock|ALT_INV_counter2\(16) <= NOT \DATAPATHI|changeClock|counter2\(16);
\DATAPATHI|changeClock|ALT_INV_counter2\(14) <= NOT \DATAPATHI|changeClock|counter2\(14);
\DATAPATHI|changeClock|ALT_INV_counter2\(13) <= NOT \DATAPATHI|changeClock|counter2\(13);
\DATAPATHI|changeClock|ALT_INV_counter2\(12) <= NOT \DATAPATHI|changeClock|counter2\(12);
\DATAPATHI|changeClock|ALT_INV_counter2\(11) <= NOT \DATAPATHI|changeClock|counter2\(11);
\DATAPATHI|changeClock|ALT_INV_counter2\(10) <= NOT \DATAPATHI|changeClock|counter2\(10);
\DATAPATHI|changeClock|ALT_INV_counter2\(9) <= NOT \DATAPATHI|changeClock|counter2\(9);
\DATAPATHI|changeClock|ALT_INV_counter2\(8) <= NOT \DATAPATHI|changeClock|counter2\(8);
\DATAPATHI|changeClock|ALT_INV_counter2\(7) <= NOT \DATAPATHI|changeClock|counter2\(7);
\DATAPATHI|changeClock|ALT_INV_counter2\(6) <= NOT \DATAPATHI|changeClock|counter2\(6);
\DATAPATHI|changeClock|ALT_INV_counter2\(5) <= NOT \DATAPATHI|changeClock|counter2\(5);
\DATAPATHI|changeClock|ALT_INV_counter2\(17) <= NOT \DATAPATHI|changeClock|counter2\(17);
\DATAPATHI|changeClock|ALT_INV_counter2\(15) <= NOT \DATAPATHI|changeClock|counter2\(15);

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATHI|ledsSig\(0),
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X52_Y0_N19
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATHI|ledsSig\(1),
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X60_Y0_N2
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATHI|ledsSig\(2),
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X80_Y0_N2
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATHI|ledsSig\(3),
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X60_Y0_N19
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATHI|ledsSig\(4),
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X80_Y0_N19
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATHI|ledsSig\(5),
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X84_Y0_N2
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATHI|ledsSig\(6),
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X89_Y6_N5
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATHI|ledsSig\(7),
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X89_Y8_N5
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATHI|ledsSig\(8),
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X89_Y6_N22
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATHI|ledsSig\(9),
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATHI|DISPLAY0D|saida[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X89_Y11_N79
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATHI|DISPLAY0D|saida[1]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X89_Y11_N96
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATHI|DISPLAY0D|saida[2]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X89_Y4_N79
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATHI|DISPLAY0D|saida[3]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X89_Y13_N56
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATHI|DISPLAY0D|saida[4]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X89_Y13_N39
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATHI|DISPLAY0D|saida[5]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X89_Y4_N96
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATHI|DISPLAY0D|saida[6]~7_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X89_Y6_N39
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATHI|DISPLAY1D|saida[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X89_Y6_N56
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATHI|DISPLAY1D|saida[1]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X89_Y16_N39
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATHI|DISPLAY1D|saida[2]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X89_Y16_N56
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATHI|DISPLAY1D|saida[3]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X89_Y15_N39
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATHI|DISPLAY1D|saida[4]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X89_Y15_N56
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATHI|DISPLAY1D|saida[5]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X89_Y8_N56
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATHI|DISPLAY1D|saida[6]~7_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X89_Y9_N22
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATHI|DISPLAY2D|saida[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X89_Y23_N39
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATHI|DISPLAY2D|saida[1]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X89_Y23_N56
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATHI|DISPLAY2D|saida[2]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X89_Y20_N79
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATHI|DISPLAY2D|saida[3]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X89_Y25_N39
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATHI|DISPLAY2D|saida[4]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X89_Y20_N96
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATHI|DISPLAY2D|saida[5]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X89_Y25_N56
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATHI|DISPLAY2D|saida[6]~7_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X89_Y16_N5
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATHI|DISPLAY3D|ALT_INV_saida~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X89_Y16_N22
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATHI|DISPLAY3D|saida[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X89_Y4_N45
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATHI|DISPLAY3D|saida[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X89_Y4_N62
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATHI|DISPLAY3D|ALT_INV_saida[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X89_Y21_N39
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATHI|display3[4]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X89_Y11_N62
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rtl~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X89_Y9_N5
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATHI|display3[6]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X89_Y11_N45
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATHI|ALT_INV_display4[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X89_Y13_N5
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATHI|ALT_INV_display4~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X89_Y13_N22
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATHI|display4[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X89_Y8_N22
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATHI|ALT_INV_display4[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X89_Y15_N22
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATHI|ALT_INV_display4[4]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X89_Y15_N5
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATHI|ALT_INV_display4~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X89_Y20_N45
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATHI|display4~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X89_Y20_N62
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X89_Y21_N56
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X89_Y25_N22
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X89_Y23_N22
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CONTROLLER|ALT_INV_display5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X89_Y9_N56
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CONTROLLER|ALT_INV_display5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X89_Y23_N5
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CONTROLLER|ALT_INV_display5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X89_Y9_N39
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOIBUF_X32_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G6
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: LABCELL_X85_Y8_N30
\DATAPATHI|changeClock|Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add1~89_sumout\ = SUM(( \DATAPATHI|changeClock|counter1\(0) ) + ( VCC ) + ( !VCC ))
-- \DATAPATHI|changeClock|Add1~90\ = CARRY(( \DATAPATHI|changeClock|counter1\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter1\(0),
	cin => GND,
	sumout => \DATAPATHI|changeClock|Add1~89_sumout\,
	cout => \DATAPATHI|changeClock|Add1~90\);

-- Location: LABCELL_X88_Y7_N24
\CONTROLLER|resetSig~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONTROLLER|resetSig~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \CONTROLLER|resetSig~feeder_combout\);

-- Location: IOIBUF_X36_Y0_N1
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LABCELL_X85_Y5_N27
\CONTROLLER|BTNSYNC|btn0state.EsperaApertar~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONTROLLER|BTNSYNC|btn0state.EsperaApertar~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY[0]~input_o\,
	combout => \CONTROLLER|BTNSYNC|btn0state.EsperaApertar~0_combout\);

-- Location: FF_X85_Y5_N28
\CONTROLLER|BTNSYNC|btn0state.EsperaApertar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CONTROLLER|BTNSYNC|btn0state.EsperaApertar~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROLLER|BTNSYNC|btn0state.EsperaApertar~q\);

-- Location: LABCELL_X85_Y5_N24
\CONTROLLER|BTNSYNC|btn0next.SaidaAtiva~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONTROLLER|BTNSYNC|btn0next.SaidaAtiva~0_combout\ = ( !\CONTROLLER|BTNSYNC|btn0state.EsperaApertar~q\ & ( !\KEY[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY[0]~input_o\,
	dataf => \CONTROLLER|BTNSYNC|ALT_INV_btn0state.EsperaApertar~q\,
	combout => \CONTROLLER|BTNSYNC|btn0next.SaidaAtiva~0_combout\);

-- Location: FF_X85_Y5_N25
\CONTROLLER|BTNSYNC|btn0state.SaidaAtiva\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CONTROLLER|BTNSYNC|btn0next.SaidaAtiva~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROLLER|BTNSYNC|btn0state.SaidaAtiva~q\);

-- Location: FF_X88_Y7_N26
\CONTROLLER|resetSig\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CONTROLLER|resetSig~feeder_combout\,
	clrn => \CONTROLLER|BTNSYNC|ALT_INV_btn0state.SaidaAtiva~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROLLER|resetSig~q\);

-- Location: IOIBUF_X36_Y0_N18
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: MLABCELL_X87_Y7_N0
\CONTROLLER|BTNSYNC|btn1state.EsperaApertar~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONTROLLER|BTNSYNC|btn1state.EsperaApertar~0_combout\ = ( !\KEY[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_KEY[1]~input_o\,
	combout => \CONTROLLER|BTNSYNC|btn1state.EsperaApertar~0_combout\);

-- Location: FF_X88_Y7_N37
\CONTROLLER|BTNSYNC|btn1state.EsperaApertar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CONTROLLER|BTNSYNC|btn1state.EsperaApertar~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROLLER|BTNSYNC|btn1state.EsperaApertar~q\);

-- Location: MLABCELL_X87_Y7_N57
\CONTROLLER|BTNSYNC|btn1next.SaidaAtiva~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONTROLLER|BTNSYNC|btn1next.SaidaAtiva~0_combout\ = ( !\KEY[1]~input_o\ & ( !\CONTROLLER|BTNSYNC|btn1state.EsperaApertar~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CONTROLLER|BTNSYNC|ALT_INV_btn1state.EsperaApertar~q\,
	dataf => \ALT_INV_KEY[1]~input_o\,
	combout => \CONTROLLER|BTNSYNC|btn1next.SaidaAtiva~0_combout\);

-- Location: FF_X88_Y7_N11
\CONTROLLER|BTNSYNC|btn1state.SaidaAtiva\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CONTROLLER|BTNSYNC|btn1next.SaidaAtiva~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROLLER|BTNSYNC|btn1state.SaidaAtiva~q\);

-- Location: MLABCELL_X87_Y8_N27
\DATAPATHI|ROMin[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|ROMin[0]~0_combout\ = ( \DATAPATHI|playingSig~6_combout\ & ( \DATAPATHI|ROMin\(0) ) ) # ( !\DATAPATHI|playingSig~6_combout\ & ( !\DATAPATHI|ROMin\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DATAPATHI|ALT_INV_ROMin\(0),
	dataf => \DATAPATHI|ALT_INV_playingSig~6_combout\,
	combout => \DATAPATHI|ROMin[0]~0_combout\);

-- Location: FF_X87_Y8_N14
\DATAPATHI|ROMin[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DATAPATHI|changeClock|clockOut~q\,
	asdata => \DATAPATHI|ROMin[0]~0_combout\,
	clrn => \DATAPATHI|ALT_INV_playingSig~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|ROMin\(0));

-- Location: MLABCELL_X84_Y8_N27
\DATAPATHI|ROMin[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|ROMin[1]~1_combout\ = ( \DATAPATHI|ROMin\(0) & ( \DATAPATHI|playingSig~6_combout\ & ( \DATAPATHI|ROMin\(1) ) ) ) # ( !\DATAPATHI|ROMin\(0) & ( \DATAPATHI|playingSig~6_combout\ & ( \DATAPATHI|ROMin\(1) ) ) ) # ( \DATAPATHI|ROMin\(0) & ( 
-- !\DATAPATHI|playingSig~6_combout\ & ( !\DATAPATHI|ROMin\(1) ) ) ) # ( !\DATAPATHI|ROMin\(0) & ( !\DATAPATHI|playingSig~6_combout\ & ( \DATAPATHI|ROMin\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DATAPATHI|ALT_INV_ROMin\(1),
	datae => \DATAPATHI|ALT_INV_ROMin\(0),
	dataf => \DATAPATHI|ALT_INV_playingSig~6_combout\,
	combout => \DATAPATHI|ROMin[1]~1_combout\);

-- Location: FF_X87_Y8_N32
\DATAPATHI|ROMin[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DATAPATHI|changeClock|clockOut~q\,
	asdata => \DATAPATHI|ROMin[1]~1_combout\,
	clrn => \DATAPATHI|ALT_INV_playingSig~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|ROMin\(1));

-- Location: LABCELL_X88_Y8_N54
\DATAPATHI|ROMin[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|ROMin[2]~2_combout\ = ( \DATAPATHI|ROMin\(2) & ( \DATAPATHI|playingSig~6_combout\ ) ) # ( \DATAPATHI|ROMin\(2) & ( !\DATAPATHI|playingSig~6_combout\ & ( (!\DATAPATHI|ROMin\(0)) # (!\DATAPATHI|ROMin\(1)) ) ) ) # ( !\DATAPATHI|ROMin\(2) & ( 
-- !\DATAPATHI|playingSig~6_combout\ & ( (\DATAPATHI|ROMin\(0) & \DATAPATHI|ROMin\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111110101111101000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_ROMin\(0),
	datac => \DATAPATHI|ALT_INV_ROMin\(1),
	datae => \DATAPATHI|ALT_INV_ROMin\(2),
	dataf => \DATAPATHI|ALT_INV_playingSig~6_combout\,
	combout => \DATAPATHI|ROMin[2]~2_combout\);

-- Location: FF_X87_Y8_N20
\DATAPATHI|ROMin[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DATAPATHI|changeClock|clockOut~q\,
	asdata => \DATAPATHI|ROMin[2]~2_combout\,
	clrn => \DATAPATHI|ALT_INV_playingSig~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|ROMin\(2));

-- Location: MLABCELL_X87_Y8_N42
\DATAPATHI|ROMin[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|ROMin[3]~3_combout\ = ( \DATAPATHI|playingSig~6_combout\ & ( \DATAPATHI|ROMin\(3) ) ) # ( !\DATAPATHI|playingSig~6_combout\ & ( !\DATAPATHI|ROMin\(3) $ (((!\DATAPATHI|ROMin\(2)) # ((!\DATAPATHI|ROMin\(1)) # (!\DATAPATHI|ROMin\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100011110000011110001111000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_ROMin\(2),
	datab => \DATAPATHI|ALT_INV_ROMin\(1),
	datac => \DATAPATHI|ALT_INV_ROMin\(3),
	datad => \DATAPATHI|ALT_INV_ROMin\(0),
	dataf => \DATAPATHI|ALT_INV_playingSig~6_combout\,
	combout => \DATAPATHI|ROMin[3]~3_combout\);

-- Location: FF_X87_Y8_N2
\DATAPATHI|ROMin[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DATAPATHI|changeClock|clockOut~q\,
	asdata => \DATAPATHI|ROMin[3]~3_combout\,
	clrn => \DATAPATHI|ALT_INV_playingSig~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|ROMin\(3));

-- Location: LABCELL_X88_Y6_N48
\DATAPATHI|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|Equal2~0_combout\ = ( !\DATAPATHI|ROMin\(2) & ( \DATAPATHI|ROMin\(3) & ( (!\DATAPATHI|ROMin\(1) & \DATAPATHI|ROMin\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATHI|ALT_INV_ROMin\(1),
	datad => \DATAPATHI|ALT_INV_ROMin\(0),
	datae => \DATAPATHI|ALT_INV_ROMin\(2),
	dataf => \DATAPATHI|ALT_INV_ROMin\(3),
	combout => \DATAPATHI|Equal2~0_combout\);

-- Location: MLABCELL_X87_Y7_N30
\DATAPATHI|showingResult~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|showingResult~0_combout\ = ( \CONTROLLER|BTNSYNC|btn1state.SaidaAtiva~q\ & ( \DATAPATHI|Equal2~0_combout\ & ( (((!\CONTROLLER|actualS.Setup~q\ & !\CONTROLLER|actualS.Game~q\)) # (\DATAPATHI|playingSig~2_combout\)) # 
-- (\DATAPATHI|showingResult~q\) ) ) ) # ( !\CONTROLLER|BTNSYNC|btn1state.SaidaAtiva~q\ & ( \DATAPATHI|Equal2~0_combout\ & ( ((!\CONTROLLER|actualS.Game~q\) # (\DATAPATHI|playingSig~2_combout\)) # (\DATAPATHI|showingResult~q\) ) ) ) # ( 
-- \CONTROLLER|BTNSYNC|btn1state.SaidaAtiva~q\ & ( !\DATAPATHI|Equal2~0_combout\ & ( \DATAPATHI|showingResult~q\ ) ) ) # ( !\CONTROLLER|BTNSYNC|btn1state.SaidaAtiva~q\ & ( !\DATAPATHI|Equal2~0_combout\ & ( \DATAPATHI|showingResult~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111010111111101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_showingResult~q\,
	datab => \CONTROLLER|ALT_INV_actualS.Setup~q\,
	datac => \DATAPATHI|ALT_INV_playingSig~2_combout\,
	datad => \CONTROLLER|ALT_INV_actualS.Game~q\,
	datae => \CONTROLLER|BTNSYNC|ALT_INV_btn1state.SaidaAtiva~q\,
	dataf => \DATAPATHI|ALT_INV_Equal2~0_combout\,
	combout => \DATAPATHI|showingResult~0_combout\);

-- Location: FF_X87_Y7_N50
\DATAPATHI|showingResult\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DATAPATHI|changeClock|clockOut~q\,
	asdata => \DATAPATHI|showingResult~0_combout\,
	clrn => \DATAPATHI|ALT_INV_playingSig~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|showingResult~q\);

-- Location: MLABCELL_X87_Y7_N3
\DATAPATHI|playingSig~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|playingSig~7_combout\ = ( \CONTROLLER|actualS.Game~q\ & ( (!\DATAPATHI|showingResult~q\ & (!\CONTROLLER|actualS.Setup~q\ & (\CONTROLLER|resetSig~q\ & !\DATAPATHI|playingSig~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_showingResult~q\,
	datab => \CONTROLLER|ALT_INV_actualS.Setup~q\,
	datac => \CONTROLLER|ALT_INV_resetSig~q\,
	datad => \DATAPATHI|ALT_INV_playingSig~2_combout\,
	dataf => \CONTROLLER|ALT_INV_actualS.Game~q\,
	combout => \DATAPATHI|playingSig~7_combout\);

-- Location: LABCELL_X88_Y7_N39
\DATAPATHI|playingSig~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|playingSig~1_combout\ = ( \DATAPATHI|playingSig~1_combout\ & ( \CONTROLLER|resetSig~q\ ) ) # ( !\DATAPATHI|playingSig~1_combout\ & ( (\DATAPATHI|playingSig~7_combout\ & \CONTROLLER|resetSig~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DATAPATHI|ALT_INV_playingSig~7_combout\,
	datad => \CONTROLLER|ALT_INV_resetSig~q\,
	dataf => \DATAPATHI|ALT_INV_playingSig~1_combout\,
	combout => \DATAPATHI|playingSig~1_combout\);

-- Location: MLABCELL_X87_Y7_N21
\DATAPATHI|playingSig~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|playingSig~3_combout\ = ( \DATAPATHI|Equal2~0_combout\ & ( !\DATAPATHI|playingSig~1_combout\ $ (((!\DATAPATHI|playingSig~2_combout\) # (!\CONTROLLER|actualS.Setup~q\))) ) ) # ( !\DATAPATHI|Equal2~0_combout\ & ( !\DATAPATHI|playingSig~2_combout\ 
-- $ (!\DATAPATHI|playingSig~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101000011110000111100001111000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_playingSig~2_combout\,
	datab => \CONTROLLER|ALT_INV_actualS.Setup~q\,
	datac => \DATAPATHI|ALT_INV_playingSig~1_combout\,
	dataf => \DATAPATHI|ALT_INV_Equal2~0_combout\,
	combout => \DATAPATHI|playingSig~3_combout\);

-- Location: MLABCELL_X87_Y7_N27
\DATAPATHI|playingSig~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|playingSig~0_combout\ = (!\CONTROLLER|resetSig~q\) # (\DATAPATHI|playingSig~7_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CONTROLLER|ALT_INV_resetSig~q\,
	datad => \DATAPATHI|ALT_INV_playingSig~7_combout\,
	combout => \DATAPATHI|playingSig~0_combout\);

-- Location: FF_X87_Y7_N23
\DATAPATHI|playingSig~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DATAPATHI|changeClock|clockOut~q\,
	d => \DATAPATHI|playingSig~3_combout\,
	clrn => \DATAPATHI|ALT_INV_playingSig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|playingSig~_emulated_q\);

-- Location: LABCELL_X88_Y7_N33
\DATAPATHI|playingSig~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|playingSig~2_combout\ = ( \CONTROLLER|resetSig~q\ & ( (!\DATAPATHI|playingSig~_emulated_q\ $ (!\DATAPATHI|playingSig~1_combout\)) # (\DATAPATHI|playingSig~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011010111111110101101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_playingSig~_emulated_q\,
	datac => \DATAPATHI|ALT_INV_playingSig~1_combout\,
	datad => \DATAPATHI|ALT_INV_playingSig~7_combout\,
	dataf => \CONTROLLER|ALT_INV_resetSig~q\,
	combout => \DATAPATHI|playingSig~2_combout\);

-- Location: LABCELL_X88_Y7_N12
\CONTROLLER|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONTROLLER|Selector3~0_combout\ = ( \DATAPATHI|playingSig~2_combout\ & ( ((\CONTROLLER|actualS.Setup~q\ & \CONTROLLER|BTNSYNC|btn1state.SaidaAtiva~q\)) # (\CONTROLLER|actualS.Game~q\) ) ) # ( !\DATAPATHI|playingSig~2_combout\ & ( 
-- (\CONTROLLER|actualS.Setup~q\ & \CONTROLLER|BTNSYNC|btn1state.SaidaAtiva~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLLER|ALT_INV_actualS.Setup~q\,
	datab => \CONTROLLER|BTNSYNC|ALT_INV_btn1state.SaidaAtiva~q\,
	datad => \CONTROLLER|ALT_INV_actualS.Game~q\,
	dataf => \DATAPATHI|ALT_INV_playingSig~2_combout\,
	combout => \CONTROLLER|Selector3~0_combout\);

-- Location: FF_X88_Y7_N14
\CONTROLLER|actualS.Game\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CONTROLLER|Selector3~0_combout\,
	clrn => \CONTROLLER|BTNSYNC|ALT_INV_btn0state.SaidaAtiva~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROLLER|actualS.Game~q\);

-- Location: LABCELL_X88_Y7_N15
\CONTROLLER|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONTROLLER|Selector4~0_combout\ = ( \DATAPATHI|playingSig~2_combout\ & ( (!\CONTROLLER|BTNSYNC|btn1state.SaidaAtiva~q\ & \CONTROLLER|actualS.Result~q\) ) ) # ( !\DATAPATHI|playingSig~2_combout\ & ( ((!\CONTROLLER|BTNSYNC|btn1state.SaidaAtiva~q\ & 
-- \CONTROLLER|actualS.Result~q\)) # (\CONTROLLER|actualS.Game~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111001111000011111100111100000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLLER|BTNSYNC|ALT_INV_btn1state.SaidaAtiva~q\,
	datac => \CONTROLLER|ALT_INV_actualS.Game~q\,
	datad => \CONTROLLER|ALT_INV_actualS.Result~q\,
	dataf => \DATAPATHI|ALT_INV_playingSig~2_combout\,
	combout => \CONTROLLER|Selector4~0_combout\);

-- Location: FF_X88_Y7_N17
\CONTROLLER|actualS.Result\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CONTROLLER|Selector4~0_combout\,
	clrn => \CONTROLLER|BTNSYNC|ALT_INV_btn0state.SaidaAtiva~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROLLER|actualS.Result~q\);

-- Location: LABCELL_X88_Y7_N21
\CONTROLLER|actualS.Init~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONTROLLER|actualS.Init~0_combout\ = !\CONTROLLER|actualS.Result~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CONTROLLER|ALT_INV_actualS.Result~q\,
	combout => \CONTROLLER|actualS.Init~0_combout\);

-- Location: FF_X88_Y7_N23
\CONTROLLER|actualS.Init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CONTROLLER|actualS.Init~0_combout\,
	clrn => \CONTROLLER|BTNSYNC|ALT_INV_btn0state.SaidaAtiva~q\,
	ena => \CONTROLLER|BTNSYNC|btn1state.SaidaAtiva~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROLLER|actualS.Init~q\);

-- Location: LABCELL_X88_Y7_N48
\CONTROLLER|actualS.Setup~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONTROLLER|actualS.Setup~0_combout\ = !\CONTROLLER|actualS.Init~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CONTROLLER|ALT_INV_actualS.Init~q\,
	combout => \CONTROLLER|actualS.Setup~0_combout\);

-- Location: FF_X88_Y7_N50
\CONTROLLER|actualS.Setup\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CONTROLLER|actualS.Setup~0_combout\,
	clrn => \CONTROLLER|BTNSYNC|ALT_INV_btn0state.SaidaAtiva~q\,
	ena => \CONTROLLER|BTNSYNC|btn1state.SaidaAtiva~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROLLER|actualS.Setup~q\);

-- Location: MLABCELL_X84_Y7_N15
\DATAPATHI|playingSig~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|playingSig~6_combout\ = ( \CONTROLLER|resetSig~q\ & ( \CONTROLLER|actualS.Setup~q\ ) ) # ( !\CONTROLLER|resetSig~q\ & ( \CONTROLLER|actualS.Setup~q\ ) ) # ( !\CONTROLLER|resetSig~q\ & ( !\CONTROLLER|actualS.Setup~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \CONTROLLER|ALT_INV_resetSig~q\,
	dataf => \CONTROLLER|ALT_INV_actualS.Setup~q\,
	combout => \DATAPATHI|playingSig~6_combout\);

-- Location: LABCELL_X88_Y8_N51
\DATAPATHI|resetGC~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|resetGC~1_combout\ = ( !\DATAPATHI|playingSig~7_combout\ & ( \DATAPATHI|resetGC~1_combout\ ) ) # ( !\DATAPATHI|playingSig~7_combout\ & ( !\DATAPATHI|resetGC~1_combout\ & ( \DATAPATHI|playingSig~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATHI|ALT_INV_playingSig~6_combout\,
	datae => \DATAPATHI|ALT_INV_playingSig~7_combout\,
	dataf => \DATAPATHI|ALT_INV_resetGC~1_combout\,
	combout => \DATAPATHI|resetGC~1_combout\);

-- Location: MLABCELL_X87_Y6_N24
\DATAPATHI|resetGC~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|resetGC~3_combout\ = ( \DATAPATHI|resetGC~2_combout\ & ( !\DATAPATHI|resetGC~1_combout\ ) ) # ( !\DATAPATHI|resetGC~2_combout\ & ( !\DATAPATHI|resetGC~1_combout\ $ (!\DATAPATHI|Equal2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DATAPATHI|ALT_INV_resetGC~1_combout\,
	datad => \DATAPATHI|ALT_INV_Equal2~0_combout\,
	dataf => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	combout => \DATAPATHI|resetGC~3_combout\);

-- Location: MLABCELL_X87_Y6_N57
\DATAPATHI|resetGC~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|resetGC~0_combout\ = ( \DATAPATHI|playingSig~6_combout\ & ( \DATAPATHI|playingSig~7_combout\ ) ) # ( !\DATAPATHI|playingSig~6_combout\ & ( \DATAPATHI|playingSig~7_combout\ ) ) # ( \DATAPATHI|playingSig~6_combout\ & ( 
-- !\DATAPATHI|playingSig~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \DATAPATHI|ALT_INV_playingSig~6_combout\,
	dataf => \DATAPATHI|ALT_INV_playingSig~7_combout\,
	combout => \DATAPATHI|resetGC~0_combout\);

-- Location: FF_X87_Y6_N25
\DATAPATHI|resetGC~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DATAPATHI|changeClock|clockOut~q\,
	d => \DATAPATHI|resetGC~3_combout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|resetGC~_emulated_q\);

-- Location: MLABCELL_X84_Y7_N6
\DATAPATHI|resetGC~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|resetGC~2_combout\ = ( !\DATAPATHI|playingSig~7_combout\ & ( (!\DATAPATHI|resetGC~_emulated_q\ $ (!\DATAPATHI|resetGC~1_combout\)) # (\DATAPATHI|playingSig~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111101101111011011110110111101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_resetGC~_emulated_q\,
	datab => \DATAPATHI|ALT_INV_playingSig~6_combout\,
	datac => \DATAPATHI|ALT_INV_resetGC~1_combout\,
	dataf => \DATAPATHI|ALT_INV_playingSig~7_combout\,
	combout => \DATAPATHI|resetGC~2_combout\);

-- Location: FF_X85_Y8_N32
\DATAPATHI|changeClock|counter1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add1~89_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter1\(0));

-- Location: LABCELL_X85_Y8_N33
\DATAPATHI|changeClock|Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add1~93_sumout\ = SUM(( \DATAPATHI|changeClock|counter1\(1) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~90\ ))
-- \DATAPATHI|changeClock|Add1~94\ = CARRY(( \DATAPATHI|changeClock|counter1\(1) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter1\(1),
	cin => \DATAPATHI|changeClock|Add1~90\,
	sumout => \DATAPATHI|changeClock|Add1~93_sumout\,
	cout => \DATAPATHI|changeClock|Add1~94\);

-- Location: FF_X85_Y8_N35
\DATAPATHI|changeClock|counter1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add1~93_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter1\(1));

-- Location: LABCELL_X85_Y8_N36
\DATAPATHI|changeClock|Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add1~97_sumout\ = SUM(( \DATAPATHI|changeClock|counter1\(2) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~94\ ))
-- \DATAPATHI|changeClock|Add1~98\ = CARRY(( \DATAPATHI|changeClock|counter1\(2) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter1\(2),
	cin => \DATAPATHI|changeClock|Add1~94\,
	sumout => \DATAPATHI|changeClock|Add1~97_sumout\,
	cout => \DATAPATHI|changeClock|Add1~98\);

-- Location: FF_X85_Y8_N38
\DATAPATHI|changeClock|counter1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add1~97_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter1\(2));

-- Location: LABCELL_X85_Y8_N39
\DATAPATHI|changeClock|Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add1~113_sumout\ = SUM(( \DATAPATHI|changeClock|counter1\(3) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~98\ ))
-- \DATAPATHI|changeClock|Add1~114\ = CARRY(( \DATAPATHI|changeClock|counter1\(3) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter1\(3),
	cin => \DATAPATHI|changeClock|Add1~98\,
	sumout => \DATAPATHI|changeClock|Add1~113_sumout\,
	cout => \DATAPATHI|changeClock|Add1~114\);

-- Location: FF_X85_Y8_N41
\DATAPATHI|changeClock|counter1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add1~113_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter1\(3));

-- Location: LABCELL_X85_Y8_N42
\DATAPATHI|changeClock|Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add1~101_sumout\ = SUM(( \DATAPATHI|changeClock|counter1\(4) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~114\ ))
-- \DATAPATHI|changeClock|Add1~102\ = CARRY(( \DATAPATHI|changeClock|counter1\(4) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter1\(4),
	cin => \DATAPATHI|changeClock|Add1~114\,
	sumout => \DATAPATHI|changeClock|Add1~101_sumout\,
	cout => \DATAPATHI|changeClock|Add1~102\);

-- Location: FF_X85_Y8_N44
\DATAPATHI|changeClock|counter1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add1~101_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter1\(4));

-- Location: LABCELL_X85_Y8_N45
\DATAPATHI|changeClock|Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add1~105_sumout\ = SUM(( \DATAPATHI|changeClock|counter1\(5) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~102\ ))
-- \DATAPATHI|changeClock|Add1~106\ = CARRY(( \DATAPATHI|changeClock|counter1\(5) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter1\(5),
	cin => \DATAPATHI|changeClock|Add1~102\,
	sumout => \DATAPATHI|changeClock|Add1~105_sumout\,
	cout => \DATAPATHI|changeClock|Add1~106\);

-- Location: FF_X85_Y8_N47
\DATAPATHI|changeClock|counter1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add1~105_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter1\(5));

-- Location: LABCELL_X85_Y8_N48
\DATAPATHI|changeClock|Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add1~109_sumout\ = SUM(( \DATAPATHI|changeClock|counter1\(6) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~106\ ))
-- \DATAPATHI|changeClock|Add1~110\ = CARRY(( \DATAPATHI|changeClock|counter1\(6) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter1\(6),
	cin => \DATAPATHI|changeClock|Add1~106\,
	sumout => \DATAPATHI|changeClock|Add1~109_sumout\,
	cout => \DATAPATHI|changeClock|Add1~110\);

-- Location: FF_X85_Y8_N50
\DATAPATHI|changeClock|counter1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add1~109_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter1\(6));

-- Location: LABCELL_X85_Y8_N51
\DATAPATHI|changeClock|Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add1~81_sumout\ = SUM(( \DATAPATHI|changeClock|counter1\(7) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~110\ ))
-- \DATAPATHI|changeClock|Add1~82\ = CARRY(( \DATAPATHI|changeClock|counter1\(7) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter1\(7),
	cin => \DATAPATHI|changeClock|Add1~110\,
	sumout => \DATAPATHI|changeClock|Add1~81_sumout\,
	cout => \DATAPATHI|changeClock|Add1~82\);

-- Location: FF_X85_Y8_N53
\DATAPATHI|changeClock|counter1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add1~81_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter1\(7));

-- Location: LABCELL_X85_Y8_N54
\DATAPATHI|changeClock|Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add1~85_sumout\ = SUM(( \DATAPATHI|changeClock|counter1\(8) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~82\ ))
-- \DATAPATHI|changeClock|Add1~86\ = CARRY(( \DATAPATHI|changeClock|counter1\(8) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter1\(8),
	cin => \DATAPATHI|changeClock|Add1~82\,
	sumout => \DATAPATHI|changeClock|Add1~85_sumout\,
	cout => \DATAPATHI|changeClock|Add1~86\);

-- Location: FF_X85_Y8_N56
\DATAPATHI|changeClock|counter1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add1~85_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter1\(8));

-- Location: LABCELL_X85_Y8_N57
\DATAPATHI|changeClock|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add1~9_sumout\ = SUM(( \DATAPATHI|changeClock|counter1\(9) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~86\ ))
-- \DATAPATHI|changeClock|Add1~10\ = CARRY(( \DATAPATHI|changeClock|counter1\(9) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter1\(9),
	cin => \DATAPATHI|changeClock|Add1~86\,
	sumout => \DATAPATHI|changeClock|Add1~9_sumout\,
	cout => \DATAPATHI|changeClock|Add1~10\);

-- Location: FF_X85_Y8_N58
\DATAPATHI|changeClock|counter1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add1~9_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter1\(9));

-- Location: LABCELL_X85_Y7_N0
\DATAPATHI|changeClock|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add1~13_sumout\ = SUM(( \DATAPATHI|changeClock|counter1\(10) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~10\ ))
-- \DATAPATHI|changeClock|Add1~14\ = CARRY(( \DATAPATHI|changeClock|counter1\(10) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter1\(10),
	cin => \DATAPATHI|changeClock|Add1~10\,
	sumout => \DATAPATHI|changeClock|Add1~13_sumout\,
	cout => \DATAPATHI|changeClock|Add1~14\);

-- Location: FF_X85_Y7_N1
\DATAPATHI|changeClock|counter1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add1~13_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter1\(10));

-- Location: LABCELL_X85_Y7_N3
\DATAPATHI|changeClock|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add1~5_sumout\ = SUM(( \DATAPATHI|changeClock|counter1\(11) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~14\ ))
-- \DATAPATHI|changeClock|Add1~6\ = CARRY(( \DATAPATHI|changeClock|counter1\(11) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter1\(11),
	cin => \DATAPATHI|changeClock|Add1~14\,
	sumout => \DATAPATHI|changeClock|Add1~5_sumout\,
	cout => \DATAPATHI|changeClock|Add1~6\);

-- Location: FF_X85_Y7_N5
\DATAPATHI|changeClock|counter1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add1~5_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter1\(11));

-- Location: LABCELL_X85_Y7_N6
\DATAPATHI|changeClock|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add1~17_sumout\ = SUM(( \DATAPATHI|changeClock|counter1\(12) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~6\ ))
-- \DATAPATHI|changeClock|Add1~18\ = CARRY(( \DATAPATHI|changeClock|counter1\(12) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter1\(12),
	cin => \DATAPATHI|changeClock|Add1~6\,
	sumout => \DATAPATHI|changeClock|Add1~17_sumout\,
	cout => \DATAPATHI|changeClock|Add1~18\);

-- Location: FF_X85_Y7_N7
\DATAPATHI|changeClock|counter1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add1~17_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter1\(12));

-- Location: LABCELL_X85_Y7_N9
\DATAPATHI|changeClock|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add1~21_sumout\ = SUM(( \DATAPATHI|changeClock|counter1\(13) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~18\ ))
-- \DATAPATHI|changeClock|Add1~22\ = CARRY(( \DATAPATHI|changeClock|counter1\(13) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter1\(13),
	cin => \DATAPATHI|changeClock|Add1~18\,
	sumout => \DATAPATHI|changeClock|Add1~21_sumout\,
	cout => \DATAPATHI|changeClock|Add1~22\);

-- Location: FF_X85_Y7_N10
\DATAPATHI|changeClock|counter1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add1~21_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter1\(13));

-- Location: LABCELL_X85_Y7_N12
\DATAPATHI|changeClock|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add1~25_sumout\ = SUM(( \DATAPATHI|changeClock|counter1\(14) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~22\ ))
-- \DATAPATHI|changeClock|Add1~26\ = CARRY(( \DATAPATHI|changeClock|counter1\(14) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter1\(14),
	cin => \DATAPATHI|changeClock|Add1~22\,
	sumout => \DATAPATHI|changeClock|Add1~25_sumout\,
	cout => \DATAPATHI|changeClock|Add1~26\);

-- Location: FF_X85_Y7_N13
\DATAPATHI|changeClock|counter1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add1~25_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter1\(14));

-- Location: LABCELL_X85_Y7_N15
\DATAPATHI|changeClock|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add1~29_sumout\ = SUM(( \DATAPATHI|changeClock|counter1\(15) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~26\ ))
-- \DATAPATHI|changeClock|Add1~30\ = CARRY(( \DATAPATHI|changeClock|counter1\(15) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter1\(15),
	cin => \DATAPATHI|changeClock|Add1~26\,
	sumout => \DATAPATHI|changeClock|Add1~29_sumout\,
	cout => \DATAPATHI|changeClock|Add1~30\);

-- Location: FF_X85_Y7_N16
\DATAPATHI|changeClock|counter1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add1~29_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter1\(15));

-- Location: LABCELL_X85_Y7_N18
\DATAPATHI|changeClock|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add1~33_sumout\ = SUM(( \DATAPATHI|changeClock|counter1\(16) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~30\ ))
-- \DATAPATHI|changeClock|Add1~34\ = CARRY(( \DATAPATHI|changeClock|counter1\(16) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter1\(16),
	cin => \DATAPATHI|changeClock|Add1~30\,
	sumout => \DATAPATHI|changeClock|Add1~33_sumout\,
	cout => \DATAPATHI|changeClock|Add1~34\);

-- Location: FF_X85_Y7_N19
\DATAPATHI|changeClock|counter1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add1~33_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter1\(16));

-- Location: LABCELL_X85_Y7_N21
\DATAPATHI|changeClock|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add1~37_sumout\ = SUM(( \DATAPATHI|changeClock|counter1\(17) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~34\ ))
-- \DATAPATHI|changeClock|Add1~38\ = CARRY(( \DATAPATHI|changeClock|counter1\(17) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter1\(17),
	cin => \DATAPATHI|changeClock|Add1~34\,
	sumout => \DATAPATHI|changeClock|Add1~37_sumout\,
	cout => \DATAPATHI|changeClock|Add1~38\);

-- Location: FF_X85_Y7_N22
\DATAPATHI|changeClock|counter1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add1~37_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter1\(17));

-- Location: LABCELL_X85_Y7_N24
\DATAPATHI|changeClock|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add1~41_sumout\ = SUM(( \DATAPATHI|changeClock|counter1\(18) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~38\ ))
-- \DATAPATHI|changeClock|Add1~42\ = CARRY(( \DATAPATHI|changeClock|counter1\(18) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter1\(18),
	cin => \DATAPATHI|changeClock|Add1~38\,
	sumout => \DATAPATHI|changeClock|Add1~41_sumout\,
	cout => \DATAPATHI|changeClock|Add1~42\);

-- Location: FF_X85_Y7_N25
\DATAPATHI|changeClock|counter1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add1~41_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter1\(18));

-- Location: LABCELL_X85_Y7_N27
\DATAPATHI|changeClock|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add1~45_sumout\ = SUM(( \DATAPATHI|changeClock|counter1\(19) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~42\ ))
-- \DATAPATHI|changeClock|Add1~46\ = CARRY(( \DATAPATHI|changeClock|counter1\(19) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter1\(19),
	cin => \DATAPATHI|changeClock|Add1~42\,
	sumout => \DATAPATHI|changeClock|Add1~45_sumout\,
	cout => \DATAPATHI|changeClock|Add1~46\);

-- Location: FF_X85_Y7_N28
\DATAPATHI|changeClock|counter1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add1~45_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter1\(19));

-- Location: LABCELL_X85_Y8_N24
\DATAPATHI|changeClock|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Equal1~1_combout\ = ( \DATAPATHI|changeClock|counter1\(19) & ( \DATAPATHI|changeClock|counter1\(16) & ( (\DATAPATHI|changeClock|counter1\(17) & (!\DATAPATHI|changeClock|counter1\(18) & \DATAPATHI|changeClock|counter1\(15))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATHI|changeClock|ALT_INV_counter1\(17),
	datac => \DATAPATHI|changeClock|ALT_INV_counter1\(18),
	datad => \DATAPATHI|changeClock|ALT_INV_counter1\(15),
	datae => \DATAPATHI|changeClock|ALT_INV_counter1\(19),
	dataf => \DATAPATHI|changeClock|ALT_INV_counter1\(16),
	combout => \DATAPATHI|changeClock|Equal1~1_combout\);

-- Location: LABCELL_X85_Y7_N30
\DATAPATHI|changeClock|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add1~1_sumout\ = SUM(( \DATAPATHI|changeClock|counter1\(20) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~46\ ))
-- \DATAPATHI|changeClock|Add1~2\ = CARRY(( \DATAPATHI|changeClock|counter1\(20) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter1\(20),
	cin => \DATAPATHI|changeClock|Add1~46\,
	sumout => \DATAPATHI|changeClock|Add1~1_sumout\,
	cout => \DATAPATHI|changeClock|Add1~2\);

-- Location: FF_X85_Y7_N31
\DATAPATHI|changeClock|counter1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add1~1_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter1\(20));

-- Location: LABCELL_X85_Y7_N33
\DATAPATHI|changeClock|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add1~49_sumout\ = SUM(( \DATAPATHI|changeClock|counter1\(21) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~2\ ))
-- \DATAPATHI|changeClock|Add1~50\ = CARRY(( \DATAPATHI|changeClock|counter1\(21) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter1\(21),
	cin => \DATAPATHI|changeClock|Add1~2\,
	sumout => \DATAPATHI|changeClock|Add1~49_sumout\,
	cout => \DATAPATHI|changeClock|Add1~50\);

-- Location: FF_X85_Y7_N34
\DATAPATHI|changeClock|counter1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add1~49_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter1\(21));

-- Location: LABCELL_X85_Y7_N36
\DATAPATHI|changeClock|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add1~53_sumout\ = SUM(( \DATAPATHI|changeClock|counter1\(22) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~50\ ))
-- \DATAPATHI|changeClock|Add1~54\ = CARRY(( \DATAPATHI|changeClock|counter1\(22) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter1\(22),
	cin => \DATAPATHI|changeClock|Add1~50\,
	sumout => \DATAPATHI|changeClock|Add1~53_sumout\,
	cout => \DATAPATHI|changeClock|Add1~54\);

-- Location: FF_X85_Y7_N37
\DATAPATHI|changeClock|counter1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add1~53_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter1\(22));

-- Location: LABCELL_X85_Y7_N39
\DATAPATHI|changeClock|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add1~57_sumout\ = SUM(( \DATAPATHI|changeClock|counter1\(23) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~54\ ))
-- \DATAPATHI|changeClock|Add1~58\ = CARRY(( \DATAPATHI|changeClock|counter1\(23) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter1\(23),
	cin => \DATAPATHI|changeClock|Add1~54\,
	sumout => \DATAPATHI|changeClock|Add1~57_sumout\,
	cout => \DATAPATHI|changeClock|Add1~58\);

-- Location: FF_X85_Y7_N41
\DATAPATHI|changeClock|counter1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add1~57_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter1\(23));

-- Location: LABCELL_X85_Y7_N42
\DATAPATHI|changeClock|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add1~61_sumout\ = SUM(( \DATAPATHI|changeClock|counter1\(24) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~58\ ))
-- \DATAPATHI|changeClock|Add1~62\ = CARRY(( \DATAPATHI|changeClock|counter1\(24) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter1\(24),
	cin => \DATAPATHI|changeClock|Add1~58\,
	sumout => \DATAPATHI|changeClock|Add1~61_sumout\,
	cout => \DATAPATHI|changeClock|Add1~62\);

-- Location: FF_X85_Y7_N44
\DATAPATHI|changeClock|counter1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add1~61_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter1\(24));

-- Location: LABCELL_X85_Y7_N45
\DATAPATHI|changeClock|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add1~65_sumout\ = SUM(( \DATAPATHI|changeClock|counter1\(25) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~62\ ))
-- \DATAPATHI|changeClock|Add1~66\ = CARRY(( \DATAPATHI|changeClock|counter1\(25) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter1\(25),
	cin => \DATAPATHI|changeClock|Add1~62\,
	sumout => \DATAPATHI|changeClock|Add1~65_sumout\,
	cout => \DATAPATHI|changeClock|Add1~66\);

-- Location: FF_X85_Y7_N47
\DATAPATHI|changeClock|counter1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add1~65_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter1\(25));

-- Location: LABCELL_X85_Y7_N48
\DATAPATHI|changeClock|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add1~69_sumout\ = SUM(( \DATAPATHI|changeClock|counter1\(26) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~66\ ))
-- \DATAPATHI|changeClock|Add1~70\ = CARRY(( \DATAPATHI|changeClock|counter1\(26) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter1\(26),
	cin => \DATAPATHI|changeClock|Add1~66\,
	sumout => \DATAPATHI|changeClock|Add1~69_sumout\,
	cout => \DATAPATHI|changeClock|Add1~70\);

-- Location: FF_X85_Y7_N50
\DATAPATHI|changeClock|counter1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add1~69_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter1\(26));

-- Location: LABCELL_X85_Y7_N51
\DATAPATHI|changeClock|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add1~73_sumout\ = SUM(( \DATAPATHI|changeClock|counter1\(27) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~70\ ))
-- \DATAPATHI|changeClock|Add1~74\ = CARRY(( \DATAPATHI|changeClock|counter1\(27) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter1\(27),
	cin => \DATAPATHI|changeClock|Add1~70\,
	sumout => \DATAPATHI|changeClock|Add1~73_sumout\,
	cout => \DATAPATHI|changeClock|Add1~74\);

-- Location: FF_X85_Y7_N53
\DATAPATHI|changeClock|counter1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add1~73_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter1\(27));

-- Location: LABCELL_X85_Y7_N54
\DATAPATHI|changeClock|Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add1~77_sumout\ = SUM(( \DATAPATHI|changeClock|counter1\(28) ) + ( GND ) + ( \DATAPATHI|changeClock|Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter1\(28),
	cin => \DATAPATHI|changeClock|Add1~74\,
	sumout => \DATAPATHI|changeClock|Add1~77_sumout\);

-- Location: FF_X85_Y7_N56
\DATAPATHI|changeClock|counter1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add1~77_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter1\(28));

-- Location: LABCELL_X85_Y8_N6
\DATAPATHI|changeClock|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Equal1~3_combout\ = ( !\DATAPATHI|changeClock|counter1\(28) & ( \DATAPATHI|changeClock|counter1\(7) & ( (\DATAPATHI|changeClock|counter1\(8) & (\DATAPATHI|changeClock|counter1\(0) & (\DATAPATHI|changeClock|counter1\(1) & 
-- \DATAPATHI|changeClock|counter1\(27)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|changeClock|ALT_INV_counter1\(8),
	datab => \DATAPATHI|changeClock|ALT_INV_counter1\(0),
	datac => \DATAPATHI|changeClock|ALT_INV_counter1\(1),
	datad => \DATAPATHI|changeClock|ALT_INV_counter1\(27),
	datae => \DATAPATHI|changeClock|ALT_INV_counter1\(28),
	dataf => \DATAPATHI|changeClock|ALT_INV_counter1\(7),
	combout => \DATAPATHI|changeClock|Equal1~3_combout\);

-- Location: LABCELL_X85_Y8_N0
\DATAPATHI|changeClock|Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Equal1~4_combout\ = ( \DATAPATHI|changeClock|counter1\(2) & ( \DATAPATHI|changeClock|counter1\(4) & ( (\DATAPATHI|changeClock|counter1\(5) & (\DATAPATHI|changeClock|counter1\(6) & \DATAPATHI|changeClock|counter1\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATHI|changeClock|ALT_INV_counter1\(5),
	datac => \DATAPATHI|changeClock|ALT_INV_counter1\(6),
	datad => \DATAPATHI|changeClock|ALT_INV_counter1\(3),
	datae => \DATAPATHI|changeClock|ALT_INV_counter1\(2),
	dataf => \DATAPATHI|changeClock|ALT_INV_counter1\(4),
	combout => \DATAPATHI|changeClock|Equal1~4_combout\);

-- Location: MLABCELL_X84_Y7_N21
\DATAPATHI|changeClock|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Equal1~2_combout\ = ( \DATAPATHI|changeClock|counter1\(21) & ( \DATAPATHI|changeClock|counter1\(22) & ( (\DATAPATHI|changeClock|counter1\(25) & (\DATAPATHI|changeClock|counter1\(24) & (!\DATAPATHI|changeClock|counter1\(26) & 
-- \DATAPATHI|changeClock|counter1\(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|changeClock|ALT_INV_counter1\(25),
	datab => \DATAPATHI|changeClock|ALT_INV_counter1\(24),
	datac => \DATAPATHI|changeClock|ALT_INV_counter1\(26),
	datad => \DATAPATHI|changeClock|ALT_INV_counter1\(23),
	datae => \DATAPATHI|changeClock|ALT_INV_counter1\(21),
	dataf => \DATAPATHI|changeClock|ALT_INV_counter1\(22),
	combout => \DATAPATHI|changeClock|Equal1~2_combout\);

-- Location: LABCELL_X85_Y8_N18
\DATAPATHI|changeClock|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Equal1~0_combout\ = ( !\DATAPATHI|changeClock|counter1\(13) & ( !\DATAPATHI|changeClock|counter1\(9) & ( (!\DATAPATHI|changeClock|counter1\(12) & (!\DATAPATHI|changeClock|counter1\(10) & (!\DATAPATHI|changeClock|counter1\(11) & 
-- \DATAPATHI|changeClock|counter1\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|changeClock|ALT_INV_counter1\(12),
	datab => \DATAPATHI|changeClock|ALT_INV_counter1\(10),
	datac => \DATAPATHI|changeClock|ALT_INV_counter1\(11),
	datad => \DATAPATHI|changeClock|ALT_INV_counter1\(14),
	datae => \DATAPATHI|changeClock|ALT_INV_counter1\(13),
	dataf => \DATAPATHI|changeClock|ALT_INV_counter1\(9),
	combout => \DATAPATHI|changeClock|Equal1~0_combout\);

-- Location: LABCELL_X85_Y8_N15
\DATAPATHI|changeClock|Equal1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Equal1~5_combout\ = ( \DATAPATHI|changeClock|Equal1~2_combout\ & ( \DATAPATHI|changeClock|Equal1~0_combout\ & ( (\DATAPATHI|changeClock|Equal1~1_combout\ & (!\DATAPATHI|changeClock|counter1\(20) & 
-- (\DATAPATHI|changeClock|Equal1~3_combout\ & \DATAPATHI|changeClock|Equal1~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|changeClock|ALT_INV_Equal1~1_combout\,
	datab => \DATAPATHI|changeClock|ALT_INV_counter1\(20),
	datac => \DATAPATHI|changeClock|ALT_INV_Equal1~3_combout\,
	datad => \DATAPATHI|changeClock|ALT_INV_Equal1~4_combout\,
	datae => \DATAPATHI|changeClock|ALT_INV_Equal1~2_combout\,
	dataf => \DATAPATHI|changeClock|ALT_INV_Equal1~0_combout\,
	combout => \DATAPATHI|changeClock|Equal1~5_combout\);

-- Location: FF_X85_Y8_N17
\DATAPATHI|changeClock|clock1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Equal1~5_combout\,
	ena => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|clock1~q\);

-- Location: LABCELL_X88_Y7_N27
\DATAPATHI|gameROM[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|gameROM[0]~0_combout\ = ( \CONTROLLER|resetSig~q\ & ( \CONTROLLER|actualS.Setup~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLLER|ALT_INV_actualS.Setup~q\,
	dataf => \CONTROLLER|ALT_INV_resetSig~q\,
	combout => \DATAPATHI|gameROM[0]~0_combout\);

-- Location: IOIBUF_X2_Y0_N58
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LABCELL_X88_Y7_N45
\DATAPATHI|gameLevel[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|gameLevel\(1) = ( \DATAPATHI|gameLevel\(1) & ( (!\DATAPATHI|gameROM[0]~0_combout\) # (\SW[9]~input_o\) ) ) # ( !\DATAPATHI|gameLevel\(1) & ( (\DATAPATHI|gameROM[0]~0_combout\ & \SW[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATHI|ALT_INV_gameROM[0]~0_combout\,
	datac => \ALT_INV_SW[9]~input_o\,
	dataf => \DATAPATHI|ALT_INV_gameLevel\(1),
	combout => \DATAPATHI|gameLevel\(1));

-- Location: LABCELL_X83_Y7_N30
\DATAPATHI|changeClock|Add2~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add2~113_sumout\ = SUM(( \DATAPATHI|changeClock|counter2\(0) ) + ( VCC ) + ( !VCC ))
-- \DATAPATHI|changeClock|Add2~114\ = CARRY(( \DATAPATHI|changeClock|counter2\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter2\(0),
	cin => GND,
	sumout => \DATAPATHI|changeClock|Add2~113_sumout\,
	cout => \DATAPATHI|changeClock|Add2~114\);

-- Location: FF_X83_Y7_N32
\DATAPATHI|changeClock|counter2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add2~113_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter2\(0));

-- Location: LABCELL_X83_Y7_N33
\DATAPATHI|changeClock|Add2~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add2~109_sumout\ = SUM(( \DATAPATHI|changeClock|counter2\(1) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~114\ ))
-- \DATAPATHI|changeClock|Add2~110\ = CARRY(( \DATAPATHI|changeClock|counter2\(1) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter2\(1),
	cin => \DATAPATHI|changeClock|Add2~114\,
	sumout => \DATAPATHI|changeClock|Add2~109_sumout\,
	cout => \DATAPATHI|changeClock|Add2~110\);

-- Location: FF_X83_Y7_N35
\DATAPATHI|changeClock|counter2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add2~109_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter2\(1));

-- Location: LABCELL_X83_Y7_N36
\DATAPATHI|changeClock|Add2~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add2~105_sumout\ = SUM(( \DATAPATHI|changeClock|counter2\(2) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~110\ ))
-- \DATAPATHI|changeClock|Add2~106\ = CARRY(( \DATAPATHI|changeClock|counter2\(2) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter2\(2),
	cin => \DATAPATHI|changeClock|Add2~110\,
	sumout => \DATAPATHI|changeClock|Add2~105_sumout\,
	cout => \DATAPATHI|changeClock|Add2~106\);

-- Location: FF_X83_Y7_N38
\DATAPATHI|changeClock|counter2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add2~105_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter2\(2));

-- Location: LABCELL_X83_Y7_N39
\DATAPATHI|changeClock|Add2~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add2~101_sumout\ = SUM(( \DATAPATHI|changeClock|counter2\(3) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~106\ ))
-- \DATAPATHI|changeClock|Add2~102\ = CARRY(( \DATAPATHI|changeClock|counter2\(3) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter2\(3),
	cin => \DATAPATHI|changeClock|Add2~106\,
	sumout => \DATAPATHI|changeClock|Add2~101_sumout\,
	cout => \DATAPATHI|changeClock|Add2~102\);

-- Location: FF_X83_Y7_N41
\DATAPATHI|changeClock|counter2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add2~101_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter2\(3));

-- Location: LABCELL_X83_Y7_N42
\DATAPATHI|changeClock|Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add2~53_sumout\ = SUM(( \DATAPATHI|changeClock|counter2\(4) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~102\ ))
-- \DATAPATHI|changeClock|Add2~54\ = CARRY(( \DATAPATHI|changeClock|counter2\(4) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter2\(4),
	cin => \DATAPATHI|changeClock|Add2~102\,
	sumout => \DATAPATHI|changeClock|Add2~53_sumout\,
	cout => \DATAPATHI|changeClock|Add2~54\);

-- Location: FF_X83_Y7_N43
\DATAPATHI|changeClock|counter2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add2~53_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter2\(4));

-- Location: LABCELL_X83_Y7_N45
\DATAPATHI|changeClock|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add2~9_sumout\ = SUM(( \DATAPATHI|changeClock|counter2\(5) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~54\ ))
-- \DATAPATHI|changeClock|Add2~10\ = CARRY(( \DATAPATHI|changeClock|counter2\(5) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter2\(5),
	cin => \DATAPATHI|changeClock|Add2~54\,
	sumout => \DATAPATHI|changeClock|Add2~9_sumout\,
	cout => \DATAPATHI|changeClock|Add2~10\);

-- Location: FF_X83_Y7_N47
\DATAPATHI|changeClock|counter2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add2~9_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter2\(5));

-- Location: LABCELL_X83_Y7_N48
\DATAPATHI|changeClock|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add2~13_sumout\ = SUM(( \DATAPATHI|changeClock|counter2\(6) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~10\ ))
-- \DATAPATHI|changeClock|Add2~14\ = CARRY(( \DATAPATHI|changeClock|counter2\(6) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter2\(6),
	cin => \DATAPATHI|changeClock|Add2~10\,
	sumout => \DATAPATHI|changeClock|Add2~13_sumout\,
	cout => \DATAPATHI|changeClock|Add2~14\);

-- Location: FF_X83_Y7_N49
\DATAPATHI|changeClock|counter2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add2~13_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter2\(6));

-- Location: LABCELL_X83_Y7_N51
\DATAPATHI|changeClock|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add2~17_sumout\ = SUM(( \DATAPATHI|changeClock|counter2\(7) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~14\ ))
-- \DATAPATHI|changeClock|Add2~18\ = CARRY(( \DATAPATHI|changeClock|counter2\(7) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter2\(7),
	cin => \DATAPATHI|changeClock|Add2~14\,
	sumout => \DATAPATHI|changeClock|Add2~17_sumout\,
	cout => \DATAPATHI|changeClock|Add2~18\);

-- Location: FF_X83_Y7_N53
\DATAPATHI|changeClock|counter2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add2~17_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter2\(7));

-- Location: LABCELL_X83_Y7_N54
\DATAPATHI|changeClock|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add2~21_sumout\ = SUM(( \DATAPATHI|changeClock|counter2\(8) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~18\ ))
-- \DATAPATHI|changeClock|Add2~22\ = CARRY(( \DATAPATHI|changeClock|counter2\(8) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter2\(8),
	cin => \DATAPATHI|changeClock|Add2~18\,
	sumout => \DATAPATHI|changeClock|Add2~21_sumout\,
	cout => \DATAPATHI|changeClock|Add2~22\);

-- Location: FF_X83_Y7_N56
\DATAPATHI|changeClock|counter2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add2~21_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter2\(8));

-- Location: LABCELL_X83_Y7_N57
\DATAPATHI|changeClock|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add2~25_sumout\ = SUM(( \DATAPATHI|changeClock|counter2\(9) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~22\ ))
-- \DATAPATHI|changeClock|Add2~26\ = CARRY(( \DATAPATHI|changeClock|counter2\(9) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter2\(9),
	cin => \DATAPATHI|changeClock|Add2~22\,
	sumout => \DATAPATHI|changeClock|Add2~25_sumout\,
	cout => \DATAPATHI|changeClock|Add2~26\);

-- Location: FF_X83_Y7_N59
\DATAPATHI|changeClock|counter2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add2~25_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter2\(9));

-- Location: LABCELL_X83_Y6_N0
\DATAPATHI|changeClock|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add2~29_sumout\ = SUM(( \DATAPATHI|changeClock|counter2\(10) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~26\ ))
-- \DATAPATHI|changeClock|Add2~30\ = CARRY(( \DATAPATHI|changeClock|counter2\(10) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter2\(10),
	cin => \DATAPATHI|changeClock|Add2~26\,
	sumout => \DATAPATHI|changeClock|Add2~29_sumout\,
	cout => \DATAPATHI|changeClock|Add2~30\);

-- Location: FF_X83_Y6_N2
\DATAPATHI|changeClock|counter2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add2~29_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter2\(10));

-- Location: LABCELL_X83_Y6_N3
\DATAPATHI|changeClock|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add2~33_sumout\ = SUM(( \DATAPATHI|changeClock|counter2\(11) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~30\ ))
-- \DATAPATHI|changeClock|Add2~34\ = CARRY(( \DATAPATHI|changeClock|counter2\(11) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter2\(11),
	cin => \DATAPATHI|changeClock|Add2~30\,
	sumout => \DATAPATHI|changeClock|Add2~33_sumout\,
	cout => \DATAPATHI|changeClock|Add2~34\);

-- Location: FF_X83_Y6_N4
\DATAPATHI|changeClock|counter2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add2~33_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter2\(11));

-- Location: LABCELL_X83_Y6_N6
\DATAPATHI|changeClock|Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add2~37_sumout\ = SUM(( \DATAPATHI|changeClock|counter2\(12) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~34\ ))
-- \DATAPATHI|changeClock|Add2~38\ = CARRY(( \DATAPATHI|changeClock|counter2\(12) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter2\(12),
	cin => \DATAPATHI|changeClock|Add2~34\,
	sumout => \DATAPATHI|changeClock|Add2~37_sumout\,
	cout => \DATAPATHI|changeClock|Add2~38\);

-- Location: FF_X83_Y6_N8
\DATAPATHI|changeClock|counter2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add2~37_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter2\(12));

-- Location: LABCELL_X83_Y6_N9
\DATAPATHI|changeClock|Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add2~41_sumout\ = SUM(( \DATAPATHI|changeClock|counter2\(13) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~38\ ))
-- \DATAPATHI|changeClock|Add2~42\ = CARRY(( \DATAPATHI|changeClock|counter2\(13) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter2\(13),
	cin => \DATAPATHI|changeClock|Add2~38\,
	sumout => \DATAPATHI|changeClock|Add2~41_sumout\,
	cout => \DATAPATHI|changeClock|Add2~42\);

-- Location: FF_X83_Y6_N11
\DATAPATHI|changeClock|counter2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add2~41_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter2\(13));

-- Location: LABCELL_X83_Y6_N12
\DATAPATHI|changeClock|Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add2~45_sumout\ = SUM(( \DATAPATHI|changeClock|counter2\(14) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~42\ ))
-- \DATAPATHI|changeClock|Add2~46\ = CARRY(( \DATAPATHI|changeClock|counter2\(14) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter2\(14),
	cin => \DATAPATHI|changeClock|Add2~42\,
	sumout => \DATAPATHI|changeClock|Add2~45_sumout\,
	cout => \DATAPATHI|changeClock|Add2~46\);

-- Location: FF_X83_Y6_N14
\DATAPATHI|changeClock|counter2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add2~45_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter2\(14));

-- Location: LABCELL_X83_Y6_N15
\DATAPATHI|changeClock|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add2~1_sumout\ = SUM(( \DATAPATHI|changeClock|counter2\(15) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~46\ ))
-- \DATAPATHI|changeClock|Add2~2\ = CARRY(( \DATAPATHI|changeClock|counter2\(15) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter2\(15),
	cin => \DATAPATHI|changeClock|Add2~46\,
	sumout => \DATAPATHI|changeClock|Add2~1_sumout\,
	cout => \DATAPATHI|changeClock|Add2~2\);

-- Location: FF_X83_Y6_N16
\DATAPATHI|changeClock|counter2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add2~1_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter2\(15));

-- Location: LABCELL_X83_Y6_N18
\DATAPATHI|changeClock|Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add2~49_sumout\ = SUM(( \DATAPATHI|changeClock|counter2\(16) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~2\ ))
-- \DATAPATHI|changeClock|Add2~50\ = CARRY(( \DATAPATHI|changeClock|counter2\(16) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter2\(16),
	cin => \DATAPATHI|changeClock|Add2~2\,
	sumout => \DATAPATHI|changeClock|Add2~49_sumout\,
	cout => \DATAPATHI|changeClock|Add2~50\);

-- Location: FF_X83_Y6_N19
\DATAPATHI|changeClock|counter2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add2~49_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter2\(16));

-- Location: LABCELL_X83_Y6_N21
\DATAPATHI|changeClock|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add2~5_sumout\ = SUM(( \DATAPATHI|changeClock|counter2\(17) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~50\ ))
-- \DATAPATHI|changeClock|Add2~6\ = CARRY(( \DATAPATHI|changeClock|counter2\(17) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter2\(17),
	cin => \DATAPATHI|changeClock|Add2~50\,
	sumout => \DATAPATHI|changeClock|Add2~5_sumout\,
	cout => \DATAPATHI|changeClock|Add2~6\);

-- Location: FF_X83_Y6_N23
\DATAPATHI|changeClock|counter2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add2~5_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter2\(17));

-- Location: LABCELL_X83_Y6_N24
\DATAPATHI|changeClock|Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add2~57_sumout\ = SUM(( \DATAPATHI|changeClock|counter2\(18) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~6\ ))
-- \DATAPATHI|changeClock|Add2~58\ = CARRY(( \DATAPATHI|changeClock|counter2\(18) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter2\(18),
	cin => \DATAPATHI|changeClock|Add2~6\,
	sumout => \DATAPATHI|changeClock|Add2~57_sumout\,
	cout => \DATAPATHI|changeClock|Add2~58\);

-- Location: FF_X83_Y6_N26
\DATAPATHI|changeClock|counter2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add2~57_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter2\(18));

-- Location: LABCELL_X83_Y6_N27
\DATAPATHI|changeClock|Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add2~61_sumout\ = SUM(( \DATAPATHI|changeClock|counter2\(19) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~58\ ))
-- \DATAPATHI|changeClock|Add2~62\ = CARRY(( \DATAPATHI|changeClock|counter2\(19) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter2\(19),
	cin => \DATAPATHI|changeClock|Add2~58\,
	sumout => \DATAPATHI|changeClock|Add2~61_sumout\,
	cout => \DATAPATHI|changeClock|Add2~62\);

-- Location: FF_X83_Y6_N28
\DATAPATHI|changeClock|counter2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add2~61_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter2\(19));

-- Location: LABCELL_X83_Y6_N30
\DATAPATHI|changeClock|Add2~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add2~65_sumout\ = SUM(( \DATAPATHI|changeClock|counter2\(20) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~62\ ))
-- \DATAPATHI|changeClock|Add2~66\ = CARRY(( \DATAPATHI|changeClock|counter2\(20) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter2\(20),
	cin => \DATAPATHI|changeClock|Add2~62\,
	sumout => \DATAPATHI|changeClock|Add2~65_sumout\,
	cout => \DATAPATHI|changeClock|Add2~66\);

-- Location: FF_X83_Y6_N31
\DATAPATHI|changeClock|counter2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add2~65_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter2\(20));

-- Location: LABCELL_X83_Y6_N33
\DATAPATHI|changeClock|Add2~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add2~69_sumout\ = SUM(( \DATAPATHI|changeClock|counter2\(21) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~66\ ))
-- \DATAPATHI|changeClock|Add2~70\ = CARRY(( \DATAPATHI|changeClock|counter2\(21) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter2\(21),
	cin => \DATAPATHI|changeClock|Add2~66\,
	sumout => \DATAPATHI|changeClock|Add2~69_sumout\,
	cout => \DATAPATHI|changeClock|Add2~70\);

-- Location: FF_X83_Y6_N35
\DATAPATHI|changeClock|counter2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add2~69_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter2\(21));

-- Location: LABCELL_X83_Y6_N36
\DATAPATHI|changeClock|Add2~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add2~73_sumout\ = SUM(( \DATAPATHI|changeClock|counter2\(22) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~70\ ))
-- \DATAPATHI|changeClock|Add2~74\ = CARRY(( \DATAPATHI|changeClock|counter2\(22) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter2\(22),
	cin => \DATAPATHI|changeClock|Add2~70\,
	sumout => \DATAPATHI|changeClock|Add2~73_sumout\,
	cout => \DATAPATHI|changeClock|Add2~74\);

-- Location: FF_X83_Y6_N37
\DATAPATHI|changeClock|counter2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add2~73_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter2\(22));

-- Location: LABCELL_X83_Y6_N39
\DATAPATHI|changeClock|Add2~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add2~77_sumout\ = SUM(( \DATAPATHI|changeClock|counter2\(23) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~74\ ))
-- \DATAPATHI|changeClock|Add2~78\ = CARRY(( \DATAPATHI|changeClock|counter2\(23) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter2\(23),
	cin => \DATAPATHI|changeClock|Add2~74\,
	sumout => \DATAPATHI|changeClock|Add2~77_sumout\,
	cout => \DATAPATHI|changeClock|Add2~78\);

-- Location: FF_X83_Y6_N40
\DATAPATHI|changeClock|counter2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add2~77_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter2\(23));

-- Location: LABCELL_X83_Y6_N42
\DATAPATHI|changeClock|Add2~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add2~97_sumout\ = SUM(( \DATAPATHI|changeClock|counter2\(24) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~78\ ))
-- \DATAPATHI|changeClock|Add2~98\ = CARRY(( \DATAPATHI|changeClock|counter2\(24) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter2\(24),
	cin => \DATAPATHI|changeClock|Add2~78\,
	sumout => \DATAPATHI|changeClock|Add2~97_sumout\,
	cout => \DATAPATHI|changeClock|Add2~98\);

-- Location: FF_X83_Y6_N44
\DATAPATHI|changeClock|counter2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add2~97_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter2\(24));

-- Location: LABCELL_X83_Y7_N0
\DATAPATHI|changeClock|Equal2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Equal2~4_combout\ = ( \DATAPATHI|changeClock|counter2\(2) & ( !\DATAPATHI|changeClock|counter2\(24) & ( (\DATAPATHI|changeClock|counter2\(0) & (\DATAPATHI|changeClock|counter2\(1) & \DATAPATHI|changeClock|counter2\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATHI|changeClock|ALT_INV_counter2\(0),
	datac => \DATAPATHI|changeClock|ALT_INV_counter2\(1),
	datad => \DATAPATHI|changeClock|ALT_INV_counter2\(3),
	datae => \DATAPATHI|changeClock|ALT_INV_counter2\(2),
	dataf => \DATAPATHI|changeClock|ALT_INV_counter2\(24),
	combout => \DATAPATHI|changeClock|Equal2~4_combout\);

-- Location: LABCELL_X83_Y7_N24
\DATAPATHI|changeClock|Equal2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Equal2~2_combout\ = ( !\DATAPATHI|changeClock|counter2\(18) & ( \DATAPATHI|changeClock|counter2\(4) & ( (!\DATAPATHI|changeClock|counter2\(19) & (\DATAPATHI|changeClock|counter2\(21) & (\DATAPATHI|changeClock|counter2\(20) & 
-- !\DATAPATHI|changeClock|counter2\(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|changeClock|ALT_INV_counter2\(19),
	datab => \DATAPATHI|changeClock|ALT_INV_counter2\(21),
	datac => \DATAPATHI|changeClock|ALT_INV_counter2\(20),
	datad => \DATAPATHI|changeClock|ALT_INV_counter2\(16),
	datae => \DATAPATHI|changeClock|ALT_INV_counter2\(18),
	dataf => \DATAPATHI|changeClock|ALT_INV_counter2\(4),
	combout => \DATAPATHI|changeClock|Equal2~2_combout\);

-- Location: LABCELL_X83_Y6_N45
\DATAPATHI|changeClock|Add2~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add2~93_sumout\ = SUM(( \DATAPATHI|changeClock|counter2\(25) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~98\ ))
-- \DATAPATHI|changeClock|Add2~94\ = CARRY(( \DATAPATHI|changeClock|counter2\(25) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter2\(25),
	cin => \DATAPATHI|changeClock|Add2~98\,
	sumout => \DATAPATHI|changeClock|Add2~93_sumout\,
	cout => \DATAPATHI|changeClock|Add2~94\);

-- Location: FF_X83_Y6_N47
\DATAPATHI|changeClock|counter2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add2~93_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter2\(25));

-- Location: LABCELL_X83_Y6_N48
\DATAPATHI|changeClock|Add2~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add2~89_sumout\ = SUM(( \DATAPATHI|changeClock|counter2\(26) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~94\ ))
-- \DATAPATHI|changeClock|Add2~90\ = CARRY(( \DATAPATHI|changeClock|counter2\(26) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter2\(26),
	cin => \DATAPATHI|changeClock|Add2~94\,
	sumout => \DATAPATHI|changeClock|Add2~89_sumout\,
	cout => \DATAPATHI|changeClock|Add2~90\);

-- Location: FF_X83_Y6_N49
\DATAPATHI|changeClock|counter2[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add2~89_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter2\(26));

-- Location: LABCELL_X83_Y6_N51
\DATAPATHI|changeClock|Add2~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add2~85_sumout\ = SUM(( \DATAPATHI|changeClock|counter2\(27) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~90\ ))
-- \DATAPATHI|changeClock|Add2~86\ = CARRY(( \DATAPATHI|changeClock|counter2\(27) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter2\(27),
	cin => \DATAPATHI|changeClock|Add2~90\,
	sumout => \DATAPATHI|changeClock|Add2~85_sumout\,
	cout => \DATAPATHI|changeClock|Add2~86\);

-- Location: FF_X83_Y6_N52
\DATAPATHI|changeClock|counter2[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add2~85_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter2\(27));

-- Location: LABCELL_X83_Y6_N54
\DATAPATHI|changeClock|Add2~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add2~81_sumout\ = SUM(( \DATAPATHI|changeClock|counter2\(28) ) + ( GND ) + ( \DATAPATHI|changeClock|Add2~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter2\(28),
	cin => \DATAPATHI|changeClock|Add2~86\,
	sumout => \DATAPATHI|changeClock|Add2~81_sumout\);

-- Location: FF_X83_Y6_N55
\DATAPATHI|changeClock|counter2[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add2~81_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter2\(28));

-- Location: LABCELL_X83_Y7_N6
\DATAPATHI|changeClock|Equal2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Equal2~3_combout\ = ( \DATAPATHI|changeClock|counter2\(22) & ( !\DATAPATHI|changeClock|counter2\(26) & ( (!\DATAPATHI|changeClock|counter2\(25) & (!\DATAPATHI|changeClock|counter2\(28) & (\DATAPATHI|changeClock|counter2\(27) & 
-- \DATAPATHI|changeClock|counter2\(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|changeClock|ALT_INV_counter2\(25),
	datab => \DATAPATHI|changeClock|ALT_INV_counter2\(28),
	datac => \DATAPATHI|changeClock|ALT_INV_counter2\(27),
	datad => \DATAPATHI|changeClock|ALT_INV_counter2\(23),
	datae => \DATAPATHI|changeClock|ALT_INV_counter2\(22),
	dataf => \DATAPATHI|changeClock|ALT_INV_counter2\(26),
	combout => \DATAPATHI|changeClock|Equal2~3_combout\);

-- Location: MLABCELL_X82_Y6_N51
\DATAPATHI|changeClock|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Equal2~1_combout\ = ( !\DATAPATHI|changeClock|counter2\(10) & ( !\DATAPATHI|changeClock|counter2\(11) & ( (\DATAPATHI|changeClock|counter2\(12) & (\DATAPATHI|changeClock|counter2\(14) & !\DATAPATHI|changeClock|counter2\(13))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|changeClock|ALT_INV_counter2\(12),
	datac => \DATAPATHI|changeClock|ALT_INV_counter2\(14),
	datad => \DATAPATHI|changeClock|ALT_INV_counter2\(13),
	datae => \DATAPATHI|changeClock|ALT_INV_counter2\(10),
	dataf => \DATAPATHI|changeClock|ALT_INV_counter2\(11),
	combout => \DATAPATHI|changeClock|Equal2~1_combout\);

-- Location: LABCELL_X83_Y7_N18
\DATAPATHI|changeClock|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Equal2~0_combout\ = ( \DATAPATHI|changeClock|counter2\(6) & ( !\DATAPATHI|changeClock|counter2\(7) & ( (\DATAPATHI|changeClock|counter2\(8) & (!\DATAPATHI|changeClock|counter2\(9) & (!\DATAPATHI|changeClock|counter2\(17) & 
-- \DATAPATHI|changeClock|counter2\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|changeClock|ALT_INV_counter2\(8),
	datab => \DATAPATHI|changeClock|ALT_INV_counter2\(9),
	datac => \DATAPATHI|changeClock|ALT_INV_counter2\(17),
	datad => \DATAPATHI|changeClock|ALT_INV_counter2\(5),
	datae => \DATAPATHI|changeClock|ALT_INV_counter2\(6),
	dataf => \DATAPATHI|changeClock|ALT_INV_counter2\(7),
	combout => \DATAPATHI|changeClock|Equal2~0_combout\);

-- Location: LABCELL_X83_Y7_N15
\DATAPATHI|changeClock|Equal2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Equal2~5_combout\ = ( \DATAPATHI|changeClock|Equal2~1_combout\ & ( \DATAPATHI|changeClock|Equal2~0_combout\ & ( (\DATAPATHI|changeClock|Equal2~4_combout\ & (\DATAPATHI|changeClock|Equal2~2_combout\ & 
-- (\DATAPATHI|changeClock|Equal2~3_combout\ & \DATAPATHI|changeClock|counter2\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|changeClock|ALT_INV_Equal2~4_combout\,
	datab => \DATAPATHI|changeClock|ALT_INV_Equal2~2_combout\,
	datac => \DATAPATHI|changeClock|ALT_INV_Equal2~3_combout\,
	datad => \DATAPATHI|changeClock|ALT_INV_counter2\(15),
	datae => \DATAPATHI|changeClock|ALT_INV_Equal2~1_combout\,
	dataf => \DATAPATHI|changeClock|ALT_INV_Equal2~0_combout\,
	combout => \DATAPATHI|changeClock|Equal2~5_combout\);

-- Location: FF_X83_Y7_N16
\DATAPATHI|changeClock|clock2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Equal2~5_combout\,
	ena => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|clock2~q\);

-- Location: LABCELL_X83_Y9_N30
\DATAPATHI|changeClock|Add3~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add3~57_sumout\ = SUM(( \DATAPATHI|changeClock|counter3\(0) ) + ( VCC ) + ( !VCC ))
-- \DATAPATHI|changeClock|Add3~58\ = CARRY(( \DATAPATHI|changeClock|counter3\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter3\(0),
	cin => GND,
	sumout => \DATAPATHI|changeClock|Add3~57_sumout\,
	cout => \DATAPATHI|changeClock|Add3~58\);

-- Location: FF_X83_Y9_N31
\DATAPATHI|changeClock|counter3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add3~57_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter3\(0));

-- Location: LABCELL_X83_Y9_N33
\DATAPATHI|changeClock|Add3~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add3~53_sumout\ = SUM(( \DATAPATHI|changeClock|counter3\(1) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~58\ ))
-- \DATAPATHI|changeClock|Add3~54\ = CARRY(( \DATAPATHI|changeClock|counter3\(1) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter3\(1),
	cin => \DATAPATHI|changeClock|Add3~58\,
	sumout => \DATAPATHI|changeClock|Add3~53_sumout\,
	cout => \DATAPATHI|changeClock|Add3~54\);

-- Location: FF_X83_Y9_N35
\DATAPATHI|changeClock|counter3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add3~53_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter3\(1));

-- Location: LABCELL_X83_Y9_N36
\DATAPATHI|changeClock|Add3~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add3~49_sumout\ = SUM(( \DATAPATHI|changeClock|counter3\(2) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~54\ ))
-- \DATAPATHI|changeClock|Add3~50\ = CARRY(( \DATAPATHI|changeClock|counter3\(2) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter3\(2),
	cin => \DATAPATHI|changeClock|Add3~54\,
	sumout => \DATAPATHI|changeClock|Add3~49_sumout\,
	cout => \DATAPATHI|changeClock|Add3~50\);

-- Location: FF_X83_Y9_N38
\DATAPATHI|changeClock|counter3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add3~49_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter3\(2));

-- Location: LABCELL_X83_Y9_N39
\DATAPATHI|changeClock|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add3~1_sumout\ = SUM(( \DATAPATHI|changeClock|counter3\(3) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~50\ ))
-- \DATAPATHI|changeClock|Add3~2\ = CARRY(( \DATAPATHI|changeClock|counter3\(3) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter3\(3),
	cin => \DATAPATHI|changeClock|Add3~50\,
	sumout => \DATAPATHI|changeClock|Add3~1_sumout\,
	cout => \DATAPATHI|changeClock|Add3~2\);

-- Location: FF_X83_Y9_N41
\DATAPATHI|changeClock|counter3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add3~1_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter3\(3));

-- Location: LABCELL_X83_Y9_N42
\DATAPATHI|changeClock|Add3~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add3~45_sumout\ = SUM(( \DATAPATHI|changeClock|counter3\(4) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~2\ ))
-- \DATAPATHI|changeClock|Add3~46\ = CARRY(( \DATAPATHI|changeClock|counter3\(4) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter3\(4),
	cin => \DATAPATHI|changeClock|Add3~2\,
	sumout => \DATAPATHI|changeClock|Add3~45_sumout\,
	cout => \DATAPATHI|changeClock|Add3~46\);

-- Location: FF_X83_Y9_N44
\DATAPATHI|changeClock|counter3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add3~45_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter3\(4));

-- Location: LABCELL_X83_Y9_N45
\DATAPATHI|changeClock|Add3~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add3~41_sumout\ = SUM(( \DATAPATHI|changeClock|counter3\(5) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~46\ ))
-- \DATAPATHI|changeClock|Add3~42\ = CARRY(( \DATAPATHI|changeClock|counter3\(5) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter3\(5),
	cin => \DATAPATHI|changeClock|Add3~46\,
	sumout => \DATAPATHI|changeClock|Add3~41_sumout\,
	cout => \DATAPATHI|changeClock|Add3~42\);

-- Location: FF_X83_Y9_N47
\DATAPATHI|changeClock|counter3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add3~41_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter3\(5));

-- Location: LABCELL_X83_Y9_N48
\DATAPATHI|changeClock|Add3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add3~37_sumout\ = SUM(( \DATAPATHI|changeClock|counter3\(6) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~42\ ))
-- \DATAPATHI|changeClock|Add3~38\ = CARRY(( \DATAPATHI|changeClock|counter3\(6) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter3\(6),
	cin => \DATAPATHI|changeClock|Add3~42\,
	sumout => \DATAPATHI|changeClock|Add3~37_sumout\,
	cout => \DATAPATHI|changeClock|Add3~38\);

-- Location: FF_X83_Y9_N50
\DATAPATHI|changeClock|counter3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add3~37_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter3\(6));

-- Location: LABCELL_X83_Y9_N51
\DATAPATHI|changeClock|Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add3~33_sumout\ = SUM(( \DATAPATHI|changeClock|counter3\(7) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~38\ ))
-- \DATAPATHI|changeClock|Add3~34\ = CARRY(( \DATAPATHI|changeClock|counter3\(7) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter3\(7),
	cin => \DATAPATHI|changeClock|Add3~38\,
	sumout => \DATAPATHI|changeClock|Add3~33_sumout\,
	cout => \DATAPATHI|changeClock|Add3~34\);

-- Location: FF_X83_Y9_N52
\DATAPATHI|changeClock|counter3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add3~33_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter3\(7));

-- Location: LABCELL_X83_Y9_N54
\DATAPATHI|changeClock|Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add3~29_sumout\ = SUM(( \DATAPATHI|changeClock|counter3\(8) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~34\ ))
-- \DATAPATHI|changeClock|Add3~30\ = CARRY(( \DATAPATHI|changeClock|counter3\(8) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter3\(8),
	cin => \DATAPATHI|changeClock|Add3~34\,
	sumout => \DATAPATHI|changeClock|Add3~29_sumout\,
	cout => \DATAPATHI|changeClock|Add3~30\);

-- Location: FF_X83_Y9_N56
\DATAPATHI|changeClock|counter3[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add3~29_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter3\(8));

-- Location: LABCELL_X83_Y9_N57
\DATAPATHI|changeClock|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add3~25_sumout\ = SUM(( \DATAPATHI|changeClock|counter3\(9) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~30\ ))
-- \DATAPATHI|changeClock|Add3~26\ = CARRY(( \DATAPATHI|changeClock|counter3\(9) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter3\(9),
	cin => \DATAPATHI|changeClock|Add3~30\,
	sumout => \DATAPATHI|changeClock|Add3~25_sumout\,
	cout => \DATAPATHI|changeClock|Add3~26\);

-- Location: FF_X83_Y9_N58
\DATAPATHI|changeClock|counter3[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add3~25_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter3\(9));

-- Location: LABCELL_X83_Y8_N0
\DATAPATHI|changeClock|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add3~21_sumout\ = SUM(( \DATAPATHI|changeClock|counter3\(10) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~26\ ))
-- \DATAPATHI|changeClock|Add3~22\ = CARRY(( \DATAPATHI|changeClock|counter3\(10) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter3\(10),
	cin => \DATAPATHI|changeClock|Add3~26\,
	sumout => \DATAPATHI|changeClock|Add3~21_sumout\,
	cout => \DATAPATHI|changeClock|Add3~22\);

-- Location: FF_X83_Y8_N2
\DATAPATHI|changeClock|counter3[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add3~21_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter3\(10));

-- Location: LABCELL_X83_Y8_N3
\DATAPATHI|changeClock|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add3~17_sumout\ = SUM(( \DATAPATHI|changeClock|counter3\(11) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~22\ ))
-- \DATAPATHI|changeClock|Add3~18\ = CARRY(( \DATAPATHI|changeClock|counter3\(11) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter3\(11),
	cin => \DATAPATHI|changeClock|Add3~22\,
	sumout => \DATAPATHI|changeClock|Add3~17_sumout\,
	cout => \DATAPATHI|changeClock|Add3~18\);

-- Location: FF_X83_Y8_N5
\DATAPATHI|changeClock|counter3[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add3~17_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter3\(11));

-- Location: LABCELL_X83_Y8_N6
\DATAPATHI|changeClock|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add3~13_sumout\ = SUM(( \DATAPATHI|changeClock|counter3\(12) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~18\ ))
-- \DATAPATHI|changeClock|Add3~14\ = CARRY(( \DATAPATHI|changeClock|counter3\(12) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter3\(12),
	cin => \DATAPATHI|changeClock|Add3~18\,
	sumout => \DATAPATHI|changeClock|Add3~13_sumout\,
	cout => \DATAPATHI|changeClock|Add3~14\);

-- Location: FF_X83_Y8_N7
\DATAPATHI|changeClock|counter3[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add3~13_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter3\(12));

-- Location: LABCELL_X83_Y8_N9
\DATAPATHI|changeClock|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add3~9_sumout\ = SUM(( \DATAPATHI|changeClock|counter3\(13) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~14\ ))
-- \DATAPATHI|changeClock|Add3~10\ = CARRY(( \DATAPATHI|changeClock|counter3\(13) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter3\(13),
	cin => \DATAPATHI|changeClock|Add3~14\,
	sumout => \DATAPATHI|changeClock|Add3~9_sumout\,
	cout => \DATAPATHI|changeClock|Add3~10\);

-- Location: FF_X83_Y8_N11
\DATAPATHI|changeClock|counter3[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add3~9_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter3\(13));

-- Location: LABCELL_X83_Y8_N12
\DATAPATHI|changeClock|Add3~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add3~113_sumout\ = SUM(( \DATAPATHI|changeClock|counter3\(14) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~10\ ))
-- \DATAPATHI|changeClock|Add3~114\ = CARRY(( \DATAPATHI|changeClock|counter3\(14) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter3\(14),
	cin => \DATAPATHI|changeClock|Add3~10\,
	sumout => \DATAPATHI|changeClock|Add3~113_sumout\,
	cout => \DATAPATHI|changeClock|Add3~114\);

-- Location: FF_X83_Y8_N13
\DATAPATHI|changeClock|counter3[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add3~113_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter3\(14));

-- Location: LABCELL_X83_Y8_N15
\DATAPATHI|changeClock|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add3~5_sumout\ = SUM(( \DATAPATHI|changeClock|counter3\(15) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~114\ ))
-- \DATAPATHI|changeClock|Add3~6\ = CARRY(( \DATAPATHI|changeClock|counter3\(15) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter3\(15),
	cin => \DATAPATHI|changeClock|Add3~114\,
	sumout => \DATAPATHI|changeClock|Add3~5_sumout\,
	cout => \DATAPATHI|changeClock|Add3~6\);

-- Location: FF_X83_Y8_N17
\DATAPATHI|changeClock|counter3[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add3~5_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter3\(15));

-- Location: LABCELL_X83_Y8_N18
\DATAPATHI|changeClock|Add3~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add3~61_sumout\ = SUM(( \DATAPATHI|changeClock|counter3\(16) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~6\ ))
-- \DATAPATHI|changeClock|Add3~62\ = CARRY(( \DATAPATHI|changeClock|counter3\(16) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter3\(16),
	cin => \DATAPATHI|changeClock|Add3~6\,
	sumout => \DATAPATHI|changeClock|Add3~61_sumout\,
	cout => \DATAPATHI|changeClock|Add3~62\);

-- Location: FF_X83_Y8_N19
\DATAPATHI|changeClock|counter3[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add3~61_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter3\(16));

-- Location: LABCELL_X83_Y8_N21
\DATAPATHI|changeClock|Add3~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add3~109_sumout\ = SUM(( \DATAPATHI|changeClock|counter3\(17) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~62\ ))
-- \DATAPATHI|changeClock|Add3~110\ = CARRY(( \DATAPATHI|changeClock|counter3\(17) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter3\(17),
	cin => \DATAPATHI|changeClock|Add3~62\,
	sumout => \DATAPATHI|changeClock|Add3~109_sumout\,
	cout => \DATAPATHI|changeClock|Add3~110\);

-- Location: FF_X83_Y8_N23
\DATAPATHI|changeClock|counter3[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add3~109_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter3\(17));

-- Location: LABCELL_X83_Y8_N24
\DATAPATHI|changeClock|Add3~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add3~105_sumout\ = SUM(( \DATAPATHI|changeClock|counter3\(18) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~110\ ))
-- \DATAPATHI|changeClock|Add3~106\ = CARRY(( \DATAPATHI|changeClock|counter3\(18) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter3\(18),
	cin => \DATAPATHI|changeClock|Add3~110\,
	sumout => \DATAPATHI|changeClock|Add3~105_sumout\,
	cout => \DATAPATHI|changeClock|Add3~106\);

-- Location: FF_X83_Y8_N26
\DATAPATHI|changeClock|counter3[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add3~105_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter3\(18));

-- Location: LABCELL_X83_Y8_N27
\DATAPATHI|changeClock|Add3~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add3~101_sumout\ = SUM(( \DATAPATHI|changeClock|counter3\(19) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~106\ ))
-- \DATAPATHI|changeClock|Add3~102\ = CARRY(( \DATAPATHI|changeClock|counter3\(19) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter3\(19),
	cin => \DATAPATHI|changeClock|Add3~106\,
	sumout => \DATAPATHI|changeClock|Add3~101_sumout\,
	cout => \DATAPATHI|changeClock|Add3~102\);

-- Location: FF_X83_Y8_N28
\DATAPATHI|changeClock|counter3[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add3~101_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter3\(19));

-- Location: LABCELL_X83_Y8_N30
\DATAPATHI|changeClock|Add3~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add3~97_sumout\ = SUM(( \DATAPATHI|changeClock|counter3\(20) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~102\ ))
-- \DATAPATHI|changeClock|Add3~98\ = CARRY(( \DATAPATHI|changeClock|counter3\(20) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter3\(20),
	cin => \DATAPATHI|changeClock|Add3~102\,
	sumout => \DATAPATHI|changeClock|Add3~97_sumout\,
	cout => \DATAPATHI|changeClock|Add3~98\);

-- Location: FF_X83_Y8_N31
\DATAPATHI|changeClock|counter3[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add3~97_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter3\(20));

-- Location: LABCELL_X83_Y9_N18
\DATAPATHI|changeClock|Equal3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Equal3~4_combout\ = ( \DATAPATHI|changeClock|counter3\(14) & ( !\DATAPATHI|changeClock|counter3\(19) & ( (\DATAPATHI|changeClock|counter3\(18) & (!\DATAPATHI|changeClock|counter3\(17) & \DATAPATHI|changeClock|counter3\(20))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATHI|changeClock|ALT_INV_counter3\(18),
	datac => \DATAPATHI|changeClock|ALT_INV_counter3\(17),
	datad => \DATAPATHI|changeClock|ALT_INV_counter3\(20),
	datae => \DATAPATHI|changeClock|ALT_INV_counter3\(14),
	dataf => \DATAPATHI|changeClock|ALT_INV_counter3\(19),
	combout => \DATAPATHI|changeClock|Equal3~4_combout\);

-- Location: MLABCELL_X82_Y8_N51
\DATAPATHI|changeClock|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Equal3~0_combout\ = ( \DATAPATHI|changeClock|counter3\(13) & ( !\DATAPATHI|changeClock|counter3\(9) & ( (!\DATAPATHI|changeClock|counter3\(11) & (!\DATAPATHI|changeClock|counter3\(12) & (\DATAPATHI|changeClock|counter3\(15) & 
-- !\DATAPATHI|changeClock|counter3\(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|changeClock|ALT_INV_counter3\(11),
	datab => \DATAPATHI|changeClock|ALT_INV_counter3\(12),
	datac => \DATAPATHI|changeClock|ALT_INV_counter3\(15),
	datad => \DATAPATHI|changeClock|ALT_INV_counter3\(10),
	datae => \DATAPATHI|changeClock|ALT_INV_counter3\(13),
	dataf => \DATAPATHI|changeClock|ALT_INV_counter3\(9),
	combout => \DATAPATHI|changeClock|Equal3~0_combout\);

-- Location: LABCELL_X83_Y8_N33
\DATAPATHI|changeClock|Add3~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add3~93_sumout\ = SUM(( \DATAPATHI|changeClock|counter3\(21) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~98\ ))
-- \DATAPATHI|changeClock|Add3~94\ = CARRY(( \DATAPATHI|changeClock|counter3\(21) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter3\(21),
	cin => \DATAPATHI|changeClock|Add3~98\,
	sumout => \DATAPATHI|changeClock|Add3~93_sumout\,
	cout => \DATAPATHI|changeClock|Add3~94\);

-- Location: FF_X83_Y8_N35
\DATAPATHI|changeClock|counter3[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add3~93_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter3\(21));

-- Location: LABCELL_X83_Y8_N36
\DATAPATHI|changeClock|Add3~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add3~89_sumout\ = SUM(( \DATAPATHI|changeClock|counter3\(22) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~94\ ))
-- \DATAPATHI|changeClock|Add3~90\ = CARRY(( \DATAPATHI|changeClock|counter3\(22) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter3\(22),
	cin => \DATAPATHI|changeClock|Add3~94\,
	sumout => \DATAPATHI|changeClock|Add3~89_sumout\,
	cout => \DATAPATHI|changeClock|Add3~90\);

-- Location: FF_X83_Y8_N38
\DATAPATHI|changeClock|counter3[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add3~89_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter3\(22));

-- Location: LABCELL_X83_Y8_N39
\DATAPATHI|changeClock|Add3~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add3~85_sumout\ = SUM(( \DATAPATHI|changeClock|counter3\(23) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~90\ ))
-- \DATAPATHI|changeClock|Add3~86\ = CARRY(( \DATAPATHI|changeClock|counter3\(23) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter3\(23),
	cin => \DATAPATHI|changeClock|Add3~90\,
	sumout => \DATAPATHI|changeClock|Add3~85_sumout\,
	cout => \DATAPATHI|changeClock|Add3~86\);

-- Location: FF_X83_Y8_N41
\DATAPATHI|changeClock|counter3[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add3~85_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter3\(23));

-- Location: LABCELL_X83_Y8_N42
\DATAPATHI|changeClock|Add3~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add3~81_sumout\ = SUM(( \DATAPATHI|changeClock|counter3\(24) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~86\ ))
-- \DATAPATHI|changeClock|Add3~82\ = CARRY(( \DATAPATHI|changeClock|counter3\(24) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter3\(24),
	cin => \DATAPATHI|changeClock|Add3~86\,
	sumout => \DATAPATHI|changeClock|Add3~81_sumout\,
	cout => \DATAPATHI|changeClock|Add3~82\);

-- Location: FF_X83_Y8_N44
\DATAPATHI|changeClock|counter3[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add3~81_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter3\(24));

-- Location: LABCELL_X83_Y8_N45
\DATAPATHI|changeClock|Add3~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add3~77_sumout\ = SUM(( \DATAPATHI|changeClock|counter3\(25) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~82\ ))
-- \DATAPATHI|changeClock|Add3~78\ = CARRY(( \DATAPATHI|changeClock|counter3\(25) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter3\(25),
	cin => \DATAPATHI|changeClock|Add3~82\,
	sumout => \DATAPATHI|changeClock|Add3~77_sumout\,
	cout => \DATAPATHI|changeClock|Add3~78\);

-- Location: FF_X83_Y8_N47
\DATAPATHI|changeClock|counter3[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add3~77_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter3\(25));

-- Location: LABCELL_X83_Y8_N48
\DATAPATHI|changeClock|Add3~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add3~73_sumout\ = SUM(( \DATAPATHI|changeClock|counter3\(26) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~78\ ))
-- \DATAPATHI|changeClock|Add3~74\ = CARRY(( \DATAPATHI|changeClock|counter3\(26) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter3\(26),
	cin => \DATAPATHI|changeClock|Add3~78\,
	sumout => \DATAPATHI|changeClock|Add3~73_sumout\,
	cout => \DATAPATHI|changeClock|Add3~74\);

-- Location: FF_X83_Y8_N50
\DATAPATHI|changeClock|counter3[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add3~73_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter3\(26));

-- Location: MLABCELL_X82_Y8_N57
\DATAPATHI|changeClock|Equal3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Equal3~3_combout\ = ( \DATAPATHI|changeClock|counter3\(26) & ( \DATAPATHI|changeClock|counter3\(23) & ( (\DATAPATHI|changeClock|counter3\(21) & (\DATAPATHI|changeClock|counter3\(24) & (\DATAPATHI|changeClock|counter3\(22) & 
-- !\DATAPATHI|changeClock|counter3\(25)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|changeClock|ALT_INV_counter3\(21),
	datab => \DATAPATHI|changeClock|ALT_INV_counter3\(24),
	datac => \DATAPATHI|changeClock|ALT_INV_counter3\(22),
	datad => \DATAPATHI|changeClock|ALT_INV_counter3\(25),
	datae => \DATAPATHI|changeClock|ALT_INV_counter3\(26),
	dataf => \DATAPATHI|changeClock|ALT_INV_counter3\(23),
	combout => \DATAPATHI|changeClock|Equal3~3_combout\);

-- Location: LABCELL_X83_Y8_N51
\DATAPATHI|changeClock|Add3~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add3~69_sumout\ = SUM(( \DATAPATHI|changeClock|counter3\(27) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~74\ ))
-- \DATAPATHI|changeClock|Add3~70\ = CARRY(( \DATAPATHI|changeClock|counter3\(27) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter3\(27),
	cin => \DATAPATHI|changeClock|Add3~74\,
	sumout => \DATAPATHI|changeClock|Add3~69_sumout\,
	cout => \DATAPATHI|changeClock|Add3~70\);

-- Location: FF_X83_Y8_N52
\DATAPATHI|changeClock|counter3[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add3~69_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter3\(27));

-- Location: LABCELL_X83_Y8_N54
\DATAPATHI|changeClock|Add3~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add3~65_sumout\ = SUM(( \DATAPATHI|changeClock|counter3\(28) ) + ( GND ) + ( \DATAPATHI|changeClock|Add3~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter3\(28),
	cin => \DATAPATHI|changeClock|Add3~70\,
	sumout => \DATAPATHI|changeClock|Add3~65_sumout\);

-- Location: FF_X83_Y8_N55
\DATAPATHI|changeClock|counter3[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add3~65_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter3\(28));

-- Location: LABCELL_X83_Y9_N0
\DATAPATHI|changeClock|Equal3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Equal3~2_combout\ = ( \DATAPATHI|changeClock|counter3\(16) & ( \DATAPATHI|changeClock|counter3\(0) & ( (\DATAPATHI|changeClock|counter3\(2) & (!\DATAPATHI|changeClock|counter3\(27) & (\DATAPATHI|changeClock|counter3\(1) & 
-- !\DATAPATHI|changeClock|counter3\(28)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|changeClock|ALT_INV_counter3\(2),
	datab => \DATAPATHI|changeClock|ALT_INV_counter3\(27),
	datac => \DATAPATHI|changeClock|ALT_INV_counter3\(1),
	datad => \DATAPATHI|changeClock|ALT_INV_counter3\(28),
	datae => \DATAPATHI|changeClock|ALT_INV_counter3\(16),
	dataf => \DATAPATHI|changeClock|ALT_INV_counter3\(0),
	combout => \DATAPATHI|changeClock|Equal3~2_combout\);

-- Location: LABCELL_X83_Y9_N6
\DATAPATHI|changeClock|Equal3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Equal3~1_combout\ = ( \DATAPATHI|changeClock|counter3\(7) & ( \DATAPATHI|changeClock|counter3\(6) & ( (\DATAPATHI|changeClock|counter3\(4) & (!\DATAPATHI|changeClock|counter3\(8) & \DATAPATHI|changeClock|counter3\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATHI|changeClock|ALT_INV_counter3\(4),
	datac => \DATAPATHI|changeClock|ALT_INV_counter3\(8),
	datad => \DATAPATHI|changeClock|ALT_INV_counter3\(5),
	datae => \DATAPATHI|changeClock|ALT_INV_counter3\(7),
	dataf => \DATAPATHI|changeClock|ALT_INV_counter3\(6),
	combout => \DATAPATHI|changeClock|Equal3~1_combout\);

-- Location: LABCELL_X83_Y9_N12
\DATAPATHI|changeClock|Equal3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Equal3~5_combout\ = ( \DATAPATHI|changeClock|Equal3~2_combout\ & ( \DATAPATHI|changeClock|Equal3~1_combout\ & ( (\DATAPATHI|changeClock|Equal3~4_combout\ & (\DATAPATHI|changeClock|counter3\(3) & 
-- (\DATAPATHI|changeClock|Equal3~0_combout\ & \DATAPATHI|changeClock|Equal3~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|changeClock|ALT_INV_Equal3~4_combout\,
	datab => \DATAPATHI|changeClock|ALT_INV_counter3\(3),
	datac => \DATAPATHI|changeClock|ALT_INV_Equal3~0_combout\,
	datad => \DATAPATHI|changeClock|ALT_INV_Equal3~3_combout\,
	datae => \DATAPATHI|changeClock|ALT_INV_Equal3~2_combout\,
	dataf => \DATAPATHI|changeClock|ALT_INV_Equal3~1_combout\,
	combout => \DATAPATHI|changeClock|Equal3~5_combout\);

-- Location: FF_X83_Y9_N13
\DATAPATHI|changeClock|clock3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Equal3~5_combout\,
	ena => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|clock3~q\);

-- Location: MLABCELL_X84_Y7_N30
\DATAPATHI|changeClock|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add0~33_sumout\ = SUM(( \DATAPATHI|changeClock|counter0\(0) ) + ( VCC ) + ( !VCC ))
-- \DATAPATHI|changeClock|Add0~34\ = CARRY(( \DATAPATHI|changeClock|counter0\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter0\(0),
	cin => GND,
	sumout => \DATAPATHI|changeClock|Add0~33_sumout\,
	cout => \DATAPATHI|changeClock|Add0~34\);

-- Location: FF_X84_Y7_N31
\DATAPATHI|changeClock|counter0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add0~33_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter0\(0));

-- Location: MLABCELL_X84_Y7_N33
\DATAPATHI|changeClock|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add0~37_sumout\ = SUM(( \DATAPATHI|changeClock|counter0\(1) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~34\ ))
-- \DATAPATHI|changeClock|Add0~38\ = CARRY(( \DATAPATHI|changeClock|counter0\(1) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter0\(1),
	cin => \DATAPATHI|changeClock|Add0~34\,
	sumout => \DATAPATHI|changeClock|Add0~37_sumout\,
	cout => \DATAPATHI|changeClock|Add0~38\);

-- Location: FF_X84_Y7_N35
\DATAPATHI|changeClock|counter0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add0~37_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter0\(1));

-- Location: MLABCELL_X84_Y7_N36
\DATAPATHI|changeClock|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add0~41_sumout\ = SUM(( \DATAPATHI|changeClock|counter0\(2) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~38\ ))
-- \DATAPATHI|changeClock|Add0~42\ = CARRY(( \DATAPATHI|changeClock|counter0\(2) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter0\(2),
	cin => \DATAPATHI|changeClock|Add0~38\,
	sumout => \DATAPATHI|changeClock|Add0~41_sumout\,
	cout => \DATAPATHI|changeClock|Add0~42\);

-- Location: FF_X84_Y7_N37
\DATAPATHI|changeClock|counter0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add0~41_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter0\(2));

-- Location: MLABCELL_X84_Y7_N39
\DATAPATHI|changeClock|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add0~45_sumout\ = SUM(( \DATAPATHI|changeClock|counter0\(3) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~42\ ))
-- \DATAPATHI|changeClock|Add0~46\ = CARRY(( \DATAPATHI|changeClock|counter0\(3) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter0\(3),
	cin => \DATAPATHI|changeClock|Add0~42\,
	sumout => \DATAPATHI|changeClock|Add0~45_sumout\,
	cout => \DATAPATHI|changeClock|Add0~46\);

-- Location: FF_X84_Y7_N40
\DATAPATHI|changeClock|counter0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add0~45_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter0\(3));

-- Location: MLABCELL_X84_Y7_N42
\DATAPATHI|changeClock|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add0~1_sumout\ = SUM(( \DATAPATHI|changeClock|counter0\(4) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~46\ ))
-- \DATAPATHI|changeClock|Add0~2\ = CARRY(( \DATAPATHI|changeClock|counter0\(4) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter0\(4),
	cin => \DATAPATHI|changeClock|Add0~46\,
	sumout => \DATAPATHI|changeClock|Add0~1_sumout\,
	cout => \DATAPATHI|changeClock|Add0~2\);

-- Location: FF_X84_Y7_N43
\DATAPATHI|changeClock|counter0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add0~1_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter0\(4));

-- Location: MLABCELL_X84_Y7_N45
\DATAPATHI|changeClock|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add0~49_sumout\ = SUM(( \DATAPATHI|changeClock|counter0\(5) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~2\ ))
-- \DATAPATHI|changeClock|Add0~50\ = CARRY(( \DATAPATHI|changeClock|counter0\(5) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter0\(5),
	cin => \DATAPATHI|changeClock|Add0~2\,
	sumout => \DATAPATHI|changeClock|Add0~49_sumout\,
	cout => \DATAPATHI|changeClock|Add0~50\);

-- Location: FF_X84_Y7_N47
\DATAPATHI|changeClock|counter0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add0~49_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter0\(5));

-- Location: MLABCELL_X84_Y7_N48
\DATAPATHI|changeClock|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add0~53_sumout\ = SUM(( \DATAPATHI|changeClock|counter0\(6) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~50\ ))
-- \DATAPATHI|changeClock|Add0~54\ = CARRY(( \DATAPATHI|changeClock|counter0\(6) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter0\(6),
	cin => \DATAPATHI|changeClock|Add0~50\,
	sumout => \DATAPATHI|changeClock|Add0~53_sumout\,
	cout => \DATAPATHI|changeClock|Add0~54\);

-- Location: FF_X84_Y7_N50
\DATAPATHI|changeClock|counter0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add0~53_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter0\(6));

-- Location: MLABCELL_X84_Y7_N51
\DATAPATHI|changeClock|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add0~57_sumout\ = SUM(( \DATAPATHI|changeClock|counter0\(7) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~54\ ))
-- \DATAPATHI|changeClock|Add0~58\ = CARRY(( \DATAPATHI|changeClock|counter0\(7) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter0\(7),
	cin => \DATAPATHI|changeClock|Add0~54\,
	sumout => \DATAPATHI|changeClock|Add0~57_sumout\,
	cout => \DATAPATHI|changeClock|Add0~58\);

-- Location: FF_X84_Y7_N53
\DATAPATHI|changeClock|counter0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add0~57_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter0\(7));

-- Location: MLABCELL_X84_Y7_N54
\DATAPATHI|changeClock|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add0~61_sumout\ = SUM(( \DATAPATHI|changeClock|counter0\(8) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~58\ ))
-- \DATAPATHI|changeClock|Add0~62\ = CARRY(( \DATAPATHI|changeClock|counter0\(8) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter0\(8),
	cin => \DATAPATHI|changeClock|Add0~58\,
	sumout => \DATAPATHI|changeClock|Add0~61_sumout\,
	cout => \DATAPATHI|changeClock|Add0~62\);

-- Location: FF_X84_Y7_N56
\DATAPATHI|changeClock|counter0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add0~61_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter0\(8));

-- Location: MLABCELL_X84_Y7_N57
\DATAPATHI|changeClock|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add0~65_sumout\ = SUM(( \DATAPATHI|changeClock|counter0\(9) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~62\ ))
-- \DATAPATHI|changeClock|Add0~66\ = CARRY(( \DATAPATHI|changeClock|counter0\(9) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter0\(9),
	cin => \DATAPATHI|changeClock|Add0~62\,
	sumout => \DATAPATHI|changeClock|Add0~65_sumout\,
	cout => \DATAPATHI|changeClock|Add0~66\);

-- Location: FF_X84_Y7_N59
\DATAPATHI|changeClock|counter0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add0~65_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter0\(9));

-- Location: MLABCELL_X84_Y6_N0
\DATAPATHI|changeClock|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add0~69_sumout\ = SUM(( \DATAPATHI|changeClock|counter0\(10) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~66\ ))
-- \DATAPATHI|changeClock|Add0~70\ = CARRY(( \DATAPATHI|changeClock|counter0\(10) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter0\(10),
	cin => \DATAPATHI|changeClock|Add0~66\,
	sumout => \DATAPATHI|changeClock|Add0~69_sumout\,
	cout => \DATAPATHI|changeClock|Add0~70\);

-- Location: FF_X84_Y6_N2
\DATAPATHI|changeClock|counter0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add0~69_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter0\(10));

-- Location: MLABCELL_X84_Y6_N3
\DATAPATHI|changeClock|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add0~73_sumout\ = SUM(( \DATAPATHI|changeClock|counter0\(11) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~70\ ))
-- \DATAPATHI|changeClock|Add0~74\ = CARRY(( \DATAPATHI|changeClock|counter0\(11) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter0\(11),
	cin => \DATAPATHI|changeClock|Add0~70\,
	sumout => \DATAPATHI|changeClock|Add0~73_sumout\,
	cout => \DATAPATHI|changeClock|Add0~74\);

-- Location: FF_X84_Y6_N4
\DATAPATHI|changeClock|counter0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add0~73_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter0\(11));

-- Location: MLABCELL_X84_Y6_N6
\DATAPATHI|changeClock|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add0~77_sumout\ = SUM(( \DATAPATHI|changeClock|counter0\(12) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~74\ ))
-- \DATAPATHI|changeClock|Add0~78\ = CARRY(( \DATAPATHI|changeClock|counter0\(12) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter0\(12),
	cin => \DATAPATHI|changeClock|Add0~74\,
	sumout => \DATAPATHI|changeClock|Add0~77_sumout\,
	cout => \DATAPATHI|changeClock|Add0~78\);

-- Location: FF_X84_Y6_N7
\DATAPATHI|changeClock|counter0[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add0~77_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter0\(12));

-- Location: MLABCELL_X84_Y6_N9
\DATAPATHI|changeClock|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add0~81_sumout\ = SUM(( \DATAPATHI|changeClock|counter0\(13) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~78\ ))
-- \DATAPATHI|changeClock|Add0~82\ = CARRY(( \DATAPATHI|changeClock|counter0\(13) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter0\(13),
	cin => \DATAPATHI|changeClock|Add0~78\,
	sumout => \DATAPATHI|changeClock|Add0~81_sumout\,
	cout => \DATAPATHI|changeClock|Add0~82\);

-- Location: FF_X84_Y6_N10
\DATAPATHI|changeClock|counter0[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add0~81_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter0\(13));

-- Location: MLABCELL_X84_Y6_N12
\DATAPATHI|changeClock|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add0~85_sumout\ = SUM(( \DATAPATHI|changeClock|counter0\(14) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~82\ ))
-- \DATAPATHI|changeClock|Add0~86\ = CARRY(( \DATAPATHI|changeClock|counter0\(14) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter0\(14),
	cin => \DATAPATHI|changeClock|Add0~82\,
	sumout => \DATAPATHI|changeClock|Add0~85_sumout\,
	cout => \DATAPATHI|changeClock|Add0~86\);

-- Location: FF_X84_Y6_N13
\DATAPATHI|changeClock|counter0[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add0~85_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter0\(14));

-- Location: MLABCELL_X84_Y6_N15
\DATAPATHI|changeClock|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add0~29_sumout\ = SUM(( \DATAPATHI|changeClock|counter0\(15) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~86\ ))
-- \DATAPATHI|changeClock|Add0~30\ = CARRY(( \DATAPATHI|changeClock|counter0\(15) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter0\(15),
	cin => \DATAPATHI|changeClock|Add0~86\,
	sumout => \DATAPATHI|changeClock|Add0~29_sumout\,
	cout => \DATAPATHI|changeClock|Add0~30\);

-- Location: FF_X84_Y6_N16
\DATAPATHI|changeClock|counter0[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add0~29_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter0\(15));

-- Location: LABCELL_X85_Y6_N0
\DATAPATHI|changeClock|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Equal0~1_combout\ = ( \DATAPATHI|changeClock|counter0\(0) & ( !\DATAPATHI|changeClock|counter0\(15) & ( (\DATAPATHI|changeClock|counter0\(1) & (\DATAPATHI|changeClock|counter0\(2) & \DATAPATHI|changeClock|counter0\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|changeClock|ALT_INV_counter0\(1),
	datac => \DATAPATHI|changeClock|ALT_INV_counter0\(2),
	datad => \DATAPATHI|changeClock|ALT_INV_counter0\(3),
	datae => \DATAPATHI|changeClock|ALT_INV_counter0\(0),
	dataf => \DATAPATHI|changeClock|ALT_INV_counter0\(15),
	combout => \DATAPATHI|changeClock|Equal0~1_combout\);

-- Location: MLABCELL_X84_Y6_N18
\DATAPATHI|changeClock|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add0~113_sumout\ = SUM(( \DATAPATHI|changeClock|counter0\(16) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~30\ ))
-- \DATAPATHI|changeClock|Add0~114\ = CARRY(( \DATAPATHI|changeClock|counter0\(16) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter0\(16),
	cin => \DATAPATHI|changeClock|Add0~30\,
	sumout => \DATAPATHI|changeClock|Add0~113_sumout\,
	cout => \DATAPATHI|changeClock|Add0~114\);

-- Location: FF_X84_Y6_N19
\DATAPATHI|changeClock|counter0[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add0~113_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter0\(16));

-- Location: MLABCELL_X84_Y6_N21
\DATAPATHI|changeClock|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add0~89_sumout\ = SUM(( \DATAPATHI|changeClock|counter0\(17) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~114\ ))
-- \DATAPATHI|changeClock|Add0~90\ = CARRY(( \DATAPATHI|changeClock|counter0\(17) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter0\(17),
	cin => \DATAPATHI|changeClock|Add0~114\,
	sumout => \DATAPATHI|changeClock|Add0~89_sumout\,
	cout => \DATAPATHI|changeClock|Add0~90\);

-- Location: FF_X84_Y6_N22
\DATAPATHI|changeClock|counter0[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add0~89_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter0\(17));

-- Location: MLABCELL_X84_Y6_N24
\DATAPATHI|changeClock|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add0~93_sumout\ = SUM(( \DATAPATHI|changeClock|counter0\(18) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~90\ ))
-- \DATAPATHI|changeClock|Add0~94\ = CARRY(( \DATAPATHI|changeClock|counter0\(18) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter0\(18),
	cin => \DATAPATHI|changeClock|Add0~90\,
	sumout => \DATAPATHI|changeClock|Add0~93_sumout\,
	cout => \DATAPATHI|changeClock|Add0~94\);

-- Location: FF_X84_Y6_N25
\DATAPATHI|changeClock|counter0[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add0~93_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter0\(18));

-- Location: MLABCELL_X84_Y6_N27
\DATAPATHI|changeClock|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add0~101_sumout\ = SUM(( \DATAPATHI|changeClock|counter0\(19) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~94\ ))
-- \DATAPATHI|changeClock|Add0~102\ = CARRY(( \DATAPATHI|changeClock|counter0\(19) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter0\(19),
	cin => \DATAPATHI|changeClock|Add0~94\,
	sumout => \DATAPATHI|changeClock|Add0~101_sumout\,
	cout => \DATAPATHI|changeClock|Add0~102\);

-- Location: FF_X84_Y6_N28
\DATAPATHI|changeClock|counter0[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add0~101_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter0\(19));

-- Location: MLABCELL_X84_Y6_N30
\DATAPATHI|changeClock|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add0~105_sumout\ = SUM(( \DATAPATHI|changeClock|counter0\(20) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~102\ ))
-- \DATAPATHI|changeClock|Add0~106\ = CARRY(( \DATAPATHI|changeClock|counter0\(20) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter0\(20),
	cin => \DATAPATHI|changeClock|Add0~102\,
	sumout => \DATAPATHI|changeClock|Add0~105_sumout\,
	cout => \DATAPATHI|changeClock|Add0~106\);

-- Location: FF_X84_Y6_N31
\DATAPATHI|changeClock|counter0[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add0~105_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter0\(20));

-- Location: MLABCELL_X84_Y6_N33
\DATAPATHI|changeClock|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add0~109_sumout\ = SUM(( \DATAPATHI|changeClock|counter0\(21) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~106\ ))
-- \DATAPATHI|changeClock|Add0~110\ = CARRY(( \DATAPATHI|changeClock|counter0\(21) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter0\(21),
	cin => \DATAPATHI|changeClock|Add0~106\,
	sumout => \DATAPATHI|changeClock|Add0~109_sumout\,
	cout => \DATAPATHI|changeClock|Add0~110\);

-- Location: FF_X84_Y6_N35
\DATAPATHI|changeClock|counter0[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add0~109_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter0\(21));

-- Location: MLABCELL_X84_Y6_N36
\DATAPATHI|changeClock|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add0~97_sumout\ = SUM(( \DATAPATHI|changeClock|counter0\(22) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~110\ ))
-- \DATAPATHI|changeClock|Add0~98\ = CARRY(( \DATAPATHI|changeClock|counter0\(22) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter0\(22),
	cin => \DATAPATHI|changeClock|Add0~110\,
	sumout => \DATAPATHI|changeClock|Add0~97_sumout\,
	cout => \DATAPATHI|changeClock|Add0~98\);

-- Location: FF_X84_Y6_N37
\DATAPATHI|changeClock|counter0[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add0~97_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter0\(22));

-- Location: LABCELL_X85_Y6_N36
\DATAPATHI|changeClock|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Equal0~4_combout\ = ( \DATAPATHI|changeClock|counter0\(19) & ( !\DATAPATHI|changeClock|counter0\(21) & ( (\DATAPATHI|changeClock|counter0\(22) & (\DATAPATHI|changeClock|counter0\(16) & !\DATAPATHI|changeClock|counter0\(20))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|changeClock|ALT_INV_counter0\(22),
	datab => \DATAPATHI|changeClock|ALT_INV_counter0\(16),
	datac => \DATAPATHI|changeClock|ALT_INV_counter0\(20),
	datae => \DATAPATHI|changeClock|ALT_INV_counter0\(19),
	dataf => \DATAPATHI|changeClock|ALT_INV_counter0\(21),
	combout => \DATAPATHI|changeClock|Equal0~4_combout\);

-- Location: LABCELL_X85_Y6_N57
\DATAPATHI|changeClock|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Equal0~3_combout\ = ( !\DATAPATHI|changeClock|counter0\(12) & ( \DATAPATHI|changeClock|counter0\(18) & ( (\DATAPATHI|changeClock|counter0\(14) & (\DATAPATHI|changeClock|counter0\(13) & (!\DATAPATHI|changeClock|counter0\(11) & 
-- !\DATAPATHI|changeClock|counter0\(17)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|changeClock|ALT_INV_counter0\(14),
	datab => \DATAPATHI|changeClock|ALT_INV_counter0\(13),
	datac => \DATAPATHI|changeClock|ALT_INV_counter0\(11),
	datad => \DATAPATHI|changeClock|ALT_INV_counter0\(17),
	datae => \DATAPATHI|changeClock|ALT_INV_counter0\(12),
	dataf => \DATAPATHI|changeClock|ALT_INV_counter0\(18),
	combout => \DATAPATHI|changeClock|Equal0~3_combout\);

-- Location: MLABCELL_X84_Y7_N0
\DATAPATHI|changeClock|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Equal0~2_combout\ = ( !\DATAPATHI|changeClock|counter0\(8) & ( \DATAPATHI|changeClock|counter0\(10) & ( (\DATAPATHI|changeClock|counter0\(6) & (!\DATAPATHI|changeClock|counter0\(9) & (\DATAPATHI|changeClock|counter0\(7) & 
-- \DATAPATHI|changeClock|counter0\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|changeClock|ALT_INV_counter0\(6),
	datab => \DATAPATHI|changeClock|ALT_INV_counter0\(9),
	datac => \DATAPATHI|changeClock|ALT_INV_counter0\(7),
	datad => \DATAPATHI|changeClock|ALT_INV_counter0\(5),
	datae => \DATAPATHI|changeClock|ALT_INV_counter0\(8),
	dataf => \DATAPATHI|changeClock|ALT_INV_counter0\(10),
	combout => \DATAPATHI|changeClock|Equal0~2_combout\);

-- Location: MLABCELL_X84_Y6_N39
\DATAPATHI|changeClock|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add0~25_sumout\ = SUM(( \DATAPATHI|changeClock|counter0\(23) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~98\ ))
-- \DATAPATHI|changeClock|Add0~26\ = CARRY(( \DATAPATHI|changeClock|counter0\(23) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter0\(23),
	cin => \DATAPATHI|changeClock|Add0~98\,
	sumout => \DATAPATHI|changeClock|Add0~25_sumout\,
	cout => \DATAPATHI|changeClock|Add0~26\);

-- Location: FF_X84_Y6_N40
\DATAPATHI|changeClock|counter0[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add0~25_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter0\(23));

-- Location: MLABCELL_X84_Y6_N42
\DATAPATHI|changeClock|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add0~21_sumout\ = SUM(( \DATAPATHI|changeClock|counter0\(24) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~26\ ))
-- \DATAPATHI|changeClock|Add0~22\ = CARRY(( \DATAPATHI|changeClock|counter0\(24) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter0\(24),
	cin => \DATAPATHI|changeClock|Add0~26\,
	sumout => \DATAPATHI|changeClock|Add0~21_sumout\,
	cout => \DATAPATHI|changeClock|Add0~22\);

-- Location: FF_X84_Y6_N43
\DATAPATHI|changeClock|counter0[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add0~21_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter0\(24));

-- Location: MLABCELL_X84_Y6_N45
\DATAPATHI|changeClock|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add0~17_sumout\ = SUM(( \DATAPATHI|changeClock|counter0\(25) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~22\ ))
-- \DATAPATHI|changeClock|Add0~18\ = CARRY(( \DATAPATHI|changeClock|counter0\(25) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter0\(25),
	cin => \DATAPATHI|changeClock|Add0~22\,
	sumout => \DATAPATHI|changeClock|Add0~17_sumout\,
	cout => \DATAPATHI|changeClock|Add0~18\);

-- Location: FF_X84_Y6_N46
\DATAPATHI|changeClock|counter0[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add0~17_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter0\(25));

-- Location: MLABCELL_X84_Y6_N48
\DATAPATHI|changeClock|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add0~13_sumout\ = SUM(( \DATAPATHI|changeClock|counter0\(26) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~18\ ))
-- \DATAPATHI|changeClock|Add0~14\ = CARRY(( \DATAPATHI|changeClock|counter0\(26) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter0\(26),
	cin => \DATAPATHI|changeClock|Add0~18\,
	sumout => \DATAPATHI|changeClock|Add0~13_sumout\,
	cout => \DATAPATHI|changeClock|Add0~14\);

-- Location: FF_X84_Y6_N49
\DATAPATHI|changeClock|counter0[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add0~13_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter0\(26));

-- Location: MLABCELL_X84_Y6_N51
\DATAPATHI|changeClock|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add0~9_sumout\ = SUM(( \DATAPATHI|changeClock|counter0\(27) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~14\ ))
-- \DATAPATHI|changeClock|Add0~10\ = CARRY(( \DATAPATHI|changeClock|counter0\(27) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter0\(27),
	cin => \DATAPATHI|changeClock|Add0~14\,
	sumout => \DATAPATHI|changeClock|Add0~9_sumout\,
	cout => \DATAPATHI|changeClock|Add0~10\);

-- Location: FF_X84_Y6_N52
\DATAPATHI|changeClock|counter0[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add0~9_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter0\(27));

-- Location: MLABCELL_X84_Y6_N54
\DATAPATHI|changeClock|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Add0~5_sumout\ = SUM(( \DATAPATHI|changeClock|counter0\(28) ) + ( GND ) + ( \DATAPATHI|changeClock|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATHI|changeClock|ALT_INV_counter0\(28),
	cin => \DATAPATHI|changeClock|Add0~10\,
	sumout => \DATAPATHI|changeClock|Add0~5_sumout\);

-- Location: FF_X84_Y6_N55
\DATAPATHI|changeClock|counter0[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Add0~5_sumout\,
	clrn => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	sclr => \DATAPATHI|changeClock|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|counter0\(28));

-- Location: LABCELL_X85_Y6_N30
\DATAPATHI|changeClock|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Equal0~0_combout\ = ( \DATAPATHI|changeClock|counter0\(23) & ( \DATAPATHI|changeClock|counter0\(28) & ( (\DATAPATHI|changeClock|counter0\(27) & (\DATAPATHI|changeClock|counter0\(24) & (!\DATAPATHI|changeClock|counter0\(25) & 
-- \DATAPATHI|changeClock|counter0\(26)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|changeClock|ALT_INV_counter0\(27),
	datab => \DATAPATHI|changeClock|ALT_INV_counter0\(24),
	datac => \DATAPATHI|changeClock|ALT_INV_counter0\(25),
	datad => \DATAPATHI|changeClock|ALT_INV_counter0\(26),
	datae => \DATAPATHI|changeClock|ALT_INV_counter0\(23),
	dataf => \DATAPATHI|changeClock|ALT_INV_counter0\(28),
	combout => \DATAPATHI|changeClock|Equal0~0_combout\);

-- Location: LABCELL_X85_Y6_N24
\DATAPATHI|changeClock|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|Equal0~5_combout\ = ( \DATAPATHI|changeClock|Equal0~2_combout\ & ( \DATAPATHI|changeClock|Equal0~0_combout\ & ( (\DATAPATHI|changeClock|Equal0~1_combout\ & (\DATAPATHI|changeClock|counter0\(4) & 
-- (\DATAPATHI|changeClock|Equal0~4_combout\ & \DATAPATHI|changeClock|Equal0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|changeClock|ALT_INV_Equal0~1_combout\,
	datab => \DATAPATHI|changeClock|ALT_INV_counter0\(4),
	datac => \DATAPATHI|changeClock|ALT_INV_Equal0~4_combout\,
	datad => \DATAPATHI|changeClock|ALT_INV_Equal0~3_combout\,
	datae => \DATAPATHI|changeClock|ALT_INV_Equal0~2_combout\,
	dataf => \DATAPATHI|changeClock|ALT_INV_Equal0~0_combout\,
	combout => \DATAPATHI|changeClock|Equal0~5_combout\);

-- Location: FF_X85_Y6_N25
\DATAPATHI|changeClock|clock0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DATAPATHI|changeClock|Equal0~5_combout\,
	ena => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|clock0~q\);

-- Location: IOIBUF_X4_Y0_N18
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LABCELL_X88_Y7_N6
\DATAPATHI|gameLevel[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|gameLevel\(0) = ( \DATAPATHI|gameLevel\(0) & ( (!\DATAPATHI|gameROM[0]~0_combout\) # (\SW[8]~input_o\) ) ) # ( !\DATAPATHI|gameLevel\(0) & ( (\DATAPATHI|gameROM[0]~0_combout\ & \SW[8]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATHI|ALT_INV_gameROM[0]~0_combout\,
	datad => \ALT_INV_SW[8]~input_o\,
	dataf => \DATAPATHI|ALT_INV_gameLevel\(0),
	combout => \DATAPATHI|gameLevel\(0));

-- Location: MLABCELL_X87_Y7_N39
\DATAPATHI|changeClock|clockOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|changeClock|clockOut~0_combout\ = ( \DATAPATHI|changeClock|clock0~q\ & ( \DATAPATHI|gameLevel\(0) & ( (!\DATAPATHI|gameLevel\(1) & (\DATAPATHI|changeClock|clock1~q\)) # (\DATAPATHI|gameLevel\(1) & ((\DATAPATHI|changeClock|clock3~q\))) ) ) ) # ( 
-- !\DATAPATHI|changeClock|clock0~q\ & ( \DATAPATHI|gameLevel\(0) & ( (!\DATAPATHI|gameLevel\(1) & (\DATAPATHI|changeClock|clock1~q\)) # (\DATAPATHI|gameLevel\(1) & ((\DATAPATHI|changeClock|clock3~q\))) ) ) ) # ( \DATAPATHI|changeClock|clock0~q\ & ( 
-- !\DATAPATHI|gameLevel\(0) & ( (!\DATAPATHI|gameLevel\(1)) # (\DATAPATHI|changeClock|clock2~q\) ) ) ) # ( !\DATAPATHI|changeClock|clock0~q\ & ( !\DATAPATHI|gameLevel\(0) & ( (\DATAPATHI|gameLevel\(1) & \DATAPATHI|changeClock|clock2~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|changeClock|ALT_INV_clock1~q\,
	datab => \DATAPATHI|ALT_INV_gameLevel\(1),
	datac => \DATAPATHI|changeClock|ALT_INV_clock2~q\,
	datad => \DATAPATHI|changeClock|ALT_INV_clock3~q\,
	datae => \DATAPATHI|changeClock|ALT_INV_clock0~q\,
	dataf => \DATAPATHI|ALT_INV_gameLevel\(0),
	combout => \DATAPATHI|changeClock|clockOut~0_combout\);

-- Location: FF_X88_Y7_N56
\DATAPATHI|changeClock|clockOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \DATAPATHI|changeClock|clockOut~0_combout\,
	sload => VCC,
	ena => \DATAPATHI|ALT_INV_resetGC~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|changeClock|clockOut~q\);

-- Location: LABCELL_X88_Y8_N36
\DATAPATHI|ledsSig[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|ledsSig[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \DATAPATHI|ledsSig[0]~feeder_combout\);

-- Location: LABCELL_X88_Y7_N18
\DATAPATHI|ledsSig[9]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|ledsSig[9]~0_combout\ = ( \DATAPATHI|playingSig~2_combout\ & ( (!\CONTROLLER|resetSig~q\) # (\CONTROLLER|actualS.Setup~q\) ) ) # ( !\DATAPATHI|playingSig~2_combout\ & ( ((!\CONTROLLER|resetSig~q\) # ((\CONTROLLER|actualS.Game~q\ & 
-- !\DATAPATHI|showingResult~q\))) # (\CONTROLLER|actualS.Setup~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111110011111101111111001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLLER|ALT_INV_actualS.Game~q\,
	datab => \CONTROLLER|ALT_INV_actualS.Setup~q\,
	datac => \CONTROLLER|ALT_INV_resetSig~q\,
	datad => \DATAPATHI|ALT_INV_showingResult~q\,
	dataf => \DATAPATHI|ALT_INV_playingSig~2_combout\,
	combout => \DATAPATHI|ledsSig[9]~0_combout\);

-- Location: IOIBUF_X16_Y0_N18
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: MLABCELL_X87_Y8_N45
\DATAPATHI|gameROM[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|gameROM\(0) = ( \DATAPATHI|gameROM[0]~0_combout\ & ( \SW[0]~input_o\ ) ) # ( !\DATAPATHI|gameROM[0]~0_combout\ & ( \DATAPATHI|gameROM\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \DATAPATHI|ALT_INV_gameROM\(0),
	dataf => \DATAPATHI|ALT_INV_gameROM[0]~0_combout\,
	combout => \DATAPATHI|gameROM\(0));

-- Location: IOIBUF_X16_Y0_N1
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LABCELL_X88_Y7_N0
\DATAPATHI|gameROM[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|gameROM\(1) = ( \DATAPATHI|gameROM[0]~0_combout\ & ( \SW[1]~input_o\ ) ) # ( !\DATAPATHI|gameROM[0]~0_combout\ & ( \DATAPATHI|gameROM\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \DATAPATHI|ALT_INV_gameROM\(1),
	dataf => \DATAPATHI|ALT_INV_gameROM[0]~0_combout\,
	combout => \DATAPATHI|gameROM\(1));

-- Location: MLABCELL_X87_Y8_N15
\DATAPATHI|currentHex[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|currentHex[5]~5_combout\ = ( \DATAPATHI|gameROM\(0) & ( \DATAPATHI|gameROM\(1) & ( (!\DATAPATHI|ROMin\(2) & ((!\DATAPATHI|ROMin\(0) & (!\DATAPATHI|ROMin\(1) & !\DATAPATHI|ROMin\(3))) # (\DATAPATHI|ROMin\(0) & (!\DATAPATHI|ROMin\(1) $ 
-- (!\DATAPATHI|ROMin\(3)))))) # (\DATAPATHI|ROMin\(2) & (\DATAPATHI|ROMin\(0) & (!\DATAPATHI|ROMin\(1) & !\DATAPATHI|ROMin\(3)))) ) ) ) # ( !\DATAPATHI|gameROM\(0) & ( \DATAPATHI|gameROM\(1) & ( (!\DATAPATHI|ROMin\(0) & (!\DATAPATHI|ROMin\(3) & 
-- (!\DATAPATHI|ROMin\(2) $ (\DATAPATHI|ROMin\(1))))) # (\DATAPATHI|ROMin\(0) & (!\DATAPATHI|ROMin\(2) & ((!\DATAPATHI|ROMin\(1)) # (!\DATAPATHI|ROMin\(3))))) ) ) ) # ( \DATAPATHI|gameROM\(0) & ( !\DATAPATHI|gameROM\(1) & ( (!\DATAPATHI|ROMin\(3) & 
-- (((!\DATAPATHI|ROMin\(2) & \DATAPATHI|ROMin\(1))) # (\DATAPATHI|ROMin\(0)))) ) ) ) # ( !\DATAPATHI|gameROM\(0) & ( !\DATAPATHI|gameROM\(1) & ( (!\DATAPATHI|ROMin\(2) & ((!\DATAPATHI|ROMin\(1) & ((\DATAPATHI|ROMin\(3)))) # (\DATAPATHI|ROMin\(1) & 
-- (\DATAPATHI|ROMin\(0) & !\DATAPATHI|ROMin\(3))))) # (\DATAPATHI|ROMin\(2) & (!\DATAPATHI|ROMin\(0) & ((!\DATAPATHI|ROMin\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011010100000001110110000000010100110001000001001001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_ROMin\(2),
	datab => \DATAPATHI|ALT_INV_ROMin\(0),
	datac => \DATAPATHI|ALT_INV_ROMin\(1),
	datad => \DATAPATHI|ALT_INV_ROMin\(3),
	datae => \DATAPATHI|ALT_INV_gameROM\(0),
	dataf => \DATAPATHI|ALT_INV_gameROM\(1),
	combout => \DATAPATHI|currentHex[5]~5_combout\);

-- Location: MLABCELL_X87_Y8_N54
\DATAPATHI|currentHex[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|currentHex[3]~2_combout\ = ( \DATAPATHI|gameROM\(0) & ( \DATAPATHI|gameROM\(1) & ( (!\DATAPATHI|ROMin\(2) & (!\DATAPATHI|ROMin\(1) & ((\DATAPATHI|ROMin\(0))))) # (\DATAPATHI|ROMin\(2) & (((!\DATAPATHI|ROMin\(3) & !\DATAPATHI|ROMin\(0))))) ) ) ) 
-- # ( !\DATAPATHI|gameROM\(0) & ( \DATAPATHI|gameROM\(1) & ( (!\DATAPATHI|ROMin\(2) & (!\DATAPATHI|ROMin\(1))) # (\DATAPATHI|ROMin\(2) & (!\DATAPATHI|ROMin\(3) & ((\DATAPATHI|ROMin\(0)) # (\DATAPATHI|ROMin\(1))))) ) ) ) # ( \DATAPATHI|gameROM\(0) & ( 
-- !\DATAPATHI|gameROM\(1) & ( (!\DATAPATHI|ROMin\(2) & ((!\DATAPATHI|ROMin\(1) & (\DATAPATHI|ROMin\(3))) # (\DATAPATHI|ROMin\(1) & (!\DATAPATHI|ROMin\(3) & \DATAPATHI|ROMin\(0))))) # (\DATAPATHI|ROMin\(2) & (!\DATAPATHI|ROMin\(3) & (!\DATAPATHI|ROMin\(1) $ 
-- (!\DATAPATHI|ROMin\(0))))) ) ) ) # ( !\DATAPATHI|gameROM\(0) & ( !\DATAPATHI|gameROM\(1) & ( (!\DATAPATHI|ROMin\(1) & (!\DATAPATHI|ROMin\(2) & ((!\DATAPATHI|ROMin\(0))))) # (\DATAPATHI|ROMin\(1) & (!\DATAPATHI|ROMin\(3) & (!\DATAPATHI|ROMin\(2) $ 
-- (!\DATAPATHI|ROMin\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100000100000000110000110100010011000110110000101000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_ROMin\(2),
	datab => \DATAPATHI|ALT_INV_ROMin\(1),
	datac => \DATAPATHI|ALT_INV_ROMin\(3),
	datad => \DATAPATHI|ALT_INV_ROMin\(0),
	datae => \DATAPATHI|ALT_INV_gameROM\(0),
	dataf => \DATAPATHI|ALT_INV_gameROM\(1),
	combout => \DATAPATHI|currentHex[3]~2_combout\);

-- Location: MLABCELL_X87_Y8_N33
\DATAPATHI|currentHex[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|currentHex[4]~4_combout\ = ( \DATAPATHI|gameROM\(0) & ( \DATAPATHI|gameROM\(1) & ( (!\DATAPATHI|ROMin\(3) & ((!\DATAPATHI|ROMin\(2) & (!\DATAPATHI|ROMin\(0))) # (\DATAPATHI|ROMin\(2) & ((\DATAPATHI|ROMin\(1)))))) ) ) ) # ( 
-- !\DATAPATHI|gameROM\(0) & ( \DATAPATHI|gameROM\(1) & ( (!\DATAPATHI|ROMin\(1) & (!\DATAPATHI|ROMin\(2) & ((!\DATAPATHI|ROMin\(0)) # (\DATAPATHI|ROMin\(3))))) # (\DATAPATHI|ROMin\(1) & (((!\DATAPATHI|ROMin\(0) & !\DATAPATHI|ROMin\(3))))) ) ) ) # ( 
-- \DATAPATHI|gameROM\(0) & ( !\DATAPATHI|gameROM\(1) & ( (!\DATAPATHI|ROMin\(2) & (\DATAPATHI|ROMin\(0) & (!\DATAPATHI|ROMin\(1) & \DATAPATHI|ROMin\(3)))) # (\DATAPATHI|ROMin\(2) & (!\DATAPATHI|ROMin\(3) & ((!\DATAPATHI|ROMin\(0)) # 
-- (\DATAPATHI|ROMin\(1))))) ) ) ) # ( !\DATAPATHI|gameROM\(0) & ( !\DATAPATHI|gameROM\(1) & ( (!\DATAPATHI|ROMin\(1) & (!\DATAPATHI|ROMin\(2) & ((!\DATAPATHI|ROMin\(0)) # (\DATAPATHI|ROMin\(3))))) # (\DATAPATHI|ROMin\(1) & (((\DATAPATHI|ROMin\(0) & 
-- !\DATAPATHI|ROMin\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001110100000010001010010000010001100101000001000110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_ROMin\(2),
	datab => \DATAPATHI|ALT_INV_ROMin\(0),
	datac => \DATAPATHI|ALT_INV_ROMin\(1),
	datad => \DATAPATHI|ALT_INV_ROMin\(3),
	datae => \DATAPATHI|ALT_INV_gameROM\(0),
	dataf => \DATAPATHI|ALT_INV_gameROM\(1),
	combout => \DATAPATHI|currentHex[4]~4_combout\);

-- Location: MLABCELL_X87_Y8_N36
\DATAPATHI|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|process_0~2_combout\ = ( \DATAPATHI|currentHex[3]~2_combout\ & ( \DATAPATHI|currentHex[4]~4_combout\ & ( (\SW[3]~input_o\ & (\SW[4]~input_o\ & (!\SW[5]~input_o\ $ (\DATAPATHI|currentHex[5]~5_combout\)))) ) ) ) # ( 
-- !\DATAPATHI|currentHex[3]~2_combout\ & ( \DATAPATHI|currentHex[4]~4_combout\ & ( (!\SW[3]~input_o\ & (\SW[4]~input_o\ & (!\SW[5]~input_o\ $ (\DATAPATHI|currentHex[5]~5_combout\)))) ) ) ) # ( \DATAPATHI|currentHex[3]~2_combout\ & ( 
-- !\DATAPATHI|currentHex[4]~4_combout\ & ( (\SW[3]~input_o\ & (!\SW[4]~input_o\ & (!\SW[5]~input_o\ $ (\DATAPATHI|currentHex[5]~5_combout\)))) ) ) ) # ( !\DATAPATHI|currentHex[3]~2_combout\ & ( !\DATAPATHI|currentHex[4]~4_combout\ & ( (!\SW[3]~input_o\ & 
-- (!\SW[4]~input_o\ & (!\SW[5]~input_o\ $ (\DATAPATHI|currentHex[5]~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000001000000001000000001000000001000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	datad => \DATAPATHI|ALT_INV_currentHex[5]~5_combout\,
	datae => \DATAPATHI|ALT_INV_currentHex[3]~2_combout\,
	dataf => \DATAPATHI|ALT_INV_currentHex[4]~4_combout\,
	combout => \DATAPATHI|process_0~2_combout\);

-- Location: IOIBUF_X8_Y0_N35
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LABCELL_X88_Y8_N18
\DATAPATHI|currentHex[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|currentHex[0]~0_combout\ = ( \DATAPATHI|ROMin\(0) & ( \DATAPATHI|ROMin\(1) & ( (!\DATAPATHI|ROMin\(3) & (((\DATAPATHI|ROMin\(2)) # (\DATAPATHI|gameROM\(0))) # (\DATAPATHI|gameROM\(1)))) ) ) ) # ( !\DATAPATHI|ROMin\(0) & ( \DATAPATHI|ROMin\(1) & 
-- ( (!\DATAPATHI|ROMin\(3) & (!\DATAPATHI|gameROM\(1) $ (((!\DATAPATHI|gameROM\(0)) # (\DATAPATHI|ROMin\(2)))))) ) ) ) # ( \DATAPATHI|ROMin\(0) & ( !\DATAPATHI|ROMin\(1) & ( (!\DATAPATHI|ROMin\(3) & (((!\DATAPATHI|gameROM\(0)) # (!\DATAPATHI|ROMin\(2))) # 
-- (\DATAPATHI|gameROM\(1)))) # (\DATAPATHI|ROMin\(3) & (!\DATAPATHI|ROMin\(2) & ((!\DATAPATHI|gameROM\(0)) # (\DATAPATHI|gameROM\(1))))) ) ) ) # ( !\DATAPATHI|ROMin\(0) & ( !\DATAPATHI|ROMin\(1) & ( (!\DATAPATHI|ROMin\(2) & (((\DATAPATHI|ROMin\(3) & 
-- \DATAPATHI|gameROM\(1))) # (\DATAPATHI|gameROM\(0)))) # (\DATAPATHI|ROMin\(2) & (!\DATAPATHI|ROMin\(3) & ((!\DATAPATHI|gameROM\(0)) # (\DATAPATHI|gameROM\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111110100010111110111010001000101000001000100010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_ROMin\(3),
	datab => \DATAPATHI|ALT_INV_gameROM\(1),
	datac => \DATAPATHI|ALT_INV_gameROM\(0),
	datad => \DATAPATHI|ALT_INV_ROMin\(2),
	datae => \DATAPATHI|ALT_INV_ROMin\(0),
	dataf => \DATAPATHI|ALT_INV_ROMin\(1),
	combout => \DATAPATHI|currentHex[0]~0_combout\);

-- Location: MLABCELL_X87_Y8_N21
\DATAPATHI|currentHex[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|currentHex[2]~3_combout\ = ( \DATAPATHI|gameROM\(0) & ( \DATAPATHI|gameROM\(1) & ( (!\DATAPATHI|ROMin\(3) & (((\DATAPATHI|ROMin\(2)) # (\DATAPATHI|ROMin\(1))) # (\DATAPATHI|ROMin\(0)))) ) ) ) # ( !\DATAPATHI|gameROM\(0) & ( 
-- \DATAPATHI|gameROM\(1) & ( (!\DATAPATHI|ROMin\(3) & ((!\DATAPATHI|ROMin\(1) & ((\DATAPATHI|ROMin\(2)))) # (\DATAPATHI|ROMin\(1) & (\DATAPATHI|ROMin\(0))))) # (\DATAPATHI|ROMin\(3) & (\DATAPATHI|ROMin\(0) & (!\DATAPATHI|ROMin\(1) & !\DATAPATHI|ROMin\(2)))) 
-- ) ) ) # ( \DATAPATHI|gameROM\(0) & ( !\DATAPATHI|gameROM\(1) & ( (!\DATAPATHI|ROMin\(3) & ((!\DATAPATHI|ROMin\(0)) # (!\DATAPATHI|ROMin\(2)))) ) ) ) # ( !\DATAPATHI|gameROM\(0) & ( !\DATAPATHI|gameROM\(1) & ( (!\DATAPATHI|ROMin\(3) & 
-- (((\DATAPATHI|ROMin\(0) & \DATAPATHI|ROMin\(1))) # (\DATAPATHI|ROMin\(2)))) # (\DATAPATHI|ROMin\(3) & (!\DATAPATHI|ROMin\(0) & (!\DATAPATHI|ROMin\(1) & !\DATAPATHI|ROMin\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001010101010101010101000100000010010101000100010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_ROMin\(3),
	datab => \DATAPATHI|ALT_INV_ROMin\(0),
	datac => \DATAPATHI|ALT_INV_ROMin\(1),
	datad => \DATAPATHI|ALT_INV_ROMin\(2),
	datae => \DATAPATHI|ALT_INV_gameROM\(0),
	dataf => \DATAPATHI|ALT_INV_gameROM\(1),
	combout => \DATAPATHI|currentHex[2]~3_combout\);

-- Location: MLABCELL_X87_Y8_N3
\DATAPATHI|currentHex[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|currentHex[1]~1_combout\ = ( \DATAPATHI|gameROM\(0) & ( \DATAPATHI|gameROM\(1) & ( (!\DATAPATHI|ROMin\(2) & (!\DATAPATHI|ROMin\(0) & ((!\DATAPATHI|ROMin\(1)) # (!\DATAPATHI|ROMin\(3))))) # (\DATAPATHI|ROMin\(2) & (\DATAPATHI|ROMin\(0) & 
-- (!\DATAPATHI|ROMin\(1) & !\DATAPATHI|ROMin\(3)))) ) ) ) # ( !\DATAPATHI|gameROM\(0) & ( \DATAPATHI|gameROM\(1) & ( (!\DATAPATHI|ROMin\(2) & ((!\DATAPATHI|ROMin\(3)) # ((\DATAPATHI|ROMin\(0) & !\DATAPATHI|ROMin\(1))))) # (\DATAPATHI|ROMin\(2) & 
-- (((!\DATAPATHI|ROMin\(1) & !\DATAPATHI|ROMin\(3))))) ) ) ) # ( \DATAPATHI|gameROM\(0) & ( !\DATAPATHI|gameROM\(1) & ( (!\DATAPATHI|ROMin\(2) & ((!\DATAPATHI|ROMin\(1) & (\DATAPATHI|ROMin\(0))) # (\DATAPATHI|ROMin\(1) & ((!\DATAPATHI|ROMin\(3)))))) # 
-- (\DATAPATHI|ROMin\(2) & (!\DATAPATHI|ROMin\(3) & ((!\DATAPATHI|ROMin\(1)) # (\DATAPATHI|ROMin\(0))))) ) ) ) # ( !\DATAPATHI|gameROM\(0) & ( !\DATAPATHI|gameROM\(1) & ( (!\DATAPATHI|ROMin\(3) & (\DATAPATHI|ROMin\(0) & (!\DATAPATHI|ROMin\(2) $ 
-- (!\DATAPATHI|ROMin\(1))))) # (\DATAPATHI|ROMin\(3) & (!\DATAPATHI|ROMin\(2) & ((!\DATAPATHI|ROMin\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001010100000011110110010000011111010001000001001100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_ROMin\(2),
	datab => \DATAPATHI|ALT_INV_ROMin\(0),
	datac => \DATAPATHI|ALT_INV_ROMin\(1),
	datad => \DATAPATHI|ALT_INV_ROMin\(3),
	datae => \DATAPATHI|ALT_INV_gameROM\(0),
	dataf => \DATAPATHI|ALT_INV_gameROM\(1),
	combout => \DATAPATHI|currentHex[1]~1_combout\);

-- Location: LABCELL_X88_Y8_N12
\DATAPATHI|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|process_0~1_combout\ = ( \DATAPATHI|currentHex[2]~3_combout\ & ( \DATAPATHI|currentHex[1]~1_combout\ & ( (\SW[1]~input_o\ & (\SW[2]~input_o\ & (!\DATAPATHI|currentHex[0]~0_combout\ $ (\SW[0]~input_o\)))) ) ) ) # ( 
-- !\DATAPATHI|currentHex[2]~3_combout\ & ( \DATAPATHI|currentHex[1]~1_combout\ & ( (\SW[1]~input_o\ & (!\SW[2]~input_o\ & (!\DATAPATHI|currentHex[0]~0_combout\ $ (\SW[0]~input_o\)))) ) ) ) # ( \DATAPATHI|currentHex[2]~3_combout\ & ( 
-- !\DATAPATHI|currentHex[1]~1_combout\ & ( (!\SW[1]~input_o\ & (\SW[2]~input_o\ & (!\DATAPATHI|currentHex[0]~0_combout\ $ (\SW[0]~input_o\)))) ) ) ) # ( !\DATAPATHI|currentHex[2]~3_combout\ & ( !\DATAPATHI|currentHex[1]~1_combout\ & ( (!\SW[1]~input_o\ & 
-- (!\SW[2]~input_o\ & (!\DATAPATHI|currentHex[0]~0_combout\ $ (\SW[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000001000000000001001000000000001000001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \DATAPATHI|ALT_INV_currentHex[0]~0_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \DATAPATHI|ALT_INV_currentHex[2]~3_combout\,
	dataf => \DATAPATHI|ALT_INV_currentHex[1]~1_combout\,
	combout => \DATAPATHI|process_0~1_combout\);

-- Location: IOIBUF_X4_Y0_N35
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: MLABCELL_X87_Y8_N6
\DATAPATHI|currentHex[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|currentHex[6]~7_combout\ = ( \DATAPATHI|gameROM\(0) & ( \DATAPATHI|gameROM\(1) & ( (!\DATAPATHI|ROMin\(2) & ((!\DATAPATHI|ROMin\(1) & ((!\DATAPATHI|ROMin\(0)))) # (\DATAPATHI|ROMin\(1) & (!\DATAPATHI|ROMin\(3))))) # (\DATAPATHI|ROMin\(2) & 
-- (!\DATAPATHI|ROMin\(3) & (!\DATAPATHI|ROMin\(1) $ (\DATAPATHI|ROMin\(0))))) ) ) ) # ( !\DATAPATHI|gameROM\(0) & ( \DATAPATHI|gameROM\(1) & ( (!\DATAPATHI|ROMin\(1) & ((!\DATAPATHI|ROMin\(2) & ((\DATAPATHI|ROMin\(0)))) # (\DATAPATHI|ROMin\(2) & 
-- (!\DATAPATHI|ROMin\(3))))) # (\DATAPATHI|ROMin\(1) & (!\DATAPATHI|ROMin\(3) & (!\DATAPATHI|ROMin\(2) $ (\DATAPATHI|ROMin\(0))))) ) ) ) # ( \DATAPATHI|gameROM\(0) & ( !\DATAPATHI|gameROM\(1) & ( (!\DATAPATHI|ROMin\(2) & ((!\DATAPATHI|ROMin\(1) & 
-- (!\DATAPATHI|ROMin\(3) $ (\DATAPATHI|ROMin\(0)))) # (\DATAPATHI|ROMin\(1) & (!\DATAPATHI|ROMin\(3) & \DATAPATHI|ROMin\(0))))) ) ) ) # ( !\DATAPATHI|gameROM\(0) & ( !\DATAPATHI|gameROM\(1) & ( (!\DATAPATHI|ROMin\(3) & (((!\DATAPATHI|ROMin\(2) & 
-- \DATAPATHI|ROMin\(0))) # (\DATAPATHI|ROMin\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000010110000100000000010100001100000110110001110100000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_ROMin\(2),
	datab => \DATAPATHI|ALT_INV_ROMin\(1),
	datac => \DATAPATHI|ALT_INV_ROMin\(3),
	datad => \DATAPATHI|ALT_INV_ROMin\(0),
	datae => \DATAPATHI|ALT_INV_gameROM\(0),
	dataf => \DATAPATHI|ALT_INV_gameROM\(1),
	combout => \DATAPATHI|currentHex[6]~7_combout\);

-- Location: MLABCELL_X87_Y8_N48
\DATAPATHI|currentHex[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|currentHex[7]~6_combout\ = ( \DATAPATHI|gameROM\(0) & ( \DATAPATHI|gameROM\(1) & ( (!\DATAPATHI|ROMin\(3) & (((!\DATAPATHI|ROMin\(2)) # (!\DATAPATHI|ROMin\(0))) # (\DATAPATHI|ROMin\(1)))) # (\DATAPATHI|ROMin\(3) & (!\DATAPATHI|ROMin\(1) & 
-- (!\DATAPATHI|ROMin\(2) & !\DATAPATHI|ROMin\(0)))) ) ) ) # ( !\DATAPATHI|gameROM\(0) & ( \DATAPATHI|gameROM\(1) & ( (!\DATAPATHI|ROMin\(3) & (((\DATAPATHI|ROMin\(2) & \DATAPATHI|ROMin\(0))) # (\DATAPATHI|ROMin\(1)))) # (\DATAPATHI|ROMin\(3) & 
-- (!\DATAPATHI|ROMin\(1) & (!\DATAPATHI|ROMin\(2)))) ) ) ) # ( \DATAPATHI|gameROM\(0) & ( !\DATAPATHI|gameROM\(1) & ( (!\DATAPATHI|ROMin\(3) & ((!\DATAPATHI|ROMin\(1)) # (!\DATAPATHI|ROMin\(2) $ (!\DATAPATHI|ROMin\(0))))) # (\DATAPATHI|ROMin\(3) & 
-- (!\DATAPATHI|ROMin\(1) & (!\DATAPATHI|ROMin\(2) & !\DATAPATHI|ROMin\(0)))) ) ) ) # ( !\DATAPATHI|gameROM\(0) & ( !\DATAPATHI|gameROM\(1) & ( (!\DATAPATHI|ROMin\(3) & (!\DATAPATHI|ROMin\(0) $ (((!\DATAPATHI|ROMin\(2)) # (\DATAPATHI|ROMin\(1)))))) # 
-- (\DATAPATHI|ROMin\(3) & (!\DATAPATHI|ROMin\(1) & (!\DATAPATHI|ROMin\(2) & !\DATAPATHI|ROMin\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100010100010110010101010100001100010011010101110101010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_ROMin\(3),
	datab => \DATAPATHI|ALT_INV_ROMin\(1),
	datac => \DATAPATHI|ALT_INV_ROMin\(2),
	datad => \DATAPATHI|ALT_INV_ROMin\(0),
	datae => \DATAPATHI|ALT_INV_gameROM\(0),
	dataf => \DATAPATHI|ALT_INV_gameROM\(1),
	combout => \DATAPATHI|currentHex[7]~6_combout\);

-- Location: MLABCELL_X87_Y8_N24
\DATAPATHI|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|process_0~0_combout\ = ( \DATAPATHI|currentHex[7]~6_combout\ & ( (\SW[7]~input_o\ & (!\SW[6]~input_o\ $ (\DATAPATHI|currentHex[6]~7_combout\))) ) ) # ( !\DATAPATHI|currentHex[7]~6_combout\ & ( (!\SW[7]~input_o\ & (!\SW[6]~input_o\ $ 
-- (\DATAPATHI|currentHex[6]~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100001000100100010000100010000100010000100010010001000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \ALT_INV_SW[7]~input_o\,
	datad => \DATAPATHI|ALT_INV_currentHex[6]~7_combout\,
	dataf => \DATAPATHI|ALT_INV_currentHex[7]~6_combout\,
	combout => \DATAPATHI|process_0~0_combout\);

-- Location: LABCELL_X88_Y8_N39
\DATAPATHI|process_0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|process_0~3_combout\ = ( \DATAPATHI|process_0~0_combout\ & ( (\DATAPATHI|process_0~2_combout\ & \DATAPATHI|process_0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_process_0~2_combout\,
	datac => \DATAPATHI|ALT_INV_process_0~1_combout\,
	dataf => \DATAPATHI|ALT_INV_process_0~0_combout\,
	combout => \DATAPATHI|process_0~3_combout\);

-- Location: FF_X88_Y8_N38
\DATAPATHI|ledsSig[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DATAPATHI|changeClock|clockOut~q\,
	d => \DATAPATHI|ledsSig[0]~feeder_combout\,
	clrn => \DATAPATHI|ALT_INV_ledsSig[9]~0_combout\,
	ena => \DATAPATHI|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|ledsSig\(0));

-- Location: FF_X88_Y8_N41
\DATAPATHI|ledsSig[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DATAPATHI|changeClock|clockOut~q\,
	asdata => \DATAPATHI|ledsSig\(0),
	clrn => \DATAPATHI|ALT_INV_ledsSig[9]~0_combout\,
	sload => VCC,
	ena => \DATAPATHI|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|ledsSig\(1));

-- Location: FF_X88_Y8_N20
\DATAPATHI|ledsSig[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DATAPATHI|changeClock|clockOut~q\,
	asdata => \DATAPATHI|ledsSig\(1),
	clrn => \DATAPATHI|ALT_INV_ledsSig[9]~0_combout\,
	sload => VCC,
	ena => \DATAPATHI|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|ledsSig\(2));

-- Location: FF_X88_Y8_N23
\DATAPATHI|ledsSig[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DATAPATHI|changeClock|clockOut~q\,
	asdata => \DATAPATHI|ledsSig\(2),
	clrn => \DATAPATHI|ALT_INV_ledsSig[9]~0_combout\,
	sload => VCC,
	ena => \DATAPATHI|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|ledsSig\(3));

-- Location: FF_X88_Y8_N50
\DATAPATHI|ledsSig[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DATAPATHI|changeClock|clockOut~q\,
	asdata => \DATAPATHI|ledsSig\(3),
	clrn => \DATAPATHI|ALT_INV_ledsSig[9]~0_combout\,
	sload => VCC,
	ena => \DATAPATHI|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|ledsSig\(4));

-- Location: FF_X88_Y8_N59
\DATAPATHI|ledsSig[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DATAPATHI|changeClock|clockOut~q\,
	asdata => \DATAPATHI|ledsSig\(4),
	clrn => \DATAPATHI|ALT_INV_ledsSig[9]~0_combout\,
	sload => VCC,
	ena => \DATAPATHI|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|ledsSig\(5));

-- Location: LABCELL_X88_Y8_N24
\DATAPATHI|ledsSig[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|ledsSig[6]~feeder_combout\ = ( \DATAPATHI|ledsSig\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DATAPATHI|ALT_INV_ledsSig\(5),
	combout => \DATAPATHI|ledsSig[6]~feeder_combout\);

-- Location: FF_X88_Y8_N26
\DATAPATHI|ledsSig[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DATAPATHI|changeClock|clockOut~q\,
	d => \DATAPATHI|ledsSig[6]~feeder_combout\,
	clrn => \DATAPATHI|ALT_INV_ledsSig[9]~0_combout\,
	ena => \DATAPATHI|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|ledsSig\(6));

-- Location: LABCELL_X88_Y8_N27
\DATAPATHI|ledsSig[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|ledsSig[7]~feeder_combout\ = \DATAPATHI|ledsSig\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DATAPATHI|ALT_INV_ledsSig\(6),
	combout => \DATAPATHI|ledsSig[7]~feeder_combout\);

-- Location: FF_X88_Y8_N29
\DATAPATHI|ledsSig[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DATAPATHI|changeClock|clockOut~q\,
	d => \DATAPATHI|ledsSig[7]~feeder_combout\,
	clrn => \DATAPATHI|ALT_INV_ledsSig[9]~0_combout\,
	ena => \DATAPATHI|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|ledsSig\(7));

-- Location: LABCELL_X88_Y8_N6
\DATAPATHI|ledsSig[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|ledsSig[8]~feeder_combout\ = ( \DATAPATHI|ledsSig\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DATAPATHI|ALT_INV_ledsSig\(7),
	combout => \DATAPATHI|ledsSig[8]~feeder_combout\);

-- Location: FF_X88_Y8_N8
\DATAPATHI|ledsSig[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DATAPATHI|changeClock|clockOut~q\,
	d => \DATAPATHI|ledsSig[8]~feeder_combout\,
	clrn => \DATAPATHI|ALT_INV_ledsSig[9]~0_combout\,
	ena => \DATAPATHI|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|ledsSig\(8));

-- Location: LABCELL_X88_Y8_N9
\DATAPATHI|ledsSig[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|ledsSig[9]~feeder_combout\ = \DATAPATHI|ledsSig\(8)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATHI|ALT_INV_ledsSig\(8),
	combout => \DATAPATHI|ledsSig[9]~feeder_combout\);

-- Location: FF_X88_Y8_N10
\DATAPATHI|ledsSig[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DATAPATHI|changeClock|clockOut~q\,
	d => \DATAPATHI|ledsSig[9]~feeder_combout\,
	clrn => \DATAPATHI|ALT_INV_ledsSig[9]~0_combout\,
	ena => \DATAPATHI|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|ledsSig\(9));

-- Location: LABCELL_X88_Y6_N24
\DATAPATHI|DISPLAY0D|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|DISPLAY0D|saida[0]~0_combout\ = ( \DATAPATHI|ROMin\(2) & ( \DATAPATHI|gameROM\(0) & ( (!\DATAPATHI|ROMin\(0) & (\DATAPATHI|gameROM\(1) & !\DATAPATHI|ROMin\(3))) ) ) ) # ( !\DATAPATHI|ROMin\(2) & ( \DATAPATHI|gameROM\(0) & ( 
-- (!\DATAPATHI|ROMin\(1) & (\DATAPATHI|ROMin\(0) & (\DATAPATHI|gameROM\(1) & !\DATAPATHI|ROMin\(3)))) ) ) ) # ( \DATAPATHI|ROMin\(2) & ( !\DATAPATHI|gameROM\(0) & ( (\DATAPATHI|ROMin\(1) & (\DATAPATHI|ROMin\(0) & (\DATAPATHI|gameROM\(1) & 
-- !\DATAPATHI|ROMin\(3)))) ) ) ) # ( !\DATAPATHI|ROMin\(2) & ( !\DATAPATHI|gameROM\(0) & ( (!\DATAPATHI|ROMin\(1) & (\DATAPATHI|ROMin\(0) & !\DATAPATHI|ROMin\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000000000010000000000000010000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_ROMin\(1),
	datab => \DATAPATHI|ALT_INV_ROMin\(0),
	datac => \DATAPATHI|ALT_INV_gameROM\(1),
	datad => \DATAPATHI|ALT_INV_ROMin\(3),
	datae => \DATAPATHI|ALT_INV_ROMin\(2),
	dataf => \DATAPATHI|ALT_INV_gameROM\(0),
	combout => \DATAPATHI|DISPLAY0D|saida[0]~0_combout\);

-- Location: LABCELL_X88_Y6_N54
\DATAPATHI|DISPLAY0D|saida[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|DISPLAY0D|saida[0]~1_combout\ = ( \DATAPATHI|playingSig~2_combout\ & ( \DATAPATHI|DISPLAY0D|saida[0]~0_combout\ ) ) # ( !\DATAPATHI|playingSig~2_combout\ & ( \DATAPATHI|DISPLAY0D|saida[0]~0_combout\ ) ) # ( !\DATAPATHI|playingSig~2_combout\ & ( 
-- !\DATAPATHI|DISPLAY0D|saida[0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \DATAPATHI|ALT_INV_playingSig~2_combout\,
	dataf => \DATAPATHI|DISPLAY0D|ALT_INV_saida[0]~0_combout\,
	combout => \DATAPATHI|DISPLAY0D|saida[0]~1_combout\);

-- Location: LABCELL_X88_Y6_N0
\DATAPATHI|DISPLAY0D|saida[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|DISPLAY0D|saida[1]~2_combout\ = ( \DATAPATHI|currentHex[0]~0_combout\ & ( (!\DATAPATHI|playingSig~2_combout\) # ((!\DATAPATHI|currentHex[3]~2_combout\ & (\DATAPATHI|currentHex[2]~3_combout\ & !\DATAPATHI|currentHex[1]~1_combout\)) # 
-- (\DATAPATHI|currentHex[3]~2_combout\ & ((\DATAPATHI|currentHex[1]~1_combout\)))) ) ) # ( !\DATAPATHI|currentHex[0]~0_combout\ & ( (!\DATAPATHI|playingSig~2_combout\) # ((\DATAPATHI|currentHex[2]~3_combout\ & ((\DATAPATHI|currentHex[1]~1_combout\) # 
-- (\DATAPATHI|currentHex[3]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100010101111111110001010111111111010000111111111101000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_currentHex[2]~3_combout\,
	datab => \DATAPATHI|ALT_INV_currentHex[3]~2_combout\,
	datac => \DATAPATHI|ALT_INV_currentHex[1]~1_combout\,
	datad => \DATAPATHI|ALT_INV_playingSig~2_combout\,
	dataf => \DATAPATHI|ALT_INV_currentHex[0]~0_combout\,
	combout => \DATAPATHI|DISPLAY0D|saida[1]~2_combout\);

-- Location: LABCELL_X88_Y6_N33
\DATAPATHI|DISPLAY0D|saida[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|DISPLAY0D|saida[2]~3_combout\ = ( \DATAPATHI|currentHex[2]~3_combout\ & ( \DATAPATHI|currentHex[3]~2_combout\ & ( (!\DATAPATHI|currentHex[0]~0_combout\) # ((!\DATAPATHI|playingSig~2_combout\) # (\DATAPATHI|currentHex[1]~1_combout\)) ) ) ) # ( 
-- !\DATAPATHI|currentHex[2]~3_combout\ & ( \DATAPATHI|currentHex[3]~2_combout\ & ( !\DATAPATHI|playingSig~2_combout\ ) ) ) # ( \DATAPATHI|currentHex[2]~3_combout\ & ( !\DATAPATHI|currentHex[3]~2_combout\ & ( !\DATAPATHI|playingSig~2_combout\ ) ) ) # ( 
-- !\DATAPATHI|currentHex[2]~3_combout\ & ( !\DATAPATHI|currentHex[3]~2_combout\ & ( (!\DATAPATHI|playingSig~2_combout\) # ((!\DATAPATHI|currentHex[0]~0_combout\ & \DATAPATHI|currentHex[1]~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111010111100001111000011110000111100001111101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_currentHex[0]~0_combout\,
	datac => \DATAPATHI|ALT_INV_playingSig~2_combout\,
	datad => \DATAPATHI|ALT_INV_currentHex[1]~1_combout\,
	datae => \DATAPATHI|ALT_INV_currentHex[2]~3_combout\,
	dataf => \DATAPATHI|ALT_INV_currentHex[3]~2_combout\,
	combout => \DATAPATHI|DISPLAY0D|saida[2]~3_combout\);

-- Location: LABCELL_X88_Y6_N15
\DATAPATHI|DISPLAY0D|saida[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|DISPLAY0D|saida[3]~4_combout\ = ( \DATAPATHI|currentHex[1]~1_combout\ & ( (!\DATAPATHI|playingSig~2_combout\) # ((!\DATAPATHI|currentHex[0]~0_combout\ & (!\DATAPATHI|currentHex[2]~3_combout\ & \DATAPATHI|currentHex[3]~2_combout\)) # 
-- (\DATAPATHI|currentHex[0]~0_combout\ & (\DATAPATHI|currentHex[2]~3_combout\))) ) ) # ( !\DATAPATHI|currentHex[1]~1_combout\ & ( (!\DATAPATHI|playingSig~2_combout\) # ((!\DATAPATHI|currentHex[0]~0_combout\ & (\DATAPATHI|currentHex[2]~3_combout\ & 
-- !\DATAPATHI|currentHex[3]~2_combout\)) # (\DATAPATHI|currentHex[0]~0_combout\ & (!\DATAPATHI|currentHex[2]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111011011100110111101101110011001101111011011100110111101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_currentHex[0]~0_combout\,
	datab => \DATAPATHI|ALT_INV_playingSig~2_combout\,
	datac => \DATAPATHI|ALT_INV_currentHex[2]~3_combout\,
	datad => \DATAPATHI|ALT_INV_currentHex[3]~2_combout\,
	dataf => \DATAPATHI|ALT_INV_currentHex[1]~1_combout\,
	combout => \DATAPATHI|DISPLAY0D|saida[3]~4_combout\);

-- Location: LABCELL_X88_Y6_N9
\DATAPATHI|DISPLAY0D|saida[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|DISPLAY0D|saida[4]~5_combout\ = ( \DATAPATHI|currentHex[2]~3_combout\ & ( \DATAPATHI|currentHex[3]~2_combout\ & ( !\DATAPATHI|playingSig~2_combout\ ) ) ) # ( !\DATAPATHI|currentHex[2]~3_combout\ & ( \DATAPATHI|currentHex[3]~2_combout\ & ( 
-- (!\DATAPATHI|playingSig~2_combout\) # ((\DATAPATHI|currentHex[0]~0_combout\ & !\DATAPATHI|currentHex[1]~1_combout\)) ) ) ) # ( \DATAPATHI|currentHex[2]~3_combout\ & ( !\DATAPATHI|currentHex[3]~2_combout\ & ( ((!\DATAPATHI|playingSig~2_combout\) # 
-- (!\DATAPATHI|currentHex[1]~1_combout\)) # (\DATAPATHI|currentHex[0]~0_combout\) ) ) ) # ( !\DATAPATHI|currentHex[2]~3_combout\ & ( !\DATAPATHI|currentHex[3]~2_combout\ & ( (!\DATAPATHI|playingSig~2_combout\) # (\DATAPATHI|currentHex[0]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101111111111101110111011101110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_currentHex[0]~0_combout\,
	datab => \DATAPATHI|ALT_INV_playingSig~2_combout\,
	datad => \DATAPATHI|ALT_INV_currentHex[1]~1_combout\,
	datae => \DATAPATHI|ALT_INV_currentHex[2]~3_combout\,
	dataf => \DATAPATHI|ALT_INV_currentHex[3]~2_combout\,
	combout => \DATAPATHI|DISPLAY0D|saida[4]~5_combout\);

-- Location: LABCELL_X88_Y6_N12
\DATAPATHI|DISPLAY0D|saida[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|DISPLAY0D|saida[5]~6_combout\ = ( \DATAPATHI|currentHex[1]~1_combout\ & ( (!\DATAPATHI|playingSig~2_combout\) # ((!\DATAPATHI|currentHex[3]~2_combout\ & ((!\DATAPATHI|currentHex[2]~3_combout\) # (\DATAPATHI|currentHex[0]~0_combout\)))) ) ) # ( 
-- !\DATAPATHI|currentHex[1]~1_combout\ & ( (!\DATAPATHI|playingSig~2_combout\) # ((\DATAPATHI|currentHex[0]~0_combout\ & (!\DATAPATHI|currentHex[2]~3_combout\ $ (\DATAPATHI|currentHex[3]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011001101110111001100110111111101110011001111110111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_currentHex[0]~0_combout\,
	datab => \DATAPATHI|ALT_INV_playingSig~2_combout\,
	datac => \DATAPATHI|ALT_INV_currentHex[2]~3_combout\,
	datad => \DATAPATHI|ALT_INV_currentHex[3]~2_combout\,
	dataf => \DATAPATHI|ALT_INV_currentHex[1]~1_combout\,
	combout => \DATAPATHI|DISPLAY0D|saida[5]~6_combout\);

-- Location: LABCELL_X88_Y6_N36
\DATAPATHI|DISPLAY0D|saida[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|DISPLAY0D|saida[6]~7_combout\ = ( \DATAPATHI|currentHex[0]~0_combout\ & ( (!\DATAPATHI|playingSig~2_combout\) # ((!\DATAPATHI|currentHex[3]~2_combout\ & (!\DATAPATHI|currentHex[2]~3_combout\ $ (\DATAPATHI|currentHex[1]~1_combout\)))) ) ) # ( 
-- !\DATAPATHI|currentHex[0]~0_combout\ & ( (!\DATAPATHI|playingSig~2_combout\) # ((!\DATAPATHI|currentHex[1]~1_combout\ & (!\DATAPATHI|currentHex[2]~3_combout\ $ (\DATAPATHI|currentHex[3]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101010111010111010101011101011101011101010101110101110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_playingSig~2_combout\,
	datab => \DATAPATHI|ALT_INV_currentHex[2]~3_combout\,
	datac => \DATAPATHI|ALT_INV_currentHex[1]~1_combout\,
	datad => \DATAPATHI|ALT_INV_currentHex[3]~2_combout\,
	dataf => \DATAPATHI|ALT_INV_currentHex[0]~0_combout\,
	combout => \DATAPATHI|DISPLAY0D|saida[6]~7_combout\);

-- Location: LABCELL_X88_Y6_N18
\DATAPATHI|DISPLAY1D|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|DISPLAY1D|saida[0]~0_combout\ = ( \DATAPATHI|ROMin\(2) & ( \DATAPATHI|gameROM\(0) & ( (\DATAPATHI|ROMin\(1) & (\DATAPATHI|ROMin\(0) & (\DATAPATHI|gameROM\(1) & !\DATAPATHI|ROMin\(3)))) ) ) ) # ( !\DATAPATHI|ROMin\(2) & ( \DATAPATHI|gameROM\(0) 
-- & ( (\DATAPATHI|ROMin\(1) & (!\DATAPATHI|ROMin\(0) & (\DATAPATHI|gameROM\(1) & !\DATAPATHI|ROMin\(3)))) ) ) ) # ( \DATAPATHI|ROMin\(2) & ( !\DATAPATHI|gameROM\(0) & ( (!\DATAPATHI|ROMin\(3) & ((!\DATAPATHI|ROMin\(0) & ((\DATAPATHI|gameROM\(1)))) # 
-- (\DATAPATHI|ROMin\(0) & (\DATAPATHI|ROMin\(1) & !\DATAPATHI|gameROM\(1))))) ) ) ) # ( !\DATAPATHI|ROMin\(2) & ( !\DATAPATHI|gameROM\(0) & ( (!\DATAPATHI|ROMin\(0) & ((!\DATAPATHI|ROMin\(1) & (!\DATAPATHI|gameROM\(1))) # (\DATAPATHI|ROMin\(1) & 
-- ((!\DATAPATHI|ROMin\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010010000000000111000000000000000100000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_ROMin\(1),
	datab => \DATAPATHI|ALT_INV_ROMin\(0),
	datac => \DATAPATHI|ALT_INV_gameROM\(1),
	datad => \DATAPATHI|ALT_INV_ROMin\(3),
	datae => \DATAPATHI|ALT_INV_ROMin\(2),
	dataf => \DATAPATHI|ALT_INV_gameROM\(0),
	combout => \DATAPATHI|DISPLAY1D|saida[0]~0_combout\);

-- Location: LABCELL_X88_Y6_N39
\DATAPATHI|DISPLAY1D|saida[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|DISPLAY1D|saida[0]~1_combout\ = ( \DATAPATHI|DISPLAY1D|saida[0]~0_combout\ ) # ( !\DATAPATHI|DISPLAY1D|saida[0]~0_combout\ & ( !\DATAPATHI|playingSig~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_playingSig~2_combout\,
	dataf => \DATAPATHI|DISPLAY1D|ALT_INV_saida[0]~0_combout\,
	combout => \DATAPATHI|DISPLAY1D|saida[0]~1_combout\);

-- Location: LABCELL_X88_Y10_N48
\DATAPATHI|DISPLAY1D|saida[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|DISPLAY1D|saida[1]~2_combout\ = ( \DATAPATHI|currentHex[4]~4_combout\ & ( \DATAPATHI|currentHex[5]~5_combout\ & ( (!\DATAPATHI|playingSig~2_combout\) # (\DATAPATHI|currentHex[7]~6_combout\) ) ) ) # ( !\DATAPATHI|currentHex[4]~4_combout\ & ( 
-- \DATAPATHI|currentHex[5]~5_combout\ & ( (!\DATAPATHI|playingSig~2_combout\) # (\DATAPATHI|currentHex[6]~7_combout\) ) ) ) # ( \DATAPATHI|currentHex[4]~4_combout\ & ( !\DATAPATHI|currentHex[5]~5_combout\ & ( (!\DATAPATHI|playingSig~2_combout\) # 
-- ((!\DATAPATHI|currentHex[7]~6_combout\ & \DATAPATHI|currentHex[6]~7_combout\)) ) ) ) # ( !\DATAPATHI|currentHex[4]~4_combout\ & ( !\DATAPATHI|currentHex[5]~5_combout\ & ( (!\DATAPATHI|playingSig~2_combout\) # ((\DATAPATHI|currentHex[7]~6_combout\ & 
-- \DATAPATHI|currentHex[6]~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101111101010101111101010101010111111111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_playingSig~2_combout\,
	datac => \DATAPATHI|ALT_INV_currentHex[7]~6_combout\,
	datad => \DATAPATHI|ALT_INV_currentHex[6]~7_combout\,
	datae => \DATAPATHI|ALT_INV_currentHex[4]~4_combout\,
	dataf => \DATAPATHI|ALT_INV_currentHex[5]~5_combout\,
	combout => \DATAPATHI|DISPLAY1D|saida[1]~2_combout\);

-- Location: LABCELL_X88_Y10_N45
\DATAPATHI|DISPLAY1D|saida[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|DISPLAY1D|saida[2]~3_combout\ = ( \DATAPATHI|currentHex[7]~6_combout\ & ( (!\DATAPATHI|playingSig~2_combout\) # ((\DATAPATHI|currentHex[6]~7_combout\ & ((!\DATAPATHI|currentHex[4]~4_combout\) # (\DATAPATHI|currentHex[5]~5_combout\)))) ) ) # ( 
-- !\DATAPATHI|currentHex[7]~6_combout\ & ( (!\DATAPATHI|playingSig~2_combout\) # ((\DATAPATHI|currentHex[5]~5_combout\ & (!\DATAPATHI|currentHex[6]~7_combout\ & !\DATAPATHI|currentHex[4]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101010101010101110101010101010101111101010111010111110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_playingSig~2_combout\,
	datab => \DATAPATHI|ALT_INV_currentHex[5]~5_combout\,
	datac => \DATAPATHI|ALT_INV_currentHex[6]~7_combout\,
	datad => \DATAPATHI|ALT_INV_currentHex[4]~4_combout\,
	dataf => \DATAPATHI|ALT_INV_currentHex[7]~6_combout\,
	combout => \DATAPATHI|DISPLAY1D|saida[2]~3_combout\);

-- Location: LABCELL_X88_Y10_N24
\DATAPATHI|DISPLAY1D|saida[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|DISPLAY1D|saida[3]~4_combout\ = ( \DATAPATHI|currentHex[4]~4_combout\ & ( \DATAPATHI|currentHex[5]~5_combout\ & ( (!\DATAPATHI|playingSig~2_combout\) # (\DATAPATHI|currentHex[6]~7_combout\) ) ) ) # ( !\DATAPATHI|currentHex[4]~4_combout\ & ( 
-- \DATAPATHI|currentHex[5]~5_combout\ & ( (!\DATAPATHI|playingSig~2_combout\) # ((\DATAPATHI|currentHex[7]~6_combout\ & !\DATAPATHI|currentHex[6]~7_combout\)) ) ) ) # ( \DATAPATHI|currentHex[4]~4_combout\ & ( !\DATAPATHI|currentHex[5]~5_combout\ & ( 
-- (!\DATAPATHI|playingSig~2_combout\) # (!\DATAPATHI|currentHex[6]~7_combout\) ) ) ) # ( !\DATAPATHI|currentHex[4]~4_combout\ & ( !\DATAPATHI|currentHex[5]~5_combout\ & ( (!\DATAPATHI|playingSig~2_combout\) # ((!\DATAPATHI|currentHex[7]~6_combout\ & 
-- \DATAPATHI|currentHex[6]~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111010111111111010101010101111101010101010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_playingSig~2_combout\,
	datac => \DATAPATHI|ALT_INV_currentHex[7]~6_combout\,
	datad => \DATAPATHI|ALT_INV_currentHex[6]~7_combout\,
	datae => \DATAPATHI|ALT_INV_currentHex[4]~4_combout\,
	dataf => \DATAPATHI|ALT_INV_currentHex[5]~5_combout\,
	combout => \DATAPATHI|DISPLAY1D|saida[3]~4_combout\);

-- Location: LABCELL_X88_Y10_N33
\DATAPATHI|DISPLAY1D|saida[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|DISPLAY1D|saida[4]~5_combout\ = ( \DATAPATHI|currentHex[7]~6_combout\ & ( \DATAPATHI|currentHex[5]~5_combout\ & ( !\DATAPATHI|playingSig~2_combout\ ) ) ) # ( !\DATAPATHI|currentHex[7]~6_combout\ & ( \DATAPATHI|currentHex[5]~5_combout\ & ( 
-- (!\DATAPATHI|playingSig~2_combout\) # (\DATAPATHI|currentHex[4]~4_combout\) ) ) ) # ( \DATAPATHI|currentHex[7]~6_combout\ & ( !\DATAPATHI|currentHex[5]~5_combout\ & ( (!\DATAPATHI|playingSig~2_combout\) # ((!\DATAPATHI|currentHex[6]~7_combout\ & 
-- \DATAPATHI|currentHex[4]~4_combout\)) ) ) ) # ( !\DATAPATHI|currentHex[7]~6_combout\ & ( !\DATAPATHI|currentHex[5]~5_combout\ & ( (!\DATAPATHI|playingSig~2_combout\) # ((\DATAPATHI|currentHex[4]~4_combout\) # (\DATAPATHI|currentHex[6]~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111111111111101010101111101010101010111111111010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_playingSig~2_combout\,
	datac => \DATAPATHI|ALT_INV_currentHex[6]~7_combout\,
	datad => \DATAPATHI|ALT_INV_currentHex[4]~4_combout\,
	datae => \DATAPATHI|ALT_INV_currentHex[7]~6_combout\,
	dataf => \DATAPATHI|ALT_INV_currentHex[5]~5_combout\,
	combout => \DATAPATHI|DISPLAY1D|saida[4]~5_combout\);

-- Location: LABCELL_X88_Y10_N12
\DATAPATHI|DISPLAY1D|saida[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|DISPLAY1D|saida[5]~6_combout\ = ( \DATAPATHI|currentHex[4]~4_combout\ & ( \DATAPATHI|currentHex[5]~5_combout\ & ( (!\DATAPATHI|currentHex[7]~6_combout\) # (!\DATAPATHI|playingSig~2_combout\) ) ) ) # ( !\DATAPATHI|currentHex[4]~4_combout\ & ( 
-- \DATAPATHI|currentHex[5]~5_combout\ & ( (!\DATAPATHI|playingSig~2_combout\) # ((!\DATAPATHI|currentHex[7]~6_combout\ & !\DATAPATHI|currentHex[6]~7_combout\)) ) ) ) # ( \DATAPATHI|currentHex[4]~4_combout\ & ( !\DATAPATHI|currentHex[5]~5_combout\ & ( 
-- (!\DATAPATHI|playingSig~2_combout\) # (!\DATAPATHI|currentHex[7]~6_combout\ $ (\DATAPATHI|currentHex[6]~7_combout\)) ) ) ) # ( !\DATAPATHI|currentHex[4]~4_combout\ & ( !\DATAPATHI|currentHex[5]~5_combout\ & ( !\DATAPATHI|playingSig~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111110011111100111111000111110001111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_currentHex[7]~6_combout\,
	datab => \DATAPATHI|ALT_INV_currentHex[6]~7_combout\,
	datac => \DATAPATHI|ALT_INV_playingSig~2_combout\,
	datae => \DATAPATHI|ALT_INV_currentHex[4]~4_combout\,
	dataf => \DATAPATHI|ALT_INV_currentHex[5]~5_combout\,
	combout => \DATAPATHI|DISPLAY1D|saida[5]~6_combout\);

-- Location: LABCELL_X88_Y10_N9
\DATAPATHI|DISPLAY1D|saida[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|DISPLAY1D|saida[6]~7_combout\ = ( \DATAPATHI|currentHex[4]~4_combout\ & ( \DATAPATHI|currentHex[5]~5_combout\ & ( (!\DATAPATHI|playingSig~2_combout\) # ((\DATAPATHI|currentHex[6]~7_combout\ & !\DATAPATHI|currentHex[7]~6_combout\)) ) ) ) # ( 
-- !\DATAPATHI|currentHex[4]~4_combout\ & ( \DATAPATHI|currentHex[5]~5_combout\ & ( !\DATAPATHI|playingSig~2_combout\ ) ) ) # ( \DATAPATHI|currentHex[4]~4_combout\ & ( !\DATAPATHI|currentHex[5]~5_combout\ & ( (!\DATAPATHI|playingSig~2_combout\) # 
-- ((!\DATAPATHI|currentHex[6]~7_combout\ & !\DATAPATHI|currentHex[7]~6_combout\)) ) ) ) # ( !\DATAPATHI|currentHex[4]~4_combout\ & ( !\DATAPATHI|currentHex[5]~5_combout\ & ( (!\DATAPATHI|playingSig~2_combout\) # (!\DATAPATHI|currentHex[6]~7_combout\ $ 
-- (\DATAPATHI|currentHex[7]~6_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111010111011111011101010101010101010101010101011101110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_playingSig~2_combout\,
	datab => \DATAPATHI|ALT_INV_currentHex[6]~7_combout\,
	datad => \DATAPATHI|ALT_INV_currentHex[7]~6_combout\,
	datae => \DATAPATHI|ALT_INV_currentHex[4]~4_combout\,
	dataf => \DATAPATHI|ALT_INV_currentHex[5]~5_combout\,
	combout => \DATAPATHI|DISPLAY1D|saida[6]~7_combout\);

-- Location: MLABCELL_X87_Y7_N15
\DATAPATHI|process_0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|process_0~4_combout\ = ( \CONTROLLER|BTNSYNC|btn1state.SaidaAtiva~q\ & ( !\DATAPATHI|playingSig~2_combout\ & ( (!\DATAPATHI|showingResult~q\ & ((\CONTROLLER|actualS.Game~q\) # (\CONTROLLER|actualS.Setup~q\))) ) ) ) # ( 
-- !\CONTROLLER|BTNSYNC|btn1state.SaidaAtiva~q\ & ( !\DATAPATHI|playingSig~2_combout\ & ( (\CONTROLLER|actualS.Game~q\ & !\DATAPATHI|showingResult~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000001111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLLER|ALT_INV_actualS.Setup~q\,
	datac => \CONTROLLER|ALT_INV_actualS.Game~q\,
	datad => \DATAPATHI|ALT_INV_showingResult~q\,
	datae => \CONTROLLER|BTNSYNC|ALT_INV_btn1state.SaidaAtiva~q\,
	dataf => \DATAPATHI|ALT_INV_playingSig~2_combout\,
	combout => \DATAPATHI|process_0~4_combout\);

-- Location: MLABCELL_X87_Y7_N54
\DATAPATHI|pointsSum[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|pointsSum[0]~1_combout\ = ( \DATAPATHI|process_0~4_combout\ & ( \DATAPATHI|pointsSum\(0) ) ) # ( !\DATAPATHI|process_0~4_combout\ & ( !\DATAPATHI|pointsSum\(0) $ (((!\DATAPATHI|process_0~2_combout\) # ((!\DATAPATHI|process_0~0_combout\) # 
-- (!\DATAPATHI|process_0~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010110010101010101011001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_pointsSum\(0),
	datab => \DATAPATHI|ALT_INV_process_0~2_combout\,
	datac => \DATAPATHI|ALT_INV_process_0~0_combout\,
	datad => \DATAPATHI|ALT_INV_process_0~1_combout\,
	dataf => \DATAPATHI|ALT_INV_process_0~4_combout\,
	combout => \DATAPATHI|pointsSum[0]~1_combout\);

-- Location: FF_X87_Y7_N44
\DATAPATHI|pointsSum[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DATAPATHI|changeClock|clockOut~q\,
	asdata => \DATAPATHI|pointsSum[0]~1_combout\,
	clrn => \DATAPATHI|ALT_INV_playingSig~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|pointsSum\(0));

-- Location: MLABCELL_X87_Y7_N42
\DATAPATHI|pointsSum[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|pointsSum[1]~0_combout\ = ( \DATAPATHI|pointsSum\(0) & ( \DATAPATHI|process_0~4_combout\ & ( \DATAPATHI|pointsSum\(1) ) ) ) # ( !\DATAPATHI|pointsSum\(0) & ( \DATAPATHI|process_0~4_combout\ & ( \DATAPATHI|pointsSum\(1) ) ) ) # ( 
-- \DATAPATHI|pointsSum\(0) & ( !\DATAPATHI|process_0~4_combout\ & ( !\DATAPATHI|pointsSum\(1) $ (((!\DATAPATHI|process_0~1_combout\) # ((!\DATAPATHI|process_0~2_combout\) # (!\DATAPATHI|process_0~0_combout\)))) ) ) ) # ( !\DATAPATHI|pointsSum\(0) & ( 
-- !\DATAPATHI|process_0~4_combout\ & ( \DATAPATHI|pointsSum\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000011111111000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_process_0~1_combout\,
	datab => \DATAPATHI|ALT_INV_process_0~2_combout\,
	datac => \DATAPATHI|ALT_INV_process_0~0_combout\,
	datad => \DATAPATHI|ALT_INV_pointsSum\(1),
	datae => \DATAPATHI|ALT_INV_pointsSum\(0),
	dataf => \DATAPATHI|ALT_INV_process_0~4_combout\,
	combout => \DATAPATHI|pointsSum[1]~0_combout\);

-- Location: FF_X87_Y7_N8
\DATAPATHI|pointsSum[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DATAPATHI|changeClock|clockOut~q\,
	asdata => \DATAPATHI|pointsSum[1]~0_combout\,
	clrn => \DATAPATHI|ALT_INV_playingSig~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|pointsSum\(1));

-- Location: LABCELL_X88_Y8_N3
\DATAPATHI|pointsSum[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|pointsSum[2]~2_combout\ = ( \DATAPATHI|process_0~4_combout\ & ( \DATAPATHI|pointsSum\(2) ) ) # ( !\DATAPATHI|process_0~4_combout\ & ( !\DATAPATHI|pointsSum\(2) $ (((!\DATAPATHI|pointsSum\(1)) # ((!\DATAPATHI|pointsSum\(0)) # 
-- (!\DATAPATHI|process_0~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100011110000011110001111000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_pointsSum\(1),
	datab => \DATAPATHI|ALT_INV_pointsSum\(0),
	datac => \DATAPATHI|ALT_INV_pointsSum\(2),
	datad => \DATAPATHI|ALT_INV_process_0~3_combout\,
	dataf => \DATAPATHI|ALT_INV_process_0~4_combout\,
	combout => \DATAPATHI|pointsSum[2]~2_combout\);

-- Location: FF_X88_Y8_N17
\DATAPATHI|pointsSum[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DATAPATHI|changeClock|clockOut~q\,
	asdata => \DATAPATHI|pointsSum[2]~2_combout\,
	clrn => \DATAPATHI|ALT_INV_playingSig~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|pointsSum\(2));

-- Location: MLABCELL_X87_Y7_N6
\DATAPATHI|pointsSum[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|pointsSum[3]~3_combout\ = ( \DATAPATHI|pointsSum\(1) & ( \DATAPATHI|process_0~3_combout\ & ( !\DATAPATHI|pointsSum\(3) $ (((!\DATAPATHI|pointsSum\(0)) # ((!\DATAPATHI|pointsSum\(2)) # (\DATAPATHI|process_0~4_combout\)))) ) ) ) # ( 
-- !\DATAPATHI|pointsSum\(1) & ( \DATAPATHI|process_0~3_combout\ & ( \DATAPATHI|pointsSum\(3) ) ) ) # ( \DATAPATHI|pointsSum\(1) & ( !\DATAPATHI|process_0~3_combout\ & ( \DATAPATHI|pointsSum\(3) ) ) ) # ( !\DATAPATHI|pointsSum\(1) & ( 
-- !\DATAPATHI|process_0~3_combout\ & ( \DATAPATHI|pointsSum\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101011001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_pointsSum\(3),
	datab => \DATAPATHI|ALT_INV_pointsSum\(0),
	datac => \DATAPATHI|ALT_INV_pointsSum\(2),
	datad => \DATAPATHI|ALT_INV_process_0~4_combout\,
	datae => \DATAPATHI|ALT_INV_pointsSum\(1),
	dataf => \DATAPATHI|ALT_INV_process_0~3_combout\,
	combout => \DATAPATHI|pointsSum[3]~3_combout\);

-- Location: FF_X87_Y7_N11
\DATAPATHI|pointsSum[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DATAPATHI|changeClock|clockOut~q\,
	asdata => \DATAPATHI|pointsSum[3]~3_combout\,
	clrn => \DATAPATHI|ALT_INV_playingSig~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATHI|pointsSum\(3));

-- Location: LABCELL_X88_Y9_N48
\DATAPATHI|DISPLAY2D|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|DISPLAY2D|saida[0]~0_combout\ = ( \DATAPATHI|pointsSum\(3) & ( \DATAPATHI|pointsSum\(0) & ( (!\DATAPATHI|gameLevel\(0) & (!\DATAPATHI|pointsSum\(1) $ (((!\DATAPATHI|gameLevel\(1) & !\DATAPATHI|pointsSum\(2)))))) ) ) ) # ( 
-- !\DATAPATHI|pointsSum\(3) & ( \DATAPATHI|pointsSum\(0) & ( (!\DATAPATHI|gameLevel\(0) & (!\DATAPATHI|pointsSum\(1) & ((!\DATAPATHI|pointsSum\(2)) # (\DATAPATHI|gameLevel\(1))))) ) ) ) # ( \DATAPATHI|pointsSum\(3) & ( !\DATAPATHI|pointsSum\(0) & ( 
-- (!\DATAPATHI|gameLevel\(1) & (\DATAPATHI|gameLevel\(0) & (\DATAPATHI|pointsSum\(1) & !\DATAPATHI|pointsSum\(2)))) ) ) ) # ( !\DATAPATHI|pointsSum\(3) & ( !\DATAPATHI|pointsSum\(0) & ( (!\DATAPATHI|gameLevel\(1) & ((!\DATAPATHI|gameLevel\(0) & 
-- (!\DATAPATHI|pointsSum\(1) & \DATAPATHI|pointsSum\(2))) # (\DATAPATHI|gameLevel\(0) & (\DATAPATHI|pointsSum\(1) & !\DATAPATHI|pointsSum\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000000000000100000000011000000010000000100100011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_gameLevel\(1),
	datab => \DATAPATHI|ALT_INV_gameLevel\(0),
	datac => \DATAPATHI|ALT_INV_pointsSum\(1),
	datad => \DATAPATHI|ALT_INV_pointsSum\(2),
	datae => \DATAPATHI|ALT_INV_pointsSum\(3),
	dataf => \DATAPATHI|ALT_INV_pointsSum\(0),
	combout => \DATAPATHI|DISPLAY2D|saida[0]~0_combout\);

-- Location: LABCELL_X88_Y9_N9
\DATAPATHI|DISPLAY2D|saida[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|DISPLAY2D|saida[0]~1_combout\ = ( \DATAPATHI|DISPLAY2D|saida[0]~0_combout\ ) # ( !\DATAPATHI|DISPLAY2D|saida[0]~0_combout\ & ( !\DATAPATHI|showingResult~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATHI|ALT_INV_showingResult~q\,
	dataf => \DATAPATHI|DISPLAY2D|ALT_INV_saida[0]~0_combout\,
	combout => \DATAPATHI|DISPLAY2D|saida[0]~1_combout\);

-- Location: LABCELL_X88_Y9_N0
\DATAPATHI|hexpoints[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|hexpoints[2]~2_combout\ = ( \DATAPATHI|pointsSum\(2) & ( (!\DATAPATHI|gameLevel\(0) & (((!\DATAPATHI|gameLevel\(1)) # (\DATAPATHI|pointsSum\(0))))) # (\DATAPATHI|gameLevel\(0) & (\DATAPATHI|pointsSum\(1) & (!\DATAPATHI|gameLevel\(1)))) ) ) # ( 
-- !\DATAPATHI|pointsSum\(2) & ( (!\DATAPATHI|gameLevel\(0) & (((\DATAPATHI|gameLevel\(1) & \DATAPATHI|pointsSum\(0))))) # (\DATAPATHI|gameLevel\(0) & (\DATAPATHI|pointsSum\(1) & (!\DATAPATHI|gameLevel\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100000100000001110011010000110111001101000011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_pointsSum\(1),
	datab => \DATAPATHI|ALT_INV_gameLevel\(0),
	datac => \DATAPATHI|ALT_INV_gameLevel\(1),
	datad => \DATAPATHI|ALT_INV_pointsSum\(0),
	dataf => \DATAPATHI|ALT_INV_pointsSum\(2),
	combout => \DATAPATHI|hexpoints[2]~2_combout\);

-- Location: LABCELL_X88_Y8_N0
\DATAPATHI|hexpoints[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|hexpoints[0]~0_combout\ = (\DATAPATHI|pointsSum\(0) & (!\DATAPATHI|gameLevel\(0) & !\DATAPATHI|gameLevel\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATHI|ALT_INV_pointsSum\(0),
	datac => \DATAPATHI|ALT_INV_gameLevel\(0),
	datad => \DATAPATHI|ALT_INV_gameLevel\(1),
	combout => \DATAPATHI|hexpoints[0]~0_combout\);

-- Location: LABCELL_X88_Y9_N3
\DATAPATHI|hexpoints[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|hexpoints[1]~1_combout\ = ( !\DATAPATHI|gameLevel\(1) & ( (!\DATAPATHI|gameLevel\(0) & (\DATAPATHI|pointsSum\(1))) # (\DATAPATHI|gameLevel\(0) & ((\DATAPATHI|pointsSum\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_pointsSum\(1),
	datac => \DATAPATHI|ALT_INV_gameLevel\(0),
	datad => \DATAPATHI|ALT_INV_pointsSum\(0),
	dataf => \DATAPATHI|ALT_INV_gameLevel\(1),
	combout => \DATAPATHI|hexpoints[1]~1_combout\);

-- Location: LABCELL_X88_Y9_N18
\DATAPATHI|hexpoints[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|hexpoints[3]~3_combout\ = ( \DATAPATHI|pointsSum\(3) & ( \DATAPATHI|pointsSum\(1) & ( (!\DATAPATHI|gameLevel\(0)) # ((!\DATAPATHI|gameLevel\(1) & ((\DATAPATHI|pointsSum\(2)))) # (\DATAPATHI|gameLevel\(1) & (\DATAPATHI|pointsSum\(0)))) ) ) ) # ( 
-- !\DATAPATHI|pointsSum\(3) & ( \DATAPATHI|pointsSum\(1) & ( (!\DATAPATHI|gameLevel\(1) & (((\DATAPATHI|pointsSum\(2) & \DATAPATHI|gameLevel\(0))))) # (\DATAPATHI|gameLevel\(1) & (((!\DATAPATHI|gameLevel\(0))) # (\DATAPATHI|pointsSum\(0)))) ) ) ) # ( 
-- \DATAPATHI|pointsSum\(3) & ( !\DATAPATHI|pointsSum\(1) & ( (!\DATAPATHI|gameLevel\(1) & (((!\DATAPATHI|gameLevel\(0)) # (\DATAPATHI|pointsSum\(2))))) # (\DATAPATHI|gameLevel\(1) & (\DATAPATHI|pointsSum\(0) & ((\DATAPATHI|gameLevel\(0))))) ) ) ) # ( 
-- !\DATAPATHI|pointsSum\(3) & ( !\DATAPATHI|pointsSum\(1) & ( (\DATAPATHI|gameLevel\(0) & ((!\DATAPATHI|gameLevel\(1) & ((\DATAPATHI|pointsSum\(2)))) # (\DATAPATHI|gameLevel\(1) & (\DATAPATHI|pointsSum\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011101010100001101101010101000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_gameLevel\(1),
	datab => \DATAPATHI|ALT_INV_pointsSum\(0),
	datac => \DATAPATHI|ALT_INV_pointsSum\(2),
	datad => \DATAPATHI|ALT_INV_gameLevel\(0),
	datae => \DATAPATHI|ALT_INV_pointsSum\(3),
	dataf => \DATAPATHI|ALT_INV_pointsSum\(1),
	combout => \DATAPATHI|hexpoints[3]~3_combout\);

-- Location: LABCELL_X88_Y9_N27
\DATAPATHI|DISPLAY2D|saida[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|DISPLAY2D|saida[1]~2_combout\ = ( \DATAPATHI|hexpoints[3]~3_combout\ & ( (!\DATAPATHI|showingResult~q\) # ((!\DATAPATHI|hexpoints[0]~0_combout\ & (\DATAPATHI|hexpoints[2]~2_combout\)) # (\DATAPATHI|hexpoints[0]~0_combout\ & 
-- ((\DATAPATHI|hexpoints[1]~1_combout\)))) ) ) # ( !\DATAPATHI|hexpoints[3]~3_combout\ & ( (!\DATAPATHI|showingResult~q\) # ((\DATAPATHI|hexpoints[2]~2_combout\ & (!\DATAPATHI|hexpoints[0]~0_combout\ $ (!\DATAPATHI|hexpoints[1]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111011100110011011101110011011100110111111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_hexpoints[2]~2_combout\,
	datab => \DATAPATHI|ALT_INV_showingResult~q\,
	datac => \DATAPATHI|ALT_INV_hexpoints[0]~0_combout\,
	datad => \DATAPATHI|ALT_INV_hexpoints[1]~1_combout\,
	dataf => \DATAPATHI|ALT_INV_hexpoints[3]~3_combout\,
	combout => \DATAPATHI|DISPLAY2D|saida[1]~2_combout\);

-- Location: LABCELL_X88_Y9_N42
\DATAPATHI|DISPLAY2D|saida[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|DISPLAY2D|saida[2]~3_combout\ = ( \DATAPATHI|hexpoints[3]~3_combout\ & ( (!\DATAPATHI|showingResult~q\) # ((\DATAPATHI|hexpoints[2]~2_combout\ & ((!\DATAPATHI|hexpoints[0]~0_combout\) # (\DATAPATHI|hexpoints[1]~1_combout\)))) ) ) # ( 
-- !\DATAPATHI|hexpoints[3]~3_combout\ & ( (!\DATAPATHI|showingResult~q\) # ((\DATAPATHI|hexpoints[1]~1_combout\ & (!\DATAPATHI|hexpoints[0]~0_combout\ & !\DATAPATHI|hexpoints[2]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010011110000111101001111000011110000111111011111000011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_hexpoints[1]~1_combout\,
	datab => \DATAPATHI|ALT_INV_hexpoints[0]~0_combout\,
	datac => \DATAPATHI|ALT_INV_showingResult~q\,
	datad => \DATAPATHI|ALT_INV_hexpoints[2]~2_combout\,
	dataf => \DATAPATHI|ALT_INV_hexpoints[3]~3_combout\,
	combout => \DATAPATHI|DISPLAY2D|saida[2]~3_combout\);

-- Location: LABCELL_X88_Y9_N45
\DATAPATHI|DISPLAY2D|saida[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|DISPLAY2D|saida[3]~4_combout\ = ( \DATAPATHI|showingResult~q\ & ( (!\DATAPATHI|hexpoints[0]~0_combout\ & ((!\DATAPATHI|hexpoints[1]~1_combout\ & (!\DATAPATHI|hexpoints[3]~3_combout\ & \DATAPATHI|hexpoints[2]~2_combout\)) # 
-- (\DATAPATHI|hexpoints[1]~1_combout\ & (\DATAPATHI|hexpoints[3]~3_combout\ & !\DATAPATHI|hexpoints[2]~2_combout\)))) # (\DATAPATHI|hexpoints[0]~0_combout\ & (!\DATAPATHI|hexpoints[1]~1_combout\ $ (((\DATAPATHI|hexpoints[2]~2_combout\))))) ) ) # ( 
-- !\DATAPATHI|showingResult~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100100110100100010010011010010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_hexpoints[1]~1_combout\,
	datab => \DATAPATHI|ALT_INV_hexpoints[0]~0_combout\,
	datac => \DATAPATHI|ALT_INV_hexpoints[3]~3_combout\,
	datad => \DATAPATHI|ALT_INV_hexpoints[2]~2_combout\,
	dataf => \DATAPATHI|ALT_INV_showingResult~q\,
	combout => \DATAPATHI|DISPLAY2D|saida[3]~4_combout\);

-- Location: LABCELL_X88_Y9_N36
\DATAPATHI|DISPLAY2D|saida[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|DISPLAY2D|saida[4]~5_combout\ = ( \DATAPATHI|hexpoints[3]~3_combout\ & ( (!\DATAPATHI|showingResult~q\) # ((!\DATAPATHI|hexpoints[1]~1_combout\ & (\DATAPATHI|hexpoints[0]~0_combout\ & !\DATAPATHI|hexpoints[2]~2_combout\))) ) ) # ( 
-- !\DATAPATHI|hexpoints[3]~3_combout\ & ( (!\DATAPATHI|showingResult~q\) # (((!\DATAPATHI|hexpoints[1]~1_combout\ & \DATAPATHI|hexpoints[2]~2_combout\)) # (\DATAPATHI|hexpoints[0]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111101111110011111110111111001110110011001100111011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_hexpoints[1]~1_combout\,
	datab => \DATAPATHI|ALT_INV_showingResult~q\,
	datac => \DATAPATHI|ALT_INV_hexpoints[0]~0_combout\,
	datad => \DATAPATHI|ALT_INV_hexpoints[2]~2_combout\,
	dataf => \DATAPATHI|ALT_INV_hexpoints[3]~3_combout\,
	combout => \DATAPATHI|DISPLAY2D|saida[4]~5_combout\);

-- Location: LABCELL_X88_Y9_N39
\DATAPATHI|DISPLAY2D|saida[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|DISPLAY2D|saida[5]~6_combout\ = ( \DATAPATHI|hexpoints[3]~3_combout\ & ( (!\DATAPATHI|showingResult~q\) # ((!\DATAPATHI|hexpoints[1]~1_combout\ & (\DATAPATHI|hexpoints[0]~0_combout\ & \DATAPATHI|hexpoints[2]~2_combout\))) ) ) # ( 
-- !\DATAPATHI|hexpoints[3]~3_combout\ & ( (!\DATAPATHI|showingResult~q\) # ((!\DATAPATHI|hexpoints[1]~1_combout\ & (\DATAPATHI|hexpoints[0]~0_combout\ & !\DATAPATHI|hexpoints[2]~2_combout\)) # (\DATAPATHI|hexpoints[1]~1_combout\ & 
-- ((!\DATAPATHI|hexpoints[2]~2_combout\) # (\DATAPATHI|hexpoints[0]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111111001101110111111100110111001100110011101100110011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_hexpoints[1]~1_combout\,
	datab => \DATAPATHI|ALT_INV_showingResult~q\,
	datac => \DATAPATHI|ALT_INV_hexpoints[0]~0_combout\,
	datad => \DATAPATHI|ALT_INV_hexpoints[2]~2_combout\,
	dataf => \DATAPATHI|ALT_INV_hexpoints[3]~3_combout\,
	combout => \DATAPATHI|DISPLAY2D|saida[5]~6_combout\);

-- Location: LABCELL_X88_Y9_N6
\DATAPATHI|DISPLAY2D|saida[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|DISPLAY2D|saida[6]~7_combout\ = ( \DATAPATHI|hexpoints[3]~3_combout\ & ( (!\DATAPATHI|showingResult~q\) # ((\DATAPATHI|hexpoints[2]~2_combout\ & (!\DATAPATHI|hexpoints[1]~1_combout\ & !\DATAPATHI|hexpoints[0]~0_combout\))) ) ) # ( 
-- !\DATAPATHI|hexpoints[3]~3_combout\ & ( (!\DATAPATHI|showingResult~q\) # ((!\DATAPATHI|hexpoints[2]~2_combout\ & (!\DATAPATHI|hexpoints[1]~1_combout\)) # (\DATAPATHI|hexpoints[2]~2_combout\ & (\DATAPATHI|hexpoints[1]~1_combout\ & 
-- \DATAPATHI|hexpoints[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110011101101111011001110110111011100110011001101110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_hexpoints[2]~2_combout\,
	datab => \DATAPATHI|ALT_INV_showingResult~q\,
	datac => \DATAPATHI|ALT_INV_hexpoints[1]~1_combout\,
	datad => \DATAPATHI|ALT_INV_hexpoints[0]~0_combout\,
	dataf => \DATAPATHI|ALT_INV_hexpoints[3]~3_combout\,
	combout => \DATAPATHI|DISPLAY2D|saida[6]~7_combout\);

-- Location: LABCELL_X88_Y9_N57
\DATAPATHI|hexpoints[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|hexpoints[4]~5_combout\ = ( \DATAPATHI|pointsSum\(1) & ( (!\DATAPATHI|gameLevel\(0) & (((\DATAPATHI|pointsSum\(2) & \DATAPATHI|gameLevel\(1))))) # (\DATAPATHI|gameLevel\(0) & (((\DATAPATHI|gameLevel\(1))) # (\DATAPATHI|pointsSum\(3)))) ) ) # ( 
-- !\DATAPATHI|pointsSum\(1) & ( (!\DATAPATHI|gameLevel\(0) & (((\DATAPATHI|pointsSum\(2) & \DATAPATHI|gameLevel\(1))))) # (\DATAPATHI|gameLevel\(0) & (\DATAPATHI|pointsSum\(3) & ((!\DATAPATHI|gameLevel\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100000100010000110000010001001111110001000100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_pointsSum\(3),
	datab => \DATAPATHI|ALT_INV_gameLevel\(0),
	datac => \DATAPATHI|ALT_INV_pointsSum\(2),
	datad => \DATAPATHI|ALT_INV_gameLevel\(1),
	dataf => \DATAPATHI|ALT_INV_pointsSum\(1),
	combout => \DATAPATHI|hexpoints[4]~5_combout\);

-- Location: LABCELL_X88_Y9_N54
\DATAPATHI|hexpoints[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|hexpoints[5]~4_combout\ = ( \DATAPATHI|gameLevel\(1) & ( (!\DATAPATHI|gameLevel\(0) & ((\DATAPATHI|pointsSum\(3)))) # (\DATAPATHI|gameLevel\(0) & (\DATAPATHI|pointsSum\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATHI|ALT_INV_gameLevel\(0),
	datac => \DATAPATHI|ALT_INV_pointsSum\(2),
	datad => \DATAPATHI|ALT_INV_pointsSum\(3),
	dataf => \DATAPATHI|ALT_INV_gameLevel\(1),
	combout => \DATAPATHI|hexpoints[5]~4_combout\);

-- Location: LABCELL_X88_Y9_N12
\DATAPATHI|hexpoints[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|hexpoints\(6) = ( \DATAPATHI|gameLevel\(0) & ( (\DATAPATHI|gameLevel\(1) & \DATAPATHI|pointsSum\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DATAPATHI|ALT_INV_gameLevel\(1),
	datad => \DATAPATHI|ALT_INV_pointsSum\(3),
	dataf => \DATAPATHI|ALT_INV_gameLevel\(0),
	combout => \DATAPATHI|hexpoints\(6));

-- Location: LABCELL_X88_Y9_N15
\DATAPATHI|DISPLAY3D|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|DISPLAY3D|saida~0_combout\ = ( \DATAPATHI|hexpoints\(6) & ( (\DATAPATHI|showingResult~q\ & ((\DATAPATHI|hexpoints[5]~4_combout\) # (\DATAPATHI|hexpoints[4]~5_combout\))) ) ) # ( !\DATAPATHI|hexpoints\(6) & ( (\DATAPATHI|showingResult~q\ & 
-- ((!\DATAPATHI|hexpoints[4]~5_combout\) # (\DATAPATHI|hexpoints[5]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110011001100000011001100000011001100110000001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATHI|ALT_INV_showingResult~q\,
	datac => \DATAPATHI|ALT_INV_hexpoints[4]~5_combout\,
	datad => \DATAPATHI|ALT_INV_hexpoints[5]~4_combout\,
	dataf => \DATAPATHI|ALT_INV_hexpoints\(6),
	combout => \DATAPATHI|DISPLAY3D|saida~0_combout\);

-- Location: LABCELL_X88_Y8_N42
\DATAPATHI|DISPLAY3D|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|DISPLAY3D|saida[1]~1_combout\ = ( \DATAPATHI|gameLevel\(1) & ( \DATAPATHI|pointsSum\(3) & ( (!\DATAPATHI|showingResult~q\) # ((\DATAPATHI|gameLevel\(0) & (!\DATAPATHI|pointsSum\(1) $ (!\DATAPATHI|pointsSum\(2))))) ) ) ) # ( 
-- !\DATAPATHI|gameLevel\(1) & ( \DATAPATHI|pointsSum\(3) & ( !\DATAPATHI|showingResult~q\ ) ) ) # ( \DATAPATHI|gameLevel\(1) & ( !\DATAPATHI|pointsSum\(3) & ( !\DATAPATHI|showingResult~q\ ) ) ) # ( !\DATAPATHI|gameLevel\(1) & ( !\DATAPATHI|pointsSum\(3) & ( 
-- !\DATAPATHI|showingResult~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110111001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_pointsSum\(1),
	datab => \DATAPATHI|ALT_INV_showingResult~q\,
	datac => \DATAPATHI|ALT_INV_gameLevel\(0),
	datad => \DATAPATHI|ALT_INV_pointsSum\(2),
	datae => \DATAPATHI|ALT_INV_gameLevel\(1),
	dataf => \DATAPATHI|ALT_INV_pointsSum\(3),
	combout => \DATAPATHI|DISPLAY3D|saida[1]~1_combout\);

-- Location: MLABCELL_X82_Y7_N27
\DATAPATHI|DISPLAY3D|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|DISPLAY3D|saida[2]~2_combout\ = ( \DATAPATHI|pointsSum\(3) & ( \DATAPATHI|pointsSum\(2) & ( !\DATAPATHI|showingResult~q\ ) ) ) # ( !\DATAPATHI|pointsSum\(3) & ( \DATAPATHI|pointsSum\(2) & ( (!\DATAPATHI|showingResult~q\) # 
-- ((!\DATAPATHI|pointsSum\(1) & (\DATAPATHI|gameLevel\(1) & \DATAPATHI|gameLevel\(0)))) ) ) ) # ( \DATAPATHI|pointsSum\(3) & ( !\DATAPATHI|pointsSum\(2) & ( (!\DATAPATHI|showingResult~q\) # ((\DATAPATHI|gameLevel\(1) & !\DATAPATHI|gameLevel\(0))) ) ) ) # ( 
-- !\DATAPATHI|pointsSum\(3) & ( !\DATAPATHI|pointsSum\(2) & ( !\DATAPATHI|showingResult~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101011111010101010101010101011101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_showingResult~q\,
	datab => \DATAPATHI|ALT_INV_pointsSum\(1),
	datac => \DATAPATHI|ALT_INV_gameLevel\(1),
	datad => \DATAPATHI|ALT_INV_gameLevel\(0),
	datae => \DATAPATHI|ALT_INV_pointsSum\(3),
	dataf => \DATAPATHI|ALT_INV_pointsSum\(2),
	combout => \DATAPATHI|DISPLAY3D|saida[2]~2_combout\);

-- Location: LABCELL_X88_Y9_N24
\DATAPATHI|DISPLAY3D|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|DISPLAY3D|saida[3]~3_combout\ = ( \DATAPATHI|hexpoints\(6) & ( (\DATAPATHI|showingResult~q\ & (!\DATAPATHI|hexpoints[5]~4_combout\ $ (!\DATAPATHI|hexpoints[4]~5_combout\))) ) ) # ( !\DATAPATHI|hexpoints\(6) & ( (\DATAPATHI|showingResult~q\ & 
-- ((!\DATAPATHI|hexpoints[4]~5_combout\) # (\DATAPATHI|hexpoints[5]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000011001100110000001100000011001100000000001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATHI|ALT_INV_showingResult~q\,
	datac => \DATAPATHI|ALT_INV_hexpoints[5]~4_combout\,
	datad => \DATAPATHI|ALT_INV_hexpoints[4]~5_combout\,
	dataf => \DATAPATHI|ALT_INV_hexpoints\(6),
	combout => \DATAPATHI|DISPLAY3D|saida[3]~3_combout\);

-- Location: LABCELL_X88_Y9_N30
\DATAPATHI|display3[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|display3[4]~0_combout\ = ( \DATAPATHI|pointsSum\(3) & ( \DATAPATHI|gameLevel\(0) & ( ((!\DATAPATHI|pointsSum\(2)) # ((!\DATAPATHI|gameLevel\(1)) # (!\DATAPATHI|showingResult~q\))) # (\DATAPATHI|pointsSum\(1)) ) ) ) # ( !\DATAPATHI|pointsSum\(3) 
-- & ( \DATAPATHI|gameLevel\(0) & ( (!\DATAPATHI|showingResult~q\) # ((\DATAPATHI|pointsSum\(1) & \DATAPATHI|gameLevel\(1))) ) ) ) # ( \DATAPATHI|pointsSum\(3) & ( !\DATAPATHI|gameLevel\(0) & ( (!\DATAPATHI|showingResult~q\) # ((\DATAPATHI|pointsSum\(2) & 
-- \DATAPATHI|gameLevel\(1))) ) ) ) # ( !\DATAPATHI|pointsSum\(3) & ( !\DATAPATHI|gameLevel\(0) & ( (!\DATAPATHI|showingResult~q\) # ((\DATAPATHI|pointsSum\(2) & \DATAPATHI|gameLevel\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000011111111110000001111111111000001011111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_pointsSum\(1),
	datab => \DATAPATHI|ALT_INV_pointsSum\(2),
	datac => \DATAPATHI|ALT_INV_gameLevel\(1),
	datad => \DATAPATHI|ALT_INV_showingResult~q\,
	datae => \DATAPATHI|ALT_INV_pointsSum\(3),
	dataf => \DATAPATHI|ALT_INV_gameLevel\(0),
	combout => \DATAPATHI|display3[4]~0_combout\);

-- Location: LABCELL_X88_Y8_N33
\rtl~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~4_combout\ = ( \DATAPATHI|gameLevel\(1) & ( \DATAPATHI|pointsSum\(3) & ( (!\DATAPATHI|showingResult~q\) # ((!\DATAPATHI|gameLevel\(0)) # ((\DATAPATHI|pointsSum\(1) & \DATAPATHI|pointsSum\(2)))) ) ) ) # ( !\DATAPATHI|gameLevel\(1) & ( 
-- \DATAPATHI|pointsSum\(3) & ( (!\DATAPATHI|showingResult~q\) # (\DATAPATHI|gameLevel\(0)) ) ) ) # ( \DATAPATHI|gameLevel\(1) & ( !\DATAPATHI|pointsSum\(3) & ( ((!\DATAPATHI|showingResult~q\) # ((\DATAPATHI|pointsSum\(1) & \DATAPATHI|gameLevel\(0)))) # 
-- (\DATAPATHI|pointsSum\(2)) ) ) ) # ( !\DATAPATHI|gameLevel\(1) & ( !\DATAPATHI|pointsSum\(3) & ( !\DATAPATHI|showingResult~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100111111011111110000111111111111111111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_pointsSum\(1),
	datab => \DATAPATHI|ALT_INV_pointsSum\(2),
	datac => \DATAPATHI|ALT_INV_showingResult~q\,
	datad => \DATAPATHI|ALT_INV_gameLevel\(0),
	datae => \DATAPATHI|ALT_INV_gameLevel\(1),
	dataf => \DATAPATHI|ALT_INV_pointsSum\(3),
	combout => \rtl~4_combout\);

-- Location: MLABCELL_X87_Y7_N48
\DATAPATHI|display3[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|display3[6]~1_combout\ = ( \DATAPATHI|showingResult~q\ & ( \DATAPATHI|pointsSum\(1) & ( (!\DATAPATHI|gameLevel\(1)) # (!\DATAPATHI|pointsSum\(3) $ (((\DATAPATHI|gameLevel\(0) & \DATAPATHI|pointsSum\(2))))) ) ) ) # ( !\DATAPATHI|showingResult~q\ 
-- & ( \DATAPATHI|pointsSum\(1) ) ) # ( \DATAPATHI|showingResult~q\ & ( !\DATAPATHI|pointsSum\(1) & ( (!\DATAPATHI|gameLevel\(1)) # ((!\DATAPATHI|pointsSum\(3) & ((!\DATAPATHI|gameLevel\(0)) # (!\DATAPATHI|pointsSum\(2))))) ) ) ) # ( 
-- !\DATAPATHI|showingResult~q\ & ( !\DATAPATHI|pointsSum\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111001111100011111111111111111111110011111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_gameLevel\(0),
	datab => \DATAPATHI|ALT_INV_pointsSum\(3),
	datac => \DATAPATHI|ALT_INV_gameLevel\(1),
	datad => \DATAPATHI|ALT_INV_pointsSum\(2),
	datae => \DATAPATHI|ALT_INV_showingResult~q\,
	dataf => \DATAPATHI|ALT_INV_pointsSum\(1),
	combout => \DATAPATHI|display3[6]~1_combout\);

-- Location: MLABCELL_X87_Y7_N24
\DATAPATHI|display4[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|display4[0]~0_combout\ = ( \DATAPATHI|gameLevel\(1) & ( (\CONTROLLER|actualS.Setup~q\) # (\DATAPATHI|playingSig~2_combout\) ) ) # ( !\DATAPATHI|gameLevel\(1) & ( (!\DATAPATHI|gameLevel\(0) & ((\CONTROLLER|actualS.Setup~q\) # 
-- (\DATAPATHI|playingSig~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110001001100010011000100110001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_playingSig~2_combout\,
	datab => \DATAPATHI|ALT_INV_gameLevel\(0),
	datac => \CONTROLLER|ALT_INV_actualS.Setup~q\,
	dataf => \DATAPATHI|ALT_INV_gameLevel\(1),
	combout => \DATAPATHI|display4[0]~0_combout\);

-- Location: LABCELL_X88_Y7_N3
\DATAPATHI|display4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|display4~1_combout\ = ( \CONTROLLER|actualS.Setup~q\ ) # ( !\CONTROLLER|actualS.Setup~q\ & ( \DATAPATHI|playingSig~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DATAPATHI|ALT_INV_playingSig~2_combout\,
	dataf => \CONTROLLER|ALT_INV_actualS.Setup~q\,
	combout => \DATAPATHI|display4~1_combout\);

-- Location: LABCELL_X88_Y7_N51
\DATAPATHI|display4[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|display4[2]~2_combout\ = ( \CONTROLLER|actualS.Setup~q\ & ( (!\DATAPATHI|gameLevel\(0) & \DATAPATHI|gameLevel\(1)) ) ) # ( !\CONTROLLER|actualS.Setup~q\ & ( (!\DATAPATHI|playingSig~2_combout\) # ((!\DATAPATHI|gameLevel\(0) & 
-- \DATAPATHI|gameLevel\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001100111111110000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATHI|ALT_INV_gameLevel\(0),
	datac => \DATAPATHI|ALT_INV_gameLevel\(1),
	datad => \DATAPATHI|ALT_INV_playingSig~2_combout\,
	dataf => \CONTROLLER|ALT_INV_actualS.Setup~q\,
	combout => \DATAPATHI|display4[2]~2_combout\);

-- Location: LABCELL_X88_Y7_N42
\DATAPATHI|display4[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|display4[4]~3_combout\ = ( !\DATAPATHI|gameLevel\(0) & ( (\DATAPATHI|playingSig~2_combout\) # (\CONTROLLER|actualS.Setup~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLLER|ALT_INV_actualS.Setup~q\,
	datac => \DATAPATHI|ALT_INV_playingSig~2_combout\,
	dataf => \DATAPATHI|ALT_INV_gameLevel\(0),
	combout => \DATAPATHI|display4[4]~3_combout\);

-- Location: LABCELL_X88_Y7_N30
\DATAPATHI|display4~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|display4~4_combout\ = ( !\DATAPATHI|gameLevel\(1) & ( (!\DATAPATHI|gameLevel\(0) & ((\DATAPATHI|playingSig~2_combout\) # (\CONTROLLER|actualS.Setup~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110000001100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLLER|ALT_INV_actualS.Setup~q\,
	datac => \DATAPATHI|ALT_INV_gameLevel\(0),
	datad => \DATAPATHI|ALT_INV_playingSig~2_combout\,
	dataf => \DATAPATHI|ALT_INV_gameLevel\(1),
	combout => \DATAPATHI|display4~4_combout\);

-- Location: MLABCELL_X87_Y7_N18
\DATAPATHI|display4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAPATHI|display4~5_combout\ = ( \DATAPATHI|gameLevel\(1) & ( (!\DATAPATHI|playingSig~2_combout\ & !\CONTROLLER|actualS.Setup~q\) ) ) # ( !\DATAPATHI|gameLevel\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATHI|ALT_INV_playingSig~2_combout\,
	datab => \CONTROLLER|ALT_INV_actualS.Setup~q\,
	dataf => \DATAPATHI|ALT_INV_gameLevel\(1),
	combout => \DATAPATHI|display4~5_combout\);

-- Location: LABCELL_X88_Y7_N57
\CONTROLLER|display5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONTROLLER|display5~0_combout\ = (\CONTROLLER|actualS.Game~q\) # (\CONTROLLER|actualS.Setup~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLLER|ALT_INV_actualS.Setup~q\,
	datac => \CONTROLLER|ALT_INV_actualS.Game~q\,
	combout => \CONTROLLER|display5~0_combout\);

-- Location: IOIBUF_X40_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LABCELL_X66_Y35_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


