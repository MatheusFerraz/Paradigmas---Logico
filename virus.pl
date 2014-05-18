%%% Doencas

%% Expressoes Gerais
:-op(900,xfx,[ehUmTipoDe, tem]).

doenca tem formaTransmissao.
doenca tem agenteCausador.
doenca tem sintoma.
doenca tem medidasProfilaticas.

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
