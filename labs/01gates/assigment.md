# Lab 1: SIMON BUCHTA

### De Morgan's laws

1. Equations of all three versions of logic function f(c,b,a):

   ![Logic function](images/equations.png)![de1 nand nor org](https://user-images.githubusercontent.com/99410540/153928468-d8d97757-05f2-4441-a9db-b1c37951d161.png)


2. Listing of VHDL architecture from design file (`design.vhd`) for all three functions. Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

```vhdl
architecture dataflow of demorgan is
begin
    f_o      <= (not(b_i) and a_i) or (not(c_i) and not(b_i)); -- WRITE YOUR CODE HERE
    f_nand_o <= (((b_i nand b_i) nand a_i) nand ((b_i nand b_i) nand (c_i nand c_i))); -- WRITE YOUR CODE HERE
    f_nor_o  <= (((a_i nor a_i) nor b_i) nor (b_i nor c_i)) nor (((a_i nor a_i) nor b_i) nor (b_i nor c_i))-- WRITE YOUR CODE HERE
end architecture dataflow;
```

3. Complete table with logic functions' values:

| **c** | **b** |**a** | **f(c,b,a)** | **f_NAND(c,b,a)** | **f_NOR(c,b,a)** |
| :-: | :-: | :-: | :-: | :-: | :-: |
| 0 | 0 | 0 | 1 | 1 | 1 |
| 0 | 0 | 1 | 1 | 1 | 1 |
| 0 | 1 | 0 | 0 | 0 | 0 |
| 0 | 1 | 1 | 0 | 0 | 0 |
| 1 | 0 | 0 | 0 | 0 | 0 |
| 1 | 0 | 1 | 1 | 1 | 1 |
| 1 | 1 | 0 | 0 | 0 | 0 |
| 1 | 1 | 1 | 0 | 0 | 0 |

### Distributive laws

1. Screenshot with simulated time waveforms. Always display all inputs and outputs (display the inputs at the top of the image, the outputs below them) at the appropriate time scale!

   ![your figure]()![de1 distributive laws](https://user-images.githubusercontent.com/99410540/153928843-71023395-9e94-4ad6-8b3c-31741dd2c6de.png)


2. Link to your public EDA Playground example:

   https://www.edaplayground.com/x/Vpgi
