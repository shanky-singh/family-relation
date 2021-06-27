menu :-
        write('+-----------Main Menu-----------+---------------------Family Members---------------------+'),nl,
        write('|                               |                                                        |'),nl,
        write('| 1. Display Father of?         |-------Male Members--------|-------Female Members-------|'),nl,
        write('| 2. Display Mother of?         | jack,oliver,ali,james,    | monica,helen,sophie,jess, |'),nl,
        write('| 3. Display Grandfather of?    | simon,harry,brad,chad,    | lily                       |'),nl,
        write('| 4. Display Grandmother of?    | ned,denver                |                            |'),nl,
        write('| 5. Display Sister of?         |                           |                            |'),nl,
        write('| 6. Display Brother of?        |                           |                            |'),nl,
        write('| 7. Display Uncle of?          |                           |                            |'),nl,
        write('| 8. Display Aunt of?           |                           |                            |'),nl,
        write('| 9. Display Wife of?           |                           |                            |'),nl,
        write('| 10.Display Husband of?        |                           |                            |'),nl,
        write('| 0. EXIT                       |                           |                            |'),nl,
        write('|                               |                           |                            |'),nl,
        write('+-------------------------------+--------------------------------------------------------+'),nl,
        write('| Enter your choice : '),
        read(Choice),
        write('+----------------------------------------------------------------------------------------+'),nl,
        doit(Choice),nl,
        menu;nl,write('  Invalid Choice  '),nl,nl,menu.

male(jack).
male(oliver).
male(ali).
male(james).
male(simon).
male(harry).
male(brad).
male(chad).
male(ned).
male(denver).
female(monica).
female(helen).
female(sophie).
female(jess).
female(lily).

parent_of(monica,brad).
parent_of(monica,chad).
parent_of(monica,ned).
parent_of(denver,chad).
parent_of(denver,ned).
parent_of(denver,brad).
parent_of(jack,jess).
parent_of(jack,lily).
parent_of(helen, jess).
parent_of(helen, lily).
parent_of(oliver,james).
parent_of(sophie, james).
parent_of(jess, simon).
parent_of(ali, simon).
parent_of(lily, harry).
parent_of(james, harry).

father_of(X,Y):- male(X),parent_of(X,Y).
mother_of(X,Y):- female(X),parent_of(X,Y).
wife_of(X,Y):-female(X),mother_of(X,Z),father_of(Y,Z).
husband_of(X,Y):-male(X),father_of(X,Z),mother_of(Y,Z).
grandfather_of(X,Y):- male(X),parent_of(X,Z),parent_of(Z,Y).
grandmother_of(X,Y):- female(X),parent_of(X,Z),parent_of(Z,Y).
sister_of(X,Y):- female(X),mother_of(M, Y), mother_of(M,X),X \= Y.
sister_of(X,Y):- female(X),father_of(F, Y), father_of(F,X),X \= Y.
brother_of(X,Y):-male(X),mother_of(M, Y), mother_of(M,X),X \= Y.
brother_of(X,Y):- male(X),father_of(F, Y), father_of(F,X),X \= Y.
uncle_of(X,Y):-male(X),parent_of(Z,Y),brother_of(Z,X).
aunt_of(X,Y):-female(X),parent_of(Z,Y),sister_of(Z,X).
cls :- write('\e[2J').

doit(1):-
        write('  Enter the name of the person whose father is to be found : '),
        read(X),
        father_of(Z,X),nl,
        write('  Father of '),write(X),write(' is '),
        write(Z),nl,
        write('+----------------------------------------------------------------------------------------+'),nl,nl,nl;nl,
        write('  This Relation dont exits try different name'),nl,
        write('+----------------------------------------------------------------------------------------+'),nl,
        doit(1),
        menu.
doit(2):-
        write('  Enter the name of the person whose mother is to be found : '),
        read(X),
        mother_of(Z,X),nl,
        write('  Mother of '),write(X),write(' is '),
        write(Z),nl,
        write('+----------------------------------------------------------------------------------------+'),nl,nl,nl;nl,
        write('  This Relation dont exits try different name'),nl,
        write('+----------------------------------------------------------------------------------------+'),nl,
        doit(2),
        menu.
doit(3):-
        write('  Enter the name of the person whose grandfather is to be found : '),
        read(X),
        grandfather_of(Z,X),nl,
        write('  Grandfather of '),write(X),write(' is '),
        write(Z),nl,
        write('+----------------------------------------------------------------------------------------+'),nl,nl,nl;nl,
        write('  This Relation dont exits try different name'),nl,
        write('+----------------------------------------------------------------------------------------+'),nl,
        doit(3),
        menu.
doit(4):-
        write('  Enter the name of the person whose grandmother is to be found : '),
        read(X),
        grandmother_of(Z,X),nl,
        write('  Grandmother of '),write(X),write(' is '),
        write(Z),nl,
        write('+----------------------------------------------------------------------------------------+'),nl,nl,nl;nl,
        write('  This Relation dont exits try different name'),nl,
        write('+----------------------------------------------------------------------------------------+'),nl,
        doit(4),
        menu.
doit(5):-
        write('  Enter the name of the person whose sister is to be found : '),
        read(X),
        sister_of(Z,X),nl,
        write('  Sister of '),write(X),write(' is '),
        write(Z),nl,
        write('+----------------------------------------------------------------------------------------+'),nl,nl,nl;nl,
        write('  This Relation dont exits try different name'),nl,
        write('+----------------------------------------------------------------------------------------+'),nl,
        doit(5),
        menu.
doit(6):-
        write('  Enter the name of the person whose brother is to be found : '),
        read(X),
        brother_of(Z,X),nl,
        write('  Brother of '),write(X),write(' is '),
        write(Z),nl,
        write('+----------------------------------------------------------------------------------------+'),nl,nl,nl;nl,
        write('  This Relation dont exits try different name'),nl,
        write('+----------------------------------------------------------------------------------------+'),nl,
        doit(6),
        menu.
doit(7):-
        write('  Enter the name of the person whose uncle is to be found : '),
        read(X),
        uncle_of(Z,X),nl,
        write('  Uncle of '),write(X),write(' is '),
        write(Z),nl,
        write('+----------------------------------------------------------------------------------------+'),nl,nl,nl;nl,
        write('  This Relation dont exits try different name'),nl,
        write('+----------------------------------------------------------------------------------------+'),nl,
        doit(7),
        menu.
doit(8):-
        write('  Enter the name of the person whose aunt is to be found : '),
        read(X),
        aunt_of(Z,X),nl,
        write('  Aunt of '),write(X),write(' is '),
        write(Z),nl,
        write('+----------------------------------------------------------------------------------------+'),nl,nl,nl;nl,
        write('  This Relation dont exits try different name'),nl,
        write('+----------------------------------------------------------------------------------------+'),nl,
        doit(8),
        menu.
doit(9):-
        write('  Enter the name of the person whose wife is to be found : '),
        read(X),
        wife_of(Z,X),nl,
        write('  Wife of '),write(X),write(' is '),
        write(Z),nl,
        write('+----------------------------------------------------------------------------------------+'),nl,nl,nl;nl,
        write('  This Relation dont exits try different name'),nl,
        write('+----------------------------------------------------------------------------------------+'),nl,
        doit(9),
        menu.
doit(10):-
        write('  Enter the name of the person whose husband is to be found : '),
        read(X),
        husband_of(Z,X),nl,
        write('  Husband of '),write(X),write(' is '),
        write(Z),nl,
        write('+----------------------------------------------------------------------------------------+'),nl,nl,nl;nl,
        write('  This Relation dont exits try different name'),nl,
        write('+----------------------------------------------------------------------------------------+'),nl,
        doit(10),
        menu.


doit(0):- abort.
doit(clear):-cls,menu.



















