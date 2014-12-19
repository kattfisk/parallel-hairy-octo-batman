//This file was generated from (Academic) UPPAAL 4.0.13 (rev. 4577), September 2010

/*
Never too many people in bathroom
*/
A[] !((Men_in_Bathroom + Women_in_Bathroom) > Bathroom_limit)

/*
There are never men and women in the bathroom at the same time.
*/
A[] !((M1.inCS || M2.inCS) && (W1.inCS || W2.inCS))

/*
No deadlock
*/
A[] !deadlock

/*
Some process will enter CS
*/
E<> (M1.inCS || M2.inCS || W1.inCS || W2.inCS)
