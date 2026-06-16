<img width="1679" height="945" alt="image" src="https://github.com/user-attachments/assets/ac3c999c-20e3-433b-8bc0-00b80d5bc1eb" />


* **2-to-4 Decoder (`decoder_2to4.v`)**
* **Description:** A combinational logic circuit that takes a 2-bit binary input and activates exactly one of the 4 output lines based on the decimal equivalent of the input.
* **Ports:**
* `input [1:0] a`: 2-bit selector input.
* `output [3:0] y`: 4-bit One-Hot output.


* **Truth Table Behavior:**
* If input is `00` $\rightarrow$ Output is `0001` (Active: `y[0]`)
* If input is `01` $\rightarrow$ Output is `0010` (Active: `y[1]`)
* If input is `10` $\rightarrow$ Output is `0100` (Active: `y[2]`)
* If input is `11` $\rightarrow$ Output is `1000` (Active: `y[3]`)


