/* Klemen Kotar, CSE 341 Section AA, HW5 - Prolog Warmup, May 7, 2018 */

/* Probelm 1 - repeat */
/* This rule suceeds if the second argument is a list with only 0 or 
more occurences of the first argument */
repeat(_,[]).
repeat(X,[X|Xs]) :-
    repeat(X,Xs).

/* Problem 2 - sentence */
sentence(A,N,V) :-
    adjective(A),
    noun(N),
    verb(V).

/* Definitions for adjectives, nouns and verbs */
adjective(all).
adjective(few).
adjective(some).
noun(dolphins).
noun(clams).
noun(sharks).
verb(frolic).
verb(dream).
verb(vote).

/* Running sentence with three variables will produce every possible sentence,
according to our Grammar. This is eaqual to every possible combination of a 
adjective, a noun and a verb. This is eaqual to:

(Number of Adjectives) * (Number of Nouns) * (Number of Verbs) = 
                                                                 ______
          3            *          3        *         3         = | 27 |
                                                                 ------
*/
