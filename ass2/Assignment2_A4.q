//This file was generated from (Commercial) UPPAAL 4.0.14 (rev. 5615), May 2014

/*
The agent will eventually continue to the critical section
*/
A.Initial --> A.BroadcastInfo

/*
The amount of tobacco on the table is 0 or 1 guaranteeing that access to the critical section is done in correct order. 
*/
A[] A.first_item != A.second_item

/*
This is a check for mutual exclusion between the agent and a smoker.
*/
E<> A.BroadcastInfo && S1.ReceiveBroadcast

/*

*/
E<> ! (A.smoker_type > 3) || (A.smoker_type < 1)

/*
Not deadlock should be a global invariant.
*/
A[] ! deadlock
