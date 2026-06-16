

* **SystemVerilog FIFO Interface & Testbench**
* **Overview:** This section implements a modern SystemVerilog verification environment for the FIFO module. By utilizing a SystemVerilog `interface`, the design abstracts away repetitive port wiring, resulting in cleaner, safer, and more maintainable top-level connections.


* **FIFO Interface (fifo_if.sv)**
* **Role:** Signal Bundle and Protocol Definition.
* **Description:** Replaces individual port connections with a single, unified communication bus. It encapsulates all necessary control, data, and status signals required for FIFO operation.
* **Signals Included:**
* Synchronous controls: clk, rst.
* Operation enables: wr_en, rd_en.
* Data buses: data_in [7:0], data_out [7:0].
* Status flags: full, empty.


* **Key Feature (Modports):** Defines specific directional views of the interface to prevent accidental wire-crossing.
* dut (Device Under Test): Sets the perspective for the physical FIFO module (e.g., data_in is an input, full is an output).
* tb (Testbench): Sets the reverse perspective for the stimulus generator (e.g., data_in is an output, full is an input).




* **Interface Testbench (tb_fifo_interface.sv)**
* **Role:** Verification Environment.
* **Description:** A top-level simulation wrapper that instantiates both the SystemVerilog interface and the standard Verilog FIFO module.
* **Key Operations:**
* **Clock Generation:** Drives a continuous 100MHz system clock.
* **Clean Instantiation:** Maps the standard physical ports of the `fifo` directly to the `intf` bundle (e.g., `.wr_en(intf.wr_en)`), drastically reducing code clutter.
* **Stimulus Injection:** Safely tests edge cases by writing a rapid burst of hexadecimal data (AA, BB, CC) into the buffer, pausing, and then reading the data back out to verify First-In-First-Out sequential integrity.
