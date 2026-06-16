<img width="1675" height="942" alt="image" src="https://github.com/user-attachments/assets/dcfd7df5-613d-4a0c-994e-e7cf66ff560c" />


* **SR Flip-Flop (`sr_flipflop.v`)**
* **Description:** A fundamental sequential logic memory element. This positive-edge triggered Set-Reset flip-flop holds its state until a clock edge occurs, at which point it reads the inputs to determine the next state.
* **Ports:**
* `input clk`: Clock signal (triggers on positive edge).
* `input s, r`: Set and Reset control inputs.
* `output reg q`: Main stored memory bit.
* `output q_bar`: Inverted output (`~q`).


* **Behavior (at positive clock edge):**
* `s=0`, `r=0` $\rightarrow$ No Change (Holds current state)
* `s=1`, `r=0` $\rightarrow$ Set (`q` becomes 1)
* `s=0`, `r=1` $\rightarrow$ Reset (`q` becomes 0)
* `s=1`, `r=1` $\rightarrow$ Invalid / Restricted state
