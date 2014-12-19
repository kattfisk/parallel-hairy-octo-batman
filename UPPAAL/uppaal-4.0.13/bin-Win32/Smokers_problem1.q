//This file was generated from (Academic) UPPAAL 4.0.13 (rev. 4577), September 2010

/*
The agent will eventually continue to the critical section
*/
//E<> A.Items_tabled

/*
The amount of an item on the table is 0 or 1 guaranteeing that access to the critical section is done in correct order. 
*/
//A[] A.items_on_table[1] == 0 || A.items_on_table[1] == 1

/*
This is a check for mutual exclusion between the agent and a smoker.
*/
//E<> A.Await_clear && S0.Picking_up

/*
Not deadlock should be a global invariant.
*/
A[] !deadlock
