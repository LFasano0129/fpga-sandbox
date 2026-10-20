library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity led_blink is
    Port ( clk : in STD_LOGIC;
           led : out STD_LOGIC_VECTOR (3 downto 0));
end led_blink;

architecture Behavioral of led_blink is

begin


end Behavioral;
