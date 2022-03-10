----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/10/2022 04:18:14 PM
-- Design Name: 
-- Module Name: top - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top is
    Port ( clk : in STD_LOGIC;
           BTNC : in STD_LOGIC;
           SW   : in STD_LOGIC;
           LED  : out STD_LOGIC_VECTOR (3 downto 0));
end top;

architecture Behavioral of top is

    signal q_0 : STD_LOGIC;
    signal q_1 : STD_LOGIC;
    signal q_2 : STD_LOGIC;
    signal q_3 : STD_LOGIC;
    

begin
    --------------------------------------------------------
    -- p_d_ff_rst:
    -- D type flip-flop with a high-active sync reset,
    -- rising-edge clk.
    -- q(n+1) = d
    --------------------------------------------------------
    p_top : process(clk)
    begin
        if rising_edge(clk) then  -- Synchronous process
            if (BTNC = '1') then
                q_0     <= '0';
                q_1     <= '0';
                q_2     <= '0';
                q_3     <= '0';
          
            
            else 
                
                q_0        <= SW;
                q_1        <= q_0;
                q_2        <= q_1;
                q_3        <= q_2;            
            
                LED(0)     <= q_0;
                LED(1)     <= q_1;
                LED(2)     <= q_2;
                LED(3)     <= q_3;
                --q_bar <= not SW;
            end if;
        end if;
    end process p_top;
end architecture Behavioral;
