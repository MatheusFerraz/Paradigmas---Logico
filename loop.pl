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
	wcreate((main,10),listbox,``,10,220,300,200,16'50a10002),
	wcreate((main,11),static,``,330,210,280,200,16'50800001),
	setof(X,par(sintoma,X),L),
	compoeLista(L).

listaProf():-
	wcreate((main,10),listbox,``,10,220,300,200,16'50a10002),
	wcreate((main,11),static,``,330,210,280,200,16'50800001),
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
	wcreate((main,11),static,`Febre Amarela~M~ Agente Causador: Virus~M~ Formas de Transmissao: Picada do Mosquito Aedes Aegypti infectado~M~ Sintomas: Aspecto Amarelado da Pele, Danos ao Figado~M~ Medidas Profilaticas: Vacinacao, Erradicacao dos Insetos Vetores`,130,210,400,200,16'50800001),
	mainloop().

verNoC(S):-
	ifThenElse(S==`Raiva`,doencaC(),verNoD(S)).
	
doencaC():-
	wcreate((main,11),static,`Raiva~M~ Agente Causador: Virus~M~ Formas de Transmissao: Mordedura de animal infectado~M~ Sintomas: Alteracoes respiratorias, aumento da frequencia cardiaca,~M~ danos ao sistema nervoso central ~M~ Medidas Profilaticas: Vacinacao de Animais`,130,210,400,200,16'50800001),
	mainloop().

verNoD(S):-
	ifThenElse(S==`Gripe`,doencaD(),verNoE(S)).
	
doencaD():-
	wcreate((main,11),static,`Gripe~M~ Agente Causador: Virus~M~ Formas de Transmissao: Goticulas de saliva contaminadas~M~ Sintoma: Coriza, tosse, dores musculares~M~ Medidas Profilaticas: Vacinacao, evitar contato com doentes`,130,210,400,200,16'50800001),
	mainloop().

verNoE(S):-
	ifThenElse(S==`Catapora`,doencaE(),verNoF(S)).
	
doencaE():-
	wcreate((main,11),static,`Catapora~M~ Agente Causador: Virus~M~ Formas de Transmissao: Contato com objetos contaminados pelas lesoes da pele~M~ Sintoma: Numerosas feridas pelo corpo~M~ Medidas Profilaticas: Vacinacao, evitar contato com doentes`,130,210,400,200,16'50800001),
	mainloop().
	
verNoF(S):-
	ifThenElse(S==`Aspergilose`,doencaF(),verNoG(S)).
	
doencaF():-
	wcreate((main,11),static,`Aspergilose~M~ Agente Causador: Fungo~M~ Formas de Transmissao: Alimento, Agua~M~ Sintoma: Vomito, Diarreia, Nausea~M~ Medidas Profilaticas: Lavar adequadamente o alimento, Ferver a agua`,130,210,400,200,16'50800001),
	mainloop().

verNoG(S):-
	ifThenElse(S==`Candidiase`,doencaG(),verNoH(S)).
	
doencaG():-
	wcreate((main,11),static,`Candidiase~M~ Agente Causador: Fungo~M~ Formas de Transmissao: Relacao sexual desprotegida, Antibioticos, Diabetes, Deficiencia do sistema imunologico~M~ Sintoma: Dor na boca, Vermelhidão da boca, Vermelhidão Genital~M~ Medidas Profilaticas: Evitar sexo desprotegido, Evitar beijo em pessoas desconhecidas`,130,210,400,200,16'50800001),
	mainloop().

verNoH(S):-
	ifThenElse(S==`Criptococose`,doencaH(),verNoI(S)).
	
doencaH():-
	wcreate((main,11),static,`Criptococose~M~ Agente Causador: Fungo~M~ Formas de Transmissao: Inalacao dos esporos~M~ Sintoma: Vomito, Dor de cabeca, Nausea~M~ Medidas Profilaticas: Evitar contato com detrito de pombos`,130,210,400,200,16'50800001),
	mainloop().

verNoI(S):-
	ifThenElse(S==`Dermatite Seborreica`,doencaI(),verNoJ(S)).
	
doencaI():-
	wcreate((main,11),static,`Dermatite Seborreica~M~ Agente Causador: Fungo~M~ Formas de Transmissao: Desconhecido~M~ Sintoma: Vermelhidao da pele, Oleosidade da pele, Inflamacao da pele~M~ Medidas Profilaticas: Evitar o estresse, Lavar adequadamente o local, Evitar agua excessivamente quente, Qualidade de sono`,130,210,400,200,16'50800001),
	mainloop().

verNoJ(S):-
	ifThenElse(S==`Dermatofitose`,doencaJ(),verNoK(S)).
	
doencaJ():-
	wcreate((main,11),static,`Dermatofitose~M~ Agente Causador: Fungo~M~ Formas de Transmissao: Contato direto com area infectada~M~ Sintoma: Vermelhidao genital em forma circular, Coceira~M~ Medidas Profilaticas: Evitar umidade na pele`,130,210,400,200,16'50800001),
	mainloop().

verNoK(S):-
	ifThenElse(S==`Amarelao`,doencaK(),verNoL(S)).
	
doencaK():-
	wcreate((main,11),static,`Amarelao~M~ Agente Causador: Verme~M~ Formas de Transmissao: Fezes no Solo~M~ Sintoma: Coceira Acentuada, Manchas Vermelhas na Pele e Dores de Barriga~M~ Medidas Profilaticas: Medicacao Befenio ou Pirante e Evitar andar Descalco`,130,210,400,200,16'50800001),
	mainloop().
	
verNoL(S):-
	ifThenElse(S==`Ascaridiase`,doencaL(),verNoM(S)).
	
doencaL():-
	wcreate((main,11),static,`Ascaridiase~M~ Agente Causador: Verme~M~ Formas de Transmissao: Ingestao dos Ovos do Parasita~M~ Sintoma: Dor Abdominal, Enjoo, Dificuldade em Evacuar~M~ Medidas Profilaticas: Medicacao Albendazol, Boa Higiene Pessoal e Evitar andar Descalco`,130,210,400,200,16'50800001),
	mainloop().	

verNoM(S):-
	ifThenElse(S==`Oxiuriase`,doencaM(),verNoN(S)).
	
doencaM():-
	wcreate((main,11),static,`Oxiuriase~M~ Agente Causador: Verme~M~ Formas de Transmissao: Alimentos Contaminados~M~ Sintoma: Coceiras no Anus e Diarreias~M~ Medidas Profilaticas: Habitos de Higiene e Comer Alimentos bem Cozidos`,130,210,400,200,16'50800001),
	mainloop().
	
verNoN(S):-
	ifThenElse(S==`Teniase ou Solitaria`,doencaN(),verNoO(S)).
	
doencaN():-
	wcreate((main,11),static,`Teniase ou Solitaria~M~ Agente Causador: Verme~M~ Formas de Transmissao: Consumir Carne Bovina ou Suina Contaminada~M~ Sintoma: Diarreia Frequente Ou Prisao de Ventre, Falta ou Aumento do Apetite e Cansaco ou Insonia~M~ Medidas Profilaticas: Medicamento Albendazol`,130,210,400,200,16'50800001),
	mainloop().
	
verNoO(S):-
	ifThenElse(S==`Esquistossomose`,doencaO(),verNoP(S)).
	
doencaO():-
	wcreate((main,11),static,`Esquistossomose ou Barriga Dagua~M~ Agente Causador: Verme~M~ Formas de Transmissao: Consumir Agua Contaminada~M~ Sintoma: Vomitos, Hemorragias e Convulsoes~M~ Medidas Profilaticas: Medicamento Praziquantel, Contato com Agua das Chuvas Habitos de Higiene`,130,210,400,200,16'50800001),
	mainloop().	
	
verNoP(S):-
	ifThenElse(S==`Malaria`,doencaP(),verNoQ(S)).
	
doencaP():-
	wcreate((main,11),static,`Malaria~M~ Agente Causador: Protozoarios~M~ Formas de Transmissao: Picada De Mosquito~M~ Sintoma: Calafrios, Febre Alta e Nauseas~M~ Medidas Profilaticas: Medicamento Primaquina ou Cloroquina`,130,210,400,200,16'50800001),
	mainloop().
	
verNoQ(S):-
	ifThenElse(S==`Amebiase`,doencaQ(),verNoR(S)).
	
doencaQ():-
	wcreate((main,11),static,`Amebiase~M~ Agente Causador: Protozoarios~M~ Formas de Transmissao: Consumo de Agua Contaminada~M~ Sintoma: Dor Abdominal, Diarreia e Febre~M~ Medidas Profilaticas: Medicamento Secnidazol`,130,210,400,200,16'50800001),
	mainloop().

verNoR(S):-
	ifThenElse(S==`Giardiase`,doencaR(),verNoS(S)).
	
doencaR():-
	wcreate((main,11),static,`Giardiase~M~ Agente Causador: Protozoarios~M~ Formas de Transmissao: Consumo de Alimentos Contaminados~M~ Sintoma: Nauseas e Diarreias~M~ Medidas Profilaticas: Antibioticos`,130,210,400,200,16'50800001),
	mainloop().

verNoS(S):-
	ifThenElse(S==`Doenca de Chagas`,doencaS(),verNoT(S)).
	
doencaS():-
	wcreate((main,11),static,`Doenca de Chagas~M~ Agente Causador: Protozoarios~M~ Formas de Transmissao: Picada do Barbeiro~M~ Sintoma: Mal Estar, Inchaco das Palpebras dos Olhos e Dor nos Ganglios Linfaticos~M~ Medidas Profilaticas: Medicamentos`,130,210,400,200,16'50800001),
	mainloop().
	
verNoT(S):-
	ifThenElse(S==`Doenca do Sono`,doencaT(),verNoU(S)).
	
doencaT():-
	wcreate((main,11),static,`Doenca do Sono~M~ Agente Causador: Protozoarios~M~ Formas de Transmissao: Picada da Mosca tse tse~M~ Sintoma: Tremores, Mal Estar e Convulsoes~M~ Medidas Profilaticas: Medicamentos`,130,210,400,200,16'50800001),
	mainloop().	
	
verNoU(S):-
	ifThenElse(S==`Virus`,agenteA(),verNoV(S)).
	
agenteA():-
	wcreate((main,11),static,`Virus ~M~ Sao parasitas intracelulares obrigatorios, constituidos por um material genetico, que pode ser de DNA ou RNA. De maneira geral, quando infectam uma celula, obrigam a mesma a trabalhar de forma a obter uma maior proporcao da infeccao.`,130,210,400,200,16'50800001),
	mainloop().
	
verNoV(S):-
	ifThenElse(S==`Fungos`,agenteB(),verNoW(S)).
	
agenteB():-
	wcreate((main,11),static,`Fungos ~M~ Organismos eucariotas que ao se instalarem no corpo humano podem provocar doencas. Grande parte destes fungos buscam locais quentes e umidos no corpo para se desenvolverem. Costumam se instalar na pele, couro cabeludo e unhas.`,130,210,400,200,16'50800001),
	mainloop().

verNoW(S):-
	ifThenElse(S==`Vermes`,agenteC(),verNoY(S)).
	
agenteC():-
	wcreate((main,11),static,`Vermes ~M~ Animal invertebrado com o corpo alongado e/ou achatado. Sao encontrados praticamente em qualquer habitat, incluindo o mar, os rios e subterraneo. Muitos tambem sao parasitas.`,130,210,400,200,16'50800001),
	mainloop().
	
verNoY(S):-
	ifThenElse(S==`Protozoarios`,agenteD(),emconstrucao()).
	
agenteD():-
	wcreate((main,11),static,`Protozoarios ~M~ Microorganismos eucarioticos geralmente unicelulares e heterotroficos, pertencentes ao reino Protista. A maioria sao de vida livre e aquatica, ou em lugares umidos e sobre materia organica em decomposicao. Alguns agem como parasistas de diversos organismos, podendo gerar doencas conhecidas como protozooses.`,130,210,400,200,16'50800001),
	mainloop().
	
emconstrucao():-
	wcreate((main,11),static,`Nao Disponivel no Momento.~M~ Espere a proxima Release!`,330,210,280,200,16'50800001),
	mainloop().
