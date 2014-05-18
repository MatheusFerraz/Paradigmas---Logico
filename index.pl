%% Roteiro Exemplo
% main.

%% Expressoes Gerais
% IfThenElse
ifThenElse(X,Y,_):- X,!,Y.
ifThenElse(_,_,Z):- Z.

% Chamada de Inicio
main():-
	msgbox(`Bem-Vindo!`,`Deseja utilizar o BCD pela Interface Grafica?`,68,Code),
	ifThenElse(Code=:=6,canvas(),helpcomandos()).

% Gerando o Canvas do Projeto, Main da Interface Grafica
canvas():-
	% Selecionando por Termos
	wcreate(main,user,`BCD - Banco de Conhecimento de Doencas`,0,0,640,480,0),
	wcreate((main,100),static,`Escolha um dos seguintes campos:`,0,150,200,15,16'50000001),
	wcreate((main,1),button,`Nome da Doenca`,10,170,100,20,16'50010009),
	wcreate((main,2),button,`Tipo da Doenca`,120,170,100,20,16'50010009),
	wcreate((main,3),button,`Agente Causador`,230,170,100,20,16'50010009),
	wcreate((main,4),button,`Sintomas`,340,170,60,20,16'50010009),
	wcreate((main,5),button,`Tratamento`,410,170,100,20,16'50010009),
	% Mostrando o Resultado, ao clicar em um membro da Lista e no botao, o texto aparece no campo.
	wcreate((main,10),listbox,``,10,220,100,200,16'50a10002),
	wcreate((main,11),static,``,130,210,400,200,16'50800001),
	wcreate((main,12),button,`Confirmar`,30,410,60,20,16'50010000).

helpcomandos():-
wcreate(help,text,`BCD - Guia de Comandos`,0,0,640,480,0).
