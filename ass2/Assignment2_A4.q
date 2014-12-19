//This file was generated from (Academic) UPPAAL 4.0.13 (rev. 4577), September 2010

/*
The agent will eventually continue to the critical section
*/
A.Initial --> A.Send

/*
The amount of tobacco on the table is 0 or 1 guaranteeing that access to the critical section is done in correct order. 
*/
A[] A.items_on_table[0] == 0 || A.items_on_table[0] == 1

/*
This is a check for mutual exclusion between the agent and a smoker.
*/
E<> A.PlaceItems && S1.PickingUp

/*
Not deadlock should be a global invariant.
*/
A[] ! deadlock
