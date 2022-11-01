% Assignment 2 Question 1

/*sumsum, a competitor of appy, developed some nice smart phone technology called galacticas3, all of which was stolen by stevey, who is a boss. It is unethical for a boss to steal business from rival companies. A competitor of appy is a rival. Smart phone technology is business.

Translate the natural language statements above describing the dealing within the Smart Phone industry in to First Order Logic (FOL).

Write these FOL statements as Prolog clauses.

Using Prolog, prove that Stevey is unethical. Show a trace of your
proof.*/


/* Relationships */

company(sumsum).
company(appy).
competitors(sumsum, appy).
develop(sumsum, galactica-s3).
smartPhoneTechnology(galactica-s3).
steal(stevey, galactica-s3).
boss(stevey, appy).


/* Rules */

rival(CompX, CompY):-
	competitors(CompX, CompY).

business(Biz):-
	smartPhoneTechnology(Biz).

unethical(A):-
	boss(A, CompB), steal(A, BizD), business(BizD), develop(CompC, BizD), rival(CompB, CompC), company(CompC).

