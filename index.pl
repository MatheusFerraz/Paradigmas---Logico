%%% Interface Grafica

%% Roteiro Exemplo
% main.

%% Expressoes Gerais
% IfThenElse
ifThenElse(X,Y,_):- X,!,Y.
ifThenElse(_,_,Z):- Z.
% ListSplit
listSplit([H|T], H, T).

% Chamada de Inicio
main():-
	consult('.\listas.pl'),
	consult('.\virus.pl'),
	msgbox(`Bem-Vindo!`,`Deseja utilizar o BCD pela Interface Grafica?`,68,Code),
	ifThenElse(Code=:=6,canvas(),helpcomandos()).

% Gerando o Canvas do Projeto, Main da Interface Grafica
canvas():-
	% Selecionando por Termos
	wcreate(main,user,`BCD - Banco de Conhecimento de Doencas`,0,0,640,480,0),
	wcreate((main,100),static,`Escolha um dos seguintes campos:`,0,150,200,15,16'50000001),
	wcreate((main,1),button,`Nome da Doenca`,10,170,100,20,16'50010009),
	wcreate((main,2),button,`Transmissao`,120,170,100,20,16'50010009),
	wcreate((main,3),button,`Agente Causador`,230,170,100,20,16'50010009),
	wcreate((main,4),button,`Sintomas`,340,170,60,20,16'50010009),
	wcreate((main,5),button,`Medidas Profilaticas`,410,170,110,20,16'50010009),
	% Mostrando o Resultado, ao clicar em um membro da Lista e no botao, o texto aparece no campo.
	wcreate((main,10),listbox,``,10,220,100,200,16'50a10002),
	wcreate((main,11),static,``,130,210,400,200,16'50800001),
	wcreate((main,12),button,`Confirmar`,30,410,60,20,16'50010000),
	mainloop().
	
mainloop():-
	campoA().
	
reset():-
	wbtnsel((main,1),0),
	wbtnsel((main,2),0),
	wbtnsel((main,3),0),
	wbtnsel((main,4),0),
	wbtnsel((main,5),0),
	mainloop().

campoA():-
	wbtnsel((main,1),S),
	ifThenElse(S=:=1,listaNome(),campoB()).

campoB():-
	wbtnsel((main,2),S),
	ifThenElse(S=:=1,listaTrans(),campoC()).

campoC():-
	wbtnsel((main,3),S),
	ifThenElse(S=:=1,listaCausa(),campoD()).

campoD():-
	wbtnsel((main,4),S),
	ifThenElse(S=:=1,listaSint(),campoE()).

campoE():-
	wbtnsel((main,5),S),
	ifThenElse(S=:=1,listaProf(),mainloop()).	

listaNome():-
	wcreate((main,10),listbox,``,10,220,100,200,16'50a10002),
	wcreate((main,11),static,``,130,210,400,200,16'50800001),
	setof(X,par(doenca,X),L),
	compoeLista(L).

listaTrans():-
	wcreate((main,10),listbox,``,10,220,300,200,16'50a10002),
	wcreate((main,11),static,``,330,210,280,200,16'50800001),
	setof(X,par(formaTransmissao,X),L),
	compoeLista(L).
	
listaCausa():-
	wcreate((main,10),listbox,``,10,220,100,200,16'50a10002),
	wcreate((main,11),static,``,130,210,400,200,16'50800001),
	setof(X,par(agenteCausador,X),L),
	compoeLista(L).

listaSint():-
	wcreate((main,10),listbox,``,10,220,200,200,16'50a10002),
	wcreate((main,11),static,``,230,210,380,200,16'50800001),
	setof(X,par(sintoma,X),L),
	compoeLista(L).

listaProf():-
	wcreate((main,10),listbox,``,10,220,200,200,16'50a10002),
	wcreate((main,11),static,``,230,210,380,200,16'50800001),
	setof(X,par(medidasProfilaticas,X),L),
	compoeLista(L).
	
compoeLista(T):-
	listSplit(T,A,B),
	wlbxadd((main,10),0,A),
	ifThenElse(B==[],reset(),compoeRLista(B)).

compoeRLista(K):-
	listSplit(K,A,B),
	wlbxadd((main,10),-1,A),
	ifThenElse(B==[],reset(),compoeRLista(B)).
	
helpcomandos():-
	wcreate(help,text,`BCD - Guia de Comandos`,0,0,640,480,0).
