----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.05.2022 17:02:07
-- Design Name: 
-- Module Name: dflipflopvhdl - Behavioral
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

use IEEE.STD_LOGIC_ARITH.ALL;

use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity dffdf is

Port ( d,clk : in  STD_LOGIC;

q,qb : inout STD_LOGIC);

end dffdf;

architecture dffdfar of dffdf is

signal d1,s1,r1:STD_LOGIC;

begin

s1 <= d nand clk;

d1 <= d nand d;

r1 <= d1 nand clk;

q <= s1 nand qb;

qb <= r1 nand q;

end dffdfar ;