--https://www.youtube.com/watch?v=HpTPLreTJ2A
--Meto un valor en la E y ese valor pasará a ser por el canal que me marquen el c0 y c1...
--Necesitaré tantos c como canales o posibles salidas tenga
--Si tengo [1,2] salidas me vale con 1 c
--Si tengo [3,4] salidas me vale con 2 c
--Si tengo [5,8] salidas me vale con 3 c
--Conclusión me valen 2^n
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity demultiplexor is
	port(
	E  : in std_logic;
	c0 : in std_logic;
	c1 : in std_logic;
	s0 : out std_logic;
	s1 : out std_logic;
	s2 : out std_logic;
	s3 : out std_logic);
end demultiplexor;

architecture behavioral of demultiplexor is
begin
	--1) una manera de hacer lo es así:
	s0 <= E and (not (c1) and not(c0));
	s1 <= E and (not(c1) and c0);
	s2 <= E and (c1 and not(c0));
	s3 <= E and (c1 and c0);
	--2) otra forma de hacerlo es asi:
	--with c select	
	--s<= 	--	"0001" when "00",
				--	"0010" when "01",
				--	"0100" when "10",
				-- "1000" when "11",
				-- "0000" when others;
end behavioral;
