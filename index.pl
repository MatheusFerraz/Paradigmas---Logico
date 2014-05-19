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
	consult('.\loop.pl'),
	msgbox(`Bem-Vindo!`,`Deseja utilizar o BCD pela Interface Grafica?`,68,Code),
	ifThenElse(Code=:=6,canvas(),helpcomandos()).

% Gerando o Canvas do Projeto, Main da Interface Grafica
canvas():-
	% Selecionando por Termos
	wcreate(main,user,`BCD - Banco de Conhecimento de Doencas`,0,0,640,480,0),
	wcreate((main,30),static,`~M~ ~M~ ~M~ ~M~ ~M~ ~M~ Bem-Vindo ao Painel Interativo do Doencas.Log! ~M~ Para acessar nosso glossario escolha um dos topicos abaixo, selecione um termo da lista e pressione confirmar.`,0,0,640,200,16'50000001),
	wcreate((main,100),static,`Escolha um dos seguintes campos:`,0,150,200,15,16'50000001),
	wcreate((main,1),button,`Nome da Doenca`,10,170,100,20,16'50010009),
	wcreate((main,2),button,`Transmissao`,120,170,100,20,16'50010009),
	wcreate((main,3),button,`Agente Causador`,230,170,100,20,16'50010009),
	wcreate((main,4),button,`Sintomas`,340,170,60,20,16'50010009),
	wcreate((main,5),button,`Medidas Profilaticas`,410,170,110,20,16'50010009),
	% Mostrando o Resultado, ao clicar em um membro da Lista e no botao, o texto aparece no campo.
	wcreate((main,10),listbox,``,10,220,100,200,16'50a10002),
	wcreate((main,11),static,``,130,210,400,200,16'50800001),
	wcreate((main,12),button,`Confirmar`,30,410,120,20,16'50010009),
	mainloop().

helpcomandos():-
	wcreate(help,user,`BCD - Guia de Comandos`,0,0,640,480,0),
	wcreate((help,1),static,`Escolha um dos seguintes campos:`,0,150,200,15,16'50000001).
	