Using Ruby to move on a (square) plain.

*Assumptions*
- The plain, i.e. the space you're moving on, is infinite.
- You are moving in a straight line. If you want move NW you must first move north and then west. 
- You start at 0,0, the center of the plain. When moving south or west from the center you're coordinates will be represented as negative numbers. For example if you move 4N, 4E, 10S, and then 10W your final coordinates will be -6, -6 (west facing).