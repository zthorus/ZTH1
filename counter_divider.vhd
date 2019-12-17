-- counter divider (to test ZTH1 slowly)

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all; 

entity counter_divider is
  port (
    clk_in :  in std_logic;
	 clk_out : out std_logic
  );
 end counter_divider;
	
architecture behavior of counter_divider is
  begin
    process(clk_in)
	   variable c : integer := 0;
		begin
		  if (rising_edge(clk_in)) then
		    c:= c + 1;
			 if (c >= 1000) then
			   c := 0;
				clk_out <= '1';
			 else
			   clk_out <= '0';
			 end if;
		  end if;
	end process;
end behavior;	