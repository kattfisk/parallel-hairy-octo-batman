//This file was generated from (Academic) UPPAAL 4.0.13 (rev. 4577), September 2010

/*
The agent will eventually signal the smokers.
*/
A.Initial --> A.BroadcastInfo

/*
Eventual entry for some smoker
*/
E<> (S1.Smoke || S2.Smoke || S3.Smoke)

/*
If items have been put on table then they are not the same.
*/
A[] !A.CalculateSmokerType || (A.first_item != A.second_item)

/*
Smoker type will always have a valid value.
*/
A[] !((A.smoker_type > 3) && (A.smoker_type < 1))

/*
Not deadlock should be a global invariant.
*/
A[] !deadlock
