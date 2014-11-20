//This file was generated from UPPAAL 3.4.6, Jun 2004

/*
It is a global invariant that M0 and M1 cannot be in state CS simultaneously, i.e., we have mutual exclusion.
*/
A[] !(M0.CS && M1.CS)

/*
If M0 is in state Wait, M0 will enter its critical section eventually.
*/
M0.Wait --> M0.CS

/*
If M0 is in state CS, It will eventually leave that state.
*/
M0.CS --> M0.Idle

/*
Not deadlock is a global invariant, i.e., it is not possible to get a deadlock.
*/
A[] !deadlock
