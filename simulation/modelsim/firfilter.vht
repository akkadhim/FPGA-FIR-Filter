-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "04/08/2018 11:21:33"
                                                            
-- Vhdl Test Bench template for design  :  firfilter
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY firfilter_vhd_tst IS
END firfilter_vhd_tst;
ARCHITECTURE firfilter_arch OF firfilter_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ADCDAT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL ADCrdy : STD_LOGIC;
SIGNAL ADCstb : STD_LOGIC;
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL DACDAT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL DACrdy : STD_LOGIC;
SIGNAL DACstb : STD_LOGIC;
SIGNAL Led_matr : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL RST_N : STD_LOGIC;
COMPONENT firfilter
	PORT (
	ADCDAT : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	ADCrdy : OUT STD_LOGIC;
	ADCstb : IN STD_LOGIC;
	CLOCK_50 : IN STD_LOGIC;
	DACDAT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	DACrdy : IN STD_LOGIC;
	DACstb : OUT STD_LOGIC;
	Led_matr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	RST_N : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : firfilter
	PORT MAP (
-- list connections between master ports and signals
	ADCDAT => ADCDAT,
	ADCrdy => ADCrdy,
	ADCstb => ADCstb,
	CLOCK_50 => CLOCK_50,
	DACDAT => DACDAT,
	DACrdy => DACrdy,
	DACstb => DACstb,
	Led_matr => Led_matr,
	RST_N => RST_N
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END firfilter_arch;
