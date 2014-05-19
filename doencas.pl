%%% Doencas

%% Expressoes Gerais
:-op(900,xfx,[ehUmTipoDe,tem]).

doenca tem formaTransmissao.
doenca tem sintoma.
doenca tem medidasProfilaticas.
doenca tem agenteCausador.

%% Virus
% Caxumba
caxumba ehUmTipoDe doenca.
caxumba tem agenteCausador=virus.
caxumba tem formaTransmissao=saliva.
caxumba tem formaTransmissao=usoComumDeCopos.
caxumba tem sintoma=inflamacaoDasParotidas.
caxumba tem medidasProfilaticas=vacinacao.
caxumba tem medidasProfilaticas=evitarContatoComDoentes.

% Febre Amarela
febreAmarela ehUmTipoDe doenca.
febreAmarela tem agenteCausador=virus.
febreAmarela tem formaTransmissao=picadaAedesAegypti.
febreAmarela tem sintoma=aspectoAmareladoDaPele.
febreAmarela tem sintoma=danosAoFigado.
febreAmarela tem medidasProfilaticas=vacinacao.
febreAmarela tem medidasProfilaticas=erradicacaoDosInsetosVetores.

% Raiva
raiva ehUmTipoDe doenca.
raiva tem agenteCausador=virus.
raiva tem formaTransmissao=mordeduraDeAnimalInfectado.
raiva tem sintoma=alteracoesRespiratorias.
raiva tem sintoma=aumentoDaFrequenciaCardiaca.
raiva tem sintoma=danosAoSistemaNervosoCentral.
raiva tem medidasProfilaticas=vacinacaoDeAnimais.

% Gripe
gripe ehUmTipoDe doenca.
gripe tem agenteCausador=virus.
gripe tem formaTransmissao=goticulasDeSalivaContaminadas.
gripe tem sintoma=coriza.
gripe tem sintoma=tosse.
gripe tem sintoma=doresMusculares.
gripe tem medidasProfilaticas=vacinacao.
gripe tem medidasProfilaticas=evitarContatoComDoentes.

% Catapora
catapora ehUmTipoDe doenca.
catapora tem agenteCausador=virus.
catapora tem formaTransmissao=contatoComObjetosContaminadosPelasLesoesDaPele.
catapora tem sintoma=numerosasFeridasPeloCorpo.
catapora tem medidasProfilaticas=vacinacao.
catapora tem medidasProfilaticas=evitarContatoComDoentes.

%% Fungos
% Aspergilose
aspergilose ehUmTipoDe doenca.
aspergilose tem agenteCausador=fungo.
aspergilose tem formaTransmissao=alimento.
aspergilose tem formaTransmissao=agua.
aspergilose tem sintoma=vomito.
aspergilose tem sintoma=diarreia.
aspergilose tem sintoma=nausea.
aspergilose tem medidasProfilaticas=lavarAlimento.
aspergilose tem medidasProfilaticas=ferverAgua.

% Candidiase
candidiase ehUmTipoDe doenca.
candidiase tem agenteCausador=fungo.
candidiase tem formaTransmissao=relacaoSexualDesprotegida.
candidiase tem formaTransmissao=antibioticos.
candidiase tem formaTransmissao=diabetes.
candidiase tem formaTransmissao=deficienciaSistemaImunologico.
candidiase tem sintoma=dorBucal.
candidiase tem sintoma=vermelhidaoBucal.
candidiase tem sintoma=vermelhidaoGenital.
candidiase tem medidasProfilaticas=evitarSexoDesprotegido.
candidiase tem medidasProfilaticas=evitarBeijoPessoasDesconhecidas.

% Criptococose
criptococose ehUmTipoDe doenca.
criptococose tem agenteCausador=fungo.
criptococose tem formaTransmissao=inalacaoEsporos.
criptococose tem sintoma=dorCabeca.
criptococose tem sintoma=nausea.
criptococose tem sintoma=vomito.
criptococose tem sintoma=fotofobia.
criptococose tem medidasProfilaticas=evitarContatoDetritoPombo.

% Dermatite Seborreica
dermatiteSeborreica ehUmTipoDe doenca.
dermatiteSeborreica tem agenteCausador=fungo.
dermatiteSeborreica tem formaTransmissao=desconhecida.
dermatiteSeborreica tem sintoma=vermelhidaPele.
dermatiteSeborreica tem sintoma=oleosidadePele.
dermatiteSeborreica tem sintoma=inflamacaoPele.
dermatiteSeborreica tem sintoma=coceira.
dermatiteSeborreica tem medidasProfilaticas=evitarEstresse.
dermatiteSeborreica tem medidasProfilaticas=lavarAdaquadamenteLocal.
dermatiteSeborreica tem medidasProfilaticas=evitarAguaExcessivamenteQuente.
dermatiteSeborreica tem medidasProfilaticas=evitarSonoInsatisfatorio.

% Dermatofitose
dermatofitose ehUmTipoDe doenca.
dermatofitose tem agenteCausador=fungo.
dermatofitose tem formaTransmissao=contatoDireto.
dermatofitose tem sintoma=vermelhidaoGenitalFormaCircular.
dermatofitose tem sintoma=coceiraPele.
dermatofitose tem medidasProfilaticas=evitarUmidadePele.

%% Vermes
% Amarelao
amarelao ehUmTipoDe doenca.
amarelao tem agenteCausador=verme.
amarelao tem formaTransmissao=fezesNoSolo.
amarelao tem sintoma=coceiraAcentuada.
amarelao tem sintoma=manchasVermelhas.
amarelao tem sintoma=doresDeBarriga.
amarelao tem medidasProfilaticas=medicamentoBefenio.
amarelao tem medidasProfilaticas=medicamentoPirante.
amarelao tem medidasProfilaticas=evitarAndarDescalco.

% Ascaridiase
ascaridiase ehUmTipoDe doenca.
ascaridiase tem agenteCausador=verme.
ascaridiase tem formaTransmissao=ingestaoDosOvosDoParasita.
ascaridiase tem sintoma=dorAbdominal.
ascaridiase tem sintoma=enjoo.
ascaridiase tem sintoma=dificuldadeEmEvacuar.
ascaridiase tem medidasProfilaticas=medicamentoAlbendazol.
ascaridiase tem medidasProfilaticas=boaHigienePessoal.
ascaridiase tem medidasProfilaticas=evitarAndarDescalco.

% Oxiuriase
oxiuriase ehUmTipoDe doenca.
oxiuriase tem agenteCausador=verme.
oxiuriase tem formaTransmissao=alimentosContaminados.
oxiuriase tem sintoma=coceiraNoAnus.
oxiuriase tem sintoma=diarreia.
oxiuriase tem medidasProfilaticas=habitosDeHigiene.
oxiuriase tem medidasProfilaticas=alimentosBemCozidos.

% Teniase ou Solitaria
teniase ehUmTipoDe doenca.
teniase tem agenteCausador=verme.
teniase tem formaTransmissao=consumirCarneBovinaContaminada.
teniase tem formaTransmissao=consumirCarneSuinaContaminada.
teniase tem sintoma=diarreiaFrequenteOuPrisaoDeVentre.
teniase tem sintoma=faltaOuAumentoDoApetite.
teniase tem sintoma=cansacoOuInsonia.
teniase tem medidasProfilaticas=medicamentoAlbendazol.

% Esquistossomose ou barriga dagua
esquistossomose ehUmTipoDe doenca.
esquistossomose tem agenteCausador=verme.
esquistossomose tem formaTransmissao=consumirAguaContaminada.
esquistossomose tem sintoma=vomitos.
esquistossomose tem sintoma=hemorragias.
esquistossomose tem sintoma=convulsoes.
esquistossomose tem medidasProfilaticas=medicamentoPraziquantel.
esquistossomose tem medidasProfilaticas=contatoComAguaDasChuvas.
esquistossomose tem medidasProfilaticas=habitosDeHigiene.

%% Protozoarios
% Malaria
malaria ehUmTipoDe doenca.
malaria tem agenteCausador=protozoarios.
malaria tem formaTransmissao=picadaDeMosquito.
malaria tem sintoma=febreAlta.
malaria tem sintoma=calafrios.
malaria tem sintoma=nauseas.
malaria tem medidasProfilaticas=medicamentoCloroquina.
malaria tem medidasProfilaticas=medicamentoPrimaquina.

% Amebiase
amebiase ehUmTipoDe doenca.
amebiase tem agenteCausador=protozoarios.
amebiase tem formaTransmissao=aguaContaminada.
amebiase tem sintoma=dorAbdominal.
amebiase tem sintoma=diarreia.
amebiase tem sintoma=febre.
amebiase tem medidasProfilaticas=medicamentoSecnidazol.

% Giardiase
giardiase ehUmTipoDe doenca.
giardiase tem agenteCausador=protozoarios.
giardiase tem formaTransmissao=alimentosContaminados.
giardiase tem sintoma=nauseas.
giardiase tem sintoma=diarreia.
giardiase tem medidasProfilaticas=antibioticos.

% Doenca de Chagas
doencaDeChagas ehUmTipoDe doenca.
doencaDeChagas tem agenteCausador=protozoarios.
doencaDeChagas tem formaTransmissao=picadaDoBarbeiro.
doencaDeChagas tem sintoma=malEstar.
doencaDeChagas tem sintoma=inchacoDasPalpebrasDosOlhos.
doencaDeChagas tem sintoma=dorNosGangliosLinfaticos.
doencaDeChagas tem medidasProfilaticas=medicamentos.

% Doenca do Sono
doencaDoSono ehUmTipoDe doenca.
doencaDoSono tem agenteCausador=protozoarios.
doencaDoSono tem formaTransmissao=picadaDeMosca.
doencaDoSono tem sintoma=tremores.
doencaDoSono tem sintoma=malEstar.
doencaDoSono tem sintoma=convulsoes.
doencaDoSono tem medidasProfilaticas=medicamentos.
