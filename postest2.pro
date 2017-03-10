PREDICATES
nondeterm anak(STRING,STRING)
nondeterm istri(STRING,STRING)
pria(STRING)
wanita(STRING)
nondeterm ayah(STRING,STRING)
nondeterm ibu(STRING,STRING)
nondeterm cucu(STRING,STRING)
nondeterm kakek(STRING,STRING)
nondeterm adik(STRING,STRING)
nondeterm usia(STRING,INTEGER)
CLAUSES
anak("Jhon","James").
anak("James","Peter").
anak("Sue","Ann").
istri("Mary","Peter").
istri("Ann","James").
pria("Jhon").
pria("James").
pria("Peter").
wanita("Mary").
wanita("Sue").
wanita("Ann").
usia("Jhon",10).
usia("Sue",13).

ayah(A,B):-anak(B,A).
kakek(A,B):-ayah(A,C),ayah(C,B).
ibu(A,B):-istri(B,C),anak(A,C).
cucu(A,B):-anak(A,C),anak(C,B).
cucu(A,B):-anak(A,C),istri(C,D),anak(D,B).
adik(A,B):-usia(A,C),usia(B,D), C<D.

a. cucu
   GOAL
   cucu(X,Y).

   X=Jhon,Y=Peter
   X=Sue,Y=Peter
   2 solutions

b.ibu 
   GOAL
   ibu(X,Y).

   x=james,y=mary
   X=Jhon,Y=Ann
   2 Solutions

c. adik 
   GOAL
   adik(X,Y).

   X=Jhon,Y=Sue
   1 Solution

d. kakek
   GOAL
   kakek(X,Y)

   X=Peter,Y=Jhon
   1 Solution