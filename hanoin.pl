hanoi(N):-move(N,a,b,c).
move(1,Origem,_,Destino):-informa(Origem,Destino),!.

move(N,Origem,Auxiliar,Destino):-
	N1 is N-1,
	move(N1,Origem,Destino,Auxiliar),
	informa(Origem,Destino),
	move(N1,Auxiliar,Origem,Destino).

informa(Loc1,Loc2):-write( 'Move um disco de ' ) ,
		write(Loc1),write( ' para ' ), write(Loc2),nl.
