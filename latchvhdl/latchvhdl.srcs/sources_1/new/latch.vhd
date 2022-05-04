----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.05.2022 15:13:07
-- Design Name: 
-- Module Name: latch - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------



-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity mux is
    port (
    a, b, s: in std_logic;
    y: out std_logic);
end mux;

architecture dataflow of mux is
    begin
    y <= (not s and a) or (s and b);
end dataflow; 