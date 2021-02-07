library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity firfilter is 

generic
		(
			num_left_bits : natural := 16
		);
		
port(					
--	Core Side - two parallel interfaces for input and output
	ADCDAT:		in 	std_logic_vector(num_left_bits-1 downto 0);
	DACDAT:		out	std_logic_vector(num_left_bits-1 downto 0);	
	
	DACrdy: 		in	   std_logic;
	ADCrdy: 		out 	std_logic;
	
	DACstb: 		out 	std_logic;
	ADCstb: 		in 	std_logic;
		
--	Control Signals
	CLOCK_50:	in	   std_logic;
	RST_N:		in	   std_logic;
	Led_matr:	out	std_logic_vector(num_left_bits-1 downto 0)	
-- extra visual

);
end entity;

architecture rtl of firfilter is

		--	Internal Signals
		signal adc_reg	: std_logic_vector (num_left_bits-1 downto 0);		-- register to store the ADC i/p data from the codec				
		signal Led 		: integer range -16383 to 16383;
		begin

			process (CLOCK_50)
			begin
				if (rising_edge(CLOCK_50)) then
				-------------begin sync design----------------
				
				-- reset actions (synchronous)
					if (RST_N = '0') then
					
						ADCrdy <= '1';
						DACstb <= '0';
						
						
					else
						   
							----------------------------------------------------------- input channel
							if (ADCstb='1') then   				   							
										adc_reg <= ADCDAT;
										ADCrdy <= '0'; 
										Led <= to_integer(signed(ADCDAT));
										
										
							end if;
										
							if (DACrdy='1') then 
										DACstb <= '1';
										DACDAT <= adc_reg;
										ADCrdy <= '1'; 
							end if;
		
					end if;
				end if;
			end process;	
end rtl;


		

