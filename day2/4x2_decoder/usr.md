<img width="1676" height="947" alt="image" src="https://github.com/user-attachments/assets/f2fd3f38-64ea-4e8f-8d54-0c2b21f4689a" />








* **Universal Shift Register (`usr.v`)**
* **Description:** A highly versatile 4-bit sequential memory block capable of shifting data and operating in multiple input/output configurations. A 2-bit multiplexer controls the operational mode.
* **Ports:**
* `input Clk, rst`: Clock and asynchronous reset signals.
* `input Sin`: 1-bit Serial Input.
* `input [3:0] Pin`: 4-bit Parallel Input.
* `input shift, load`: Enable signals for shifting data or loading parallel data.
* `input [1:0] mod`: 2-bit operation mode selector.
* `output Sout`: 1-bit Serial Output.
* `output [3:0] Pout`: 4-bit Parallel Output.


* **Operational Modes (`mod`):**
* **00 (SISO):** Serial In, Serial Out. Data shifts in one bit at a time and reads out one bit at a time (requires `shift` enable).
* **01 (SIPO):** Serial In, Parallel Out. Data shifts in serially, but all 4 bits are read simultaneously (requires `shift` enable).
* **10 (PISO):** Parallel In, Serial Out. 4 bits are loaded instantly, then shifted out single-file (requires `load`, then `shift`).
* **11 (PIPO):** Parallel In, Parallel Out. 4 bits are loaded instantly and read instantly (requires `load` enable).
