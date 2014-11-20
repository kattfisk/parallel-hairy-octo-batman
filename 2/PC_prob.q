//This file was generated from (Academic) UPPAAL 4.0.13 (rev. 4577), September 2010

/*
Safety: No deadlock (except if we are done)
*/
A[] !deadlock || (P.End && C.End)

/*
Liveness: C will exit CS
*/
C.CS --> C.Wait

/*
Liveness: P will exit CS
*/
P.CS --> P.Wait

/*
Safety: Mutex
*/
A[] !(P.CS && C.CS)
