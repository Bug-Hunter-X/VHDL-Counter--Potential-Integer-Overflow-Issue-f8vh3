```vhdl
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity buggy_counter_solution is
  port (
    clk : in std_logic;
    rst : in std_logic;
    count_out : out integer range 0 to 15
  );
end entity buggy_counter_solution;

architecture behavioral of buggy_counter_solution is
  signal count : integer range 0 to 15 := 0;
begin
  process (clk, rst)
  begin
    if rst = '1' then
      count <= 0;
    elsif rising_edge(clk) then
      count <= (count + 1) mod 16; -- Use modulo for safe rollover
    end if;
  end process;

  count_out <= count; 
end architecture behavioral;
```