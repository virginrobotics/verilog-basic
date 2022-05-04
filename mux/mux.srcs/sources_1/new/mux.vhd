----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.05.2022 16:15:05
-- Design Name: 
-- Module Name: mux - Behavioral
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

--1960628 Prem AYoo WHAT UP !!!
entity mux is
    port (
    a, b, s: in std_logic;
    y: out std_logic);
end mux;

architecture dataflow of mux is
    begin
        process (a , b, s)
        begin
            if s = '0' then
                y <= a;
            else
                y <= b;
            end if;
        end process;
end dataflow; 









--y dataflow <= (not s and a) or (s and b);
