library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity LogicalStep_Lab3_top is port (
   clkin_50		: in	std_logic;
	pb				: in	std_logic_vector(3 downto 0);
 	sw   			: in  std_logic_vector(7 downto 0); -- The switch inputs
   leds			: out std_logic_vector(7 downto 0);	-- for displaying the switch content
   seg7_data 	: out std_logic_vector(6 downto 0); -- 7-bit outputs to a 7-segment
	seg7_char1  : out	std_logic;							-- seg7 digi selectors
	seg7_char2  : out	std_logic							-- seg7 digi selectors
	
); 
end LogicalStep_Lab3_top;

architecture Energy_Monitor of LogicalStep_Lab3_top is

component Compx4 is
   port (
			 in_a 		: in  std_logic_vector(3 downto 0);
			 in_b 		: in  std_logic_vector(3 downto 0);
			 mag			: out	std_logic_vector(2 downto 0)
        );
end component;

signal in_a 	: std_logic_vector(3 downto 0);
signal in_b 	: std_logic_vector(3 downto 0);
signal output 	: std_logic_vector(2 downto 0);

begin
	
	in_a <= sw(3 downto 0);
	in_b <= sw(7 downto 4);
	
	INST1 : Compx4 port map (in_a, in_b, output);
	
	leds <= "00000" & output;
	
 
end Energy_Monitor;
