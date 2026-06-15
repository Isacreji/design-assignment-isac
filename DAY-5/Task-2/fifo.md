<img width="1679" height="948" alt="image" src="https://github.com/user-attachments/assets/d35fef4a-c4b4-40a6-95cc-23610595ce57" />
A Synchronous FIFO (First-In-First-Out) is a memory buffer that uses a single clock (clk) for both reading and writing. Based on your waveform, it holds 16 items (Depth) that are 8 bits wide (Width).

Core Components
Memory Array (mem): The physical storage slots for the data.

Write Pointer (wr_ptr): Tracks the address for the next write operation. Wraps to 0 after 15.

Read Pointer (rd_ptr): Tracks the address for the next read operation. Wraps to 0 after 15.

Tracker (count): A counter (0 to 16) that tracks exactly how many unread items are inside the FIFO.

Operations
Write (wr_en = 1): Safely writes data_in to memory only if the FIFO is not full. The wr_ptr and count both increase by 1.

Read (rd_en = 1): Safely reads data_out from memory only if the FIFO is not empty. The rd_ptr increases by 1, and the count decreases by 1.

Reset (rst = 1): Clears both pointers and the count to 0, setting the FIFO to an empty state.

Status Flags (Safeguards)
Empty Flag (empty = 1): Triggers when count == 0. It blocks further reading.

Full Flag (full = 1): Triggers when count == 16. It blocks further writing so old data is not overwritten.
