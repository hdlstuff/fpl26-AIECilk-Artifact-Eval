# General structure for the algorithm

Main kernel expects to be the single PE. It reads the main task parameters, spawns vertex map task for each vertex, and collects the results.

Vertex map task is divided into subtasks around each memory read/write.

1. ReadVertex: Read Neighbors pointer (single read), count (single read) from memory.
2. ReadNeighborIds: Read neighbor ids (stream) from memory.
3. ReadNeighbors: Read current PageRank value (single read) for the vertex itself, and for each neighbor, read its current PageRank value from memory (single read) and its degree (single read).
4. Process: Compute contribution and write it back to memory (single write). spawn main kernel again with the difference.

