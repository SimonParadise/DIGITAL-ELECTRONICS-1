----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/24/2022 03:45:46 PM
-- Design Name: 
-- Module Name: tb_driver_7seg_4digits - Behavioral
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

entity tb_driver_7seg_4digits is
        
end entity tb_driver_7seg_4digits;

architecture testbench of tb_driver_7seg_4digits is

    -- Local constants
    constant c_CLK_100MHZ_PERIOD : time := 10 ns;

    -- Local signals
    signal s_clk_100MHz : std_logic;
    signal s_reset      : std_logic;
    signal s_data0 : std_logic_vector(4 - 1 downto 0);
    signal s_data1 : std_logic_vector(4 - 1 downto 0);
    signal s_data2 : std_logic_vector(4 - 1 downto 0);
    signal s_data3 : std_logic_vector(4 - 1 downto 0);
    signal s_dp_i    : std_logic_vector(4 - 1 downto 0);
    signal s_dp_o    : std_logic;
    signal s_seg_o   : std_logic_vector(7 - 1 downto 0);
    signal s_dig_o   : std_logic_vector(4 - 1 downto 0);
    -- WRITE YOUR CODE HERE

begin
    
   
    -- Connecting testbench signals with driver_7seg_4digits
    -- entity (Unit Under Test)

    uut_driver : entity work.driver_7seg_4digits 
    port map(
        clk      => s_clk_100MHz,
        reset    => s_reset,
        data0_i  => s_data0,
        data1_i  => s_data1,
        data2_i  => s_data2,
        data3_i  => s_data3,
        dp_i     => s_dp_i,
        dp_o     => s_dp_o,
        seg_o    => s_seg_o,
        dig_o    => s_dig_o
        );
        -- WRITE YOUR CODE HERE

    --------------------------------------------------------
    -- Clock generation process
    --------------------------------------------------------
    p_clk_gen : process
    begin
        while now < 750 ns loop -- 75 periods of 100MHz clock
            s_clk_100MHz <= '0';
            wait for c_CLK_100MHZ_PERIOD / 2;
            s_clk_100MHz <= '1';
            wait for c_CLK_100MHZ_PERIOD / 2;
        end loop;
        wait;
    end process p_clk_gen;

    --------------------------------------------------------
    -- Reset generation process
    --------------------------------------------------------
    p_reset_gen : process
    begin
       
            s_reset <= '1';
            wait for "12ns";
            s_reset <= '0';
            
        
    end process p_reset_gen;-- WRITE YOUR CODE HERE

    --------------------------------------------------------
    -- Data generation process
    --------------------------------------------------------
     p_stimulus : process
    begin
        report "stimulus process started" severity note;
        s_data3 <= "0011";
        s_data2 <= "0001";
        s_data1 <= "0100";
        s_data0 <= "0010";
        s_dp_i  <= "0111"; 
    end process p_stimulus;-- WRITE YOUR CODE HERE

end architecture testbench;

