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
There can never be more than one item of each kind on the table.
*/
A[] (A.items_on_table[TOBACCO] <= 1 && A.items_on_table[PAPER] <= 1 && A.items_on_table[MATCHES] <= 1)

/*
There can never be more than two items on the table at the same time.
*/
A[] (A.items_on_table[TOBACCO] + A.items_on_table[PAPER] + A.items_on_table[MATCHES]) <= 2

/*
Smoker type will always have a valid value.
*/
A[] !((A.smoker_type > 3) && (A.smoker_type < 1))

/*
Not deadlock should be a global invariant.
*/
A[] !deadlock
