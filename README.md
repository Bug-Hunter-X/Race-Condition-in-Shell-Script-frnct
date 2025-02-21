# Race Condition Bug in Shell Script

This repository demonstrates a race condition bug in a bash script.  Two processes attempt to write to files concurrently, which can lead to unpredictable results. The bug is demonstrated in `bug.sh`, and a solution is provided in `bugSolution.sh`.

## Bug Description
The script creates two files and then uses two subshells to concurrently write to them. Because of this concurrency, there is a risk that one process might overwrite the other process's output leading to data loss or corruption.

## Solution
The solution employs file locking mechanisms to ensure that only one process can write to the file at a time, preventing race condition.