# Lab 5: ŠIMON BUCHTA

### Flip-flops

1. Listing of VHDL architecture for T-type flip-flop. Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

```vhdl
architecture testbench of tb_ff_rst is

    constant c_CLK_100MHZ_PERIOD : time := 10 ns;

    --Local signals
    signal s_clk_100MHz : std_logic;
    signal s_rst        : std_logic;
    signal s_data       : std_logic;
    signal s_d_q        : std_logic;
    signal s_t_q        : std_logic;
    --signal s_d_q_bar    : std_logic;
    signal s_t_q_bar    : std_logic;
    signal s_4d_q       : std_logic_vector(3 downto 0);
    
begin
    -- Connecting testbench signals with d_ff_rst entity
    -- (Unit Under Test)
   
    uut_t_ff_rst : entity work.t_ff_rst
        port map(
            clk   => s_clk_100MHz,
            rst   => s_rst,
            t     => s_data,
            q     => s_t_q,
            q_bar => s_t_q_bar
        );
        
  
    --------------------------------------------------------
    -- Clock generation process
    --------------------------------------------------------
    p_clk_gen : process
    begin
        while now < 200 ns loop -- 20 periods of 100MHz clock
            s_clk_100MHz <= '0';
            wait for c_CLK_100MHZ_PERIOD / 2;
            s_clk_100MHz <= '1';
            wait for c_CLK_100MHZ_PERIOD / 2;
        end loop;
        wait;                -- Process is suspended forever
    end process p_clk_gen;

    --------------------------------------------------------
    -- Reset generation process
    --------------------------------------------------------
    p_reset_gen : process
    begin
        s_rst <= '1';

        -- ACTIVATE AND DEACTIVATE RESET HERE
        wait for 11 ns;
        s_rst <= '0';
        -- wait for XXX ns;
        -- s_rst <= XXX;

        wait;
    end process p_reset_gen;

    --------------------------------------------------------
    -- Data generation process
    --------------------------------------------------------
    p_stimulus : process
    begin
        report "Stimulus process started" severity note;
        s_data <='0'; wait for 13 ns;
        s_data <='1';
        -- DEFINE YOUR INPUT DATA HERE

        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;

end architecture testbench;
```

2. Screenshot with simulated time waveforms. Try to simulate both flip-flops in a single testbench with a maximum duration of 200 ns, including reset. Always display all inputs and outputs (display the inputs at the top of the image, the outputs below them) at the appropriate time scale!
3. 
![t flip flop](https://user-images.githubusercontent.com/99410540/158691163-140b9c5a-ebaf-492f-b138-33340a1af93e.png)



### Shift register

1. Image of the shift register `top` level schematic. The image can be drawn on a computer or by hand. Always name all inputs, outputs, components and internal signals!

  ![275699173_3156403961345791_8667024105038523641_n](https://user-images.githubusercontent.com/99410540/158694031-1e237158-1f5e-46b4-b7ec-2065baba8719.jpg)

