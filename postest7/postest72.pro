/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH07E02.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  list = integer* /*1 or whatever type you want to use */

predicates
  length_of(list,integer) - procedure (i,o)

clauses
  length_of([], 0)./*2 fakta dalam bahasa program akan di pending jika rulenya di kerjakan sampai selesai*/
  
  length_of([_|T],L):-/*3 rule tidak akan membaca head, dan rule akan menghitung tail yang ada, L akan bertambah panjang*/
	length_of(T,TailLength), /**/ 

goal
  length_of([1,2,3],L)./*1. pada goals ini kita mencari nilai dari L dimana dengan list [1,2,3] untuk mencari nilai dari L ini tadi kita pergi ke klausa terlebih dahulu
  sehingga saat kita running goals nya menjadi 3 solusi*/
