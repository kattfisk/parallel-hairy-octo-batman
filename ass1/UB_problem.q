//This file was generated from (Academic) UPPAAL 4.0.13 (rev. 4577), September 2010

/*
Safety: There are never men and women in the bathroom at the same time. Also, no deadlock.
*/
A[] !((M1.inCS || M2.inCS) && (W1.inCS || W2.inCS)) && !deadlock

/*

*/
M1.Wait --> M1.inCS

/*

*/
E<> (M1.inCS && W1.inCS)

/*

*/
E<> deadlock
