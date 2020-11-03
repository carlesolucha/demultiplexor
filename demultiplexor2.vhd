library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Necesito n c (variables de control) para segun las 2^n salidas
--https://www.youtube.com/watch?v=HpTPLreTJ2A
entity demultiplexor2 is
	port(
	E  : in std_logic;
	c  : in std_logic_vector(1 downto 0);
	s  : out std_logic_vector(3 downto 0));
end demultiplexor2;

architecture behavioral of demultiplexor2 is
begin 
	with c select	
		s<= 	"000" & E when "00",
				"00" & E & "0" when "01",
				"0" & E & "00" when "10",
				E & "000" when "11",
				"0000" when others;
	
end behavioral;
