hanoi3:-move3(a,b,c).

move3(Origem,Auxiliar,Destino):-
	move2(Origem,Destino,Auxiliar),
	move1(Origem,Destino),
	move2(Auxiliar,Origem,Destino).

move2(Origem,Auxiliar,Destino):-
	move1(Origem,Auxiliar),
	move1(Origem,Destino),
	move1(Auxiliar,Destino).

move1(Origem,Destino):-informa(Origem,Destino),!.

informa(Loc1,Loc2):-write( 'Move um disco de ' ) ,
		write(Loc1),write( ' para ' ), write(Loc2),nl.
