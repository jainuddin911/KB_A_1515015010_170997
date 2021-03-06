/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH07E03.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  list = integer* /* or whatever type you want to use */

predicates
  length_of(list,integer,integer) - procedure (i,o,i)

clauses
  length_of([], Result, Result)./*kemudian sama seperti yang tadi target kita adalah mencari result saat list itu telah menjadi [] klausa ini dipending sampai mendapati list = [] dan result new counter disetarakan*/
  length_of([_|T],Result,Counter):-/*kemudian masih sama seperti yang di 72 kita mentelaah satu persatu sampai list itu menjadi []*/
	NewCounter = Counter + 1,/*dan newcounter itu menjadi bertambah satu setelah melewati tahap tahap ini setelah kita saat kita mencari []*/
	length_of(T, Result, NewCounter)./*dan length_of itu menjadi (tail yang ada dan result, new counter itu sama seperti L pada 72*/

goal
  length_of([1,2,3],L,0). /* start with Counter = 0 
  seperti kayak yang test 72 disini kita memulai dari nilai 0 dan mencari nilai dari L dari list 1,2,3 
  sama seperti yang 72 goals ini menjadi 3 solusi*/