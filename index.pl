ifThenElse(X,Y,_):- X,!,Y.
ifThenElse(_,_,Z):- Z.


main():-
msgbox(`Bem-Vindo!`,`Deseja utilizar o BCD pela Interface Grafica?`,68,Code),
ifThenElse(Code=:=6,canvas(),helpcomandos()).

canvas():-
wcreate(main,text,`BCD - Banco de Conhecimento de Doencas`,0,0,640,480,0).

helpcomandos():-
wcreate(help,text,`BCD - Guia de Comandos`,0,0,640,480,0).
