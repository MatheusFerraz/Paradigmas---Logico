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
	ifThenElse(S=:=1,listaProf(),confirmar()).

confirmar():-
	wbtnsel((main,12),S),
	ifThenElse(S=:=1,verLista(0),mainloop()).
	

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
	
verLista(N):-
	wlbxsel((main,10),N,S),
	K is N+1,
	ifThenElse(S=:=0,verLista(K),verNoA(N)).
	
verNoA(X):-
	wbtnsel((main,12),0),
	wlbxget((main,10),X,S),
	ifThenElse(S==`Caxumba`,doencaA(),verNoB(S)).

doencaA():-
	wcreate((main,11),static,`Caxumba~M~ Agente Causador: Virus~M~ Formas de Transmissao: Saliva, Uso comum de copos~M~ Sintoma: Inflamacao das parotidas~M~ Medidas Profilaticas: Vacinacao e evitar contato com doentes`,130,210,400,200,16'50800001),
	mainloop().
	
verNoB(S):-
	ifThenElse(S==`Febre Amarela`,doencaB(),verNoC(S)).
	
doencaB():-
	wcreate((main,11),static,`<Febre Amarela>`,130,210,400,200,16'50800001),
	mainloop().

verNoC(S):-
	ifThenElse(S==`Raiva`,doencaC(),verNoD(S)).
	
doencaC():-
	wcreate((main,11),static,`<Raiva>`,130,210,400,200,16'50800001),
	mainloop().

verNoD(S):-
	ifThenElse(S==`Gripe`,doencaD(),verNoE(S)).
	
doencaD():-
	wcreate((main,11),static,`<Gripe>`,130,210,400,200,16'50800001),
	mainloop().

verNoE(S):-
	ifThenElse(S==`Catapora`,doencaE(),verNoF(S)).
	
doencaE():-
	wcreate((main,11),static,`<Catapora>`,130,210,400,200,16'50800001),
	mainloop().
	
verNoF(S):-
	ifThenElse(S==`Aspergilose`,doencaF(),verNoG(S)).
	
doencaF():-
	wcreate((main,11),static,`<Apergilose>`,130,210,400,200,16'50800001),
	mainloop().

verNoG(S):-
	ifThenElse(S==`Candidiase`,doencaG(),verNoH(S)).
	
doencaG():-
	wcreate((main,11),static,`<Candidiase>`,130,210,400,200,16'50800001),
	mainloop().

verNoH(S):-
	ifThenElse(S==`Criptococose`,doencaH(),verNoI(S)).
	
doencaH():-
	wcreate((main,11),static,`<Criptococose>`,130,210,400,200,16'50800001),
	mainloop().

verNoI(S):-
	ifThenElse(S==`Dermatite Seborreica`,doencaI(),verNoJ(S)).
	
doencaI():-
	wcreate((main,11),static,`<Dermatite Seborreica>`,130,210,400,200,16'50800001),
	mainloop().

verNoJ(S):-
	ifThenElse(S==`Dermatofitose`,doencaJ(),verNoK(S)).
	
doencaJ():-
	wcreate((main,11),static,`<Dermatofitose>`,130,210,400,200,16'50800001),
	mainloop().

verNoK(S):-
	ifThenElse(S==``,doencaK(),verNoL(S)).
	
doencaK():-
	wcreate((main,11),static,`<>`,130,210,400,200,16'50800001),
	mainloop().
	
verNoL(L):-
	ifThenElse(S==``,doencaL(),verNoM(S)).
	
doencaL():-
	wcreate((main,11),static,`<>`,130,210,400,200,16'50800001),
	mainloop().	

verNoM(S):-
	ifThenElse(S==``,doencaM(),verNoN(S)).
	
doencaM():-
	wcreate((main,11),static,`<>`,130,210,400,200,16'50800001),
	mainloop().
	
verNoN(S):-
	ifThenElse(S==``,doencaN(),verNoO(S)).
	
doencaN():-
	wcreate((main,11),static,`<>`,130,210,400,200,16'50800001),
	mainloop().
	
verNoO(S):-
	ifThenElse(S==``,doencaO(),verNoP(S)).
	
doencaO():-
	wcreate((main,11),static,`<>`,130,210,400,200,16'50800001),
	mainloop().	
	
verNoP(S):-
	ifThenElse(S==``,doencaP(),verNoQ(S)).
	
doencaP():-
	wcreate((main,11),static,`<>`,130,210,400,200,16'50800001),
	mainloop().
	
verNoQ(S):-
	ifThenElse(S==``,doencaQ(),verNoR(S)).
	
doencaQ():-
	wcreate((main,11),static,`<>`,130,210,400,200,16'50800001),
	mainloop().

verNoR(S):-
	ifThenElse(S==``,doencaR(),verNoS(S)).
	
doencaR():-
	wcreate((main,11),static,`<>`,130,210,400,200,16'50800001),
	mainloop().

verNoS(S):-
	ifThenElse(S==``,doencaS(),verNoT(S)).
	
doencaS():-
	wcreate((main,11),static,`<>`,130,210,400,200,16'50800001),
	mainloop().
	
verNoT(S):-
	ifThenElse(S==``,doencaT(),verNoU(S)).
	
doencaT():-
	wcreate((main,11),static,`<>`,130,210,400,200,16'50800001),
	mainloop().	
	
verNoU(S):-
	ifThenElse(S==``,agenteA(),verNoV(S)).
	
agenteA():-
	wcreate((main,11),static,`<>`,130,210,400,200,16'50800001),
	mainloop().
	
verNoV(S):-
	ifThenElse(S==``,agenteB(),verNoW(S)).
	
agenteB():-
	wcreate((main,11),static,`<>`,130,210,400,200,16'50800001),
	mainloop().

verNoW(S):-
	ifThenElse(S==``,agenteC(),verNoY(S)).
	
agenteC():-
	wcreate((main,11),static,`<>`,130,210,400,200,16'50800001),
	mainloop().
	
verNoY(S):-
	ifThenElse(S==``,agenteD(),emconstrucao()).
	
agenteD():-
	wcreate((main,11),static,`<>`,130,210,400,200,16'50800001),
	mainloop().
	
emconstrucao():-
	wcreate((main,11),static,`Nao Disponivel no Momento.~M~ Espere a proxima Release!`,330,210,280,200,16'50800001),
	mainloop().
