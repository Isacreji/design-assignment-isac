<img width="1677" height="946" alt="image" src="https://github.com/user-attachments/assets/a091795a-1d4d-46df-9a42-915899d78f0b" />








* **D Flip-Flop (`d_flipflop.v`)**
* **Description:** A streamlined memory element that eliminates the invalid state of the SR flip-flop. It simply captures and stores whatever value is on the data input at the moment the clock ticks.
* **Ports:**
* `input clk`: Clock signal (triggers on the positive/rising edge).
* `input d`: Data input (the value to be stored).
* `output reg q`: The main stored memory bit.
* `output q_bar`: The inverted output (`~q`).


* **Behavior (at positive clock edge):**
* `d=0` $\rightarrow$ Stores a Logic 0
* `d=1` $\rightarrow$ Stores a Logic 1




