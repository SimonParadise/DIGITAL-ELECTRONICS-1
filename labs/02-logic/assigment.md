# Lab 2: SIMON BUCHTA

### 2-bit comparator

1. Karnaugh maps for other two functions:

   B Greater than A:

   ![k map B greater A final](https://user-images.githubusercontent.com/99410540/155278408-24b752f8-9963-453d-8890-ee61d3ec975f.jpg)


   B Less than A:
   ![K map B less A final](https://user-images.githubusercontent.com/99410540/155278572-6efd14b1-bcb8-4e5a-a07d-075a1b42fc60.jpg)

   

2. Equations of simplified SoP (Sum of the Products) form of the "B greater than A" function and simplified PoS (Product of the Sums) form of the "B less than A" function.

   Sum of products (B greater than A):
   ![sum of products B greater A final](https://user-images.githubusercontent.com/99410540/155278972-a9186d20-020f-429d-8265-999a56fd3a0b.jpg)

   
   Product of sums (B less than A):
   ![product of sums B less A final](https://user-images.githubusercontent.com/99410540/155278949-c86d12b7-1fc1-4344-a7ff-b67b1c0c4611.jpg)

### 4-bit comparator

1. Listing of VHDL stimulus process from testbench file (`testbench.vhd`) with at least one assert (use BCD codes of your student ID digits as input combinations). Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

   Last two digits of my student ID: **xxxx12**

```vhdl
    p_stimulus : process
    begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started" severity note;

        -- First test case
        s_b <= "0001"; -- Such as "0001" if ID = xxxx12
        s_a <= "0010"; -- Such as "0010" if ID = xxxx12
        wait for 100 ns;
        -- Second test case
        s_b <= "0100"; 
        s_a <= "0010"; 
        wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = '0') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '1'))
        -- If false, then report an error
        report "Input combination of secind test case FAILED" severity error;

        -- Report a note at the end of stimulus process
        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;
```

2. Text console screenshot during your simulation, including reports.
![4  bit comparator](https://user-images.githubusercontent.com/99410540/155400903-35bb7264-c7e7-4e9d-a581-40052a742f63.png)

![4 bit comparator code](https://user-images.githubusercontent.com/99410540/155400922-03e63d70-cd94-4abd-b564-b5d5de775fdc.png)


3. Link to your public EDA Playground example:

   [https://www.edaplayground.com/...](https://www.edaplayground.com/x/bCcT)

