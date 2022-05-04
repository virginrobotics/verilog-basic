----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.05.2022 16:16:25
-- Design Name: 
-- Module Name: tb_mux - dataflow
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


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_mux is
end entity;

architecture tb of tb_mux is
component mux is
port (a, b, s: in std_logic;
    y: out std_logic);
end component;

signal a: std_logic := '0';
signal b: std_logic := '0';
signal s: std_logic := '0';

signal y: std_logic;

begin
uut : mux port map (
            a => a,
            b => b,
            s => s,
            y => y
        ); 
process
    begin
    wait for 100 ns;
    a <= '0';
    b <= '1';
    s <= '0';
    wait for 50 ns;
    s <= '1';
    wait for 50 ns;
    a <= '1';
    b <= '0';
    s <= '0';
    wait for 50 ns;
    s <= '1';
    wait for 50 ns;
    a <= '1';
    b <= '1';
    s <= '0';
    wait for 50 ns;
    s <= '1';
    wait for 50 ns;
    wait;
end process;

end;