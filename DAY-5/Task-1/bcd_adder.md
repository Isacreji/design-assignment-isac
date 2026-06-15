<img width="1677" height="944" alt="image" src="https://github.com/user-attachments/assets/a6310e57-b79c-4176-a857-0f3d54a10a05" />

The system is a SystemVerilog implementation of a 4-bit Binary Coded Decimal (BCD) adder. It adds two single-digit BCD numbers and a carry-in, producing a valid BCD sum and carry-out.

1. Core Design (bcd_adder)
Mechanism: It first performs standard binary addition (temp = a + b + cin).

BCD Correction: It continually monitors the raw 5-bit sum (temp) for BCD overflows (values greater than 9).

If > 9: An overflow occurred. The logic corrects it by adding 6 to the raw sum, outputting the lower 4 bits as sum, and flagging cout as 1.

If <= 9: The result is valid. The logic outputs the raw sum directly and keeps cout at 0.

2. Interface (bcd_if)
Purpose: A clean, modern way to bundle the physical connection signals (a, b, cin, sum, cout) into a single block.

Benefit: It eliminates redundant port wiring in the testbench and makes the verification environment scalable.

3. Testbench (tb_bcd_adder)
Purpose: Verifies the hardware design by injecting test signals through the interface.

Test Cases: Evaluates two specific scenarios:

Standard Addition: Inputs 5 and 3. The sum is 8, verifying the logic works when no correction is needed.

Correction Addition: Inputs 9 and 8. The raw sum is 17, verifying the logic correctly catches the overflow, adds 6, and outputs a sum of 7 with a carry-out of 1.
