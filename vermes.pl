%%% Doencas

%% Expressoes Gerais
:-op(900,xfx,[ehUmTipoDe, tem]).

doenca tem formaTransmissao.
doenca tem agenteCausador.
doenca tem sintoma.
doenca tem medidasProfilaticas.

%% Vermes
% Amarelao
amarelao ehUmTipoDe doenca.
amarelao tem agenteCausador=verme.
amarelao tem formaTransmissao=fezesNoSolo.
amarelao tem formaTransmissao=temperaturaQuente.
amarelao tem sintoma=coceiraAcentuada.
amarelao tem sintoma=manchasVermelhas.
amarelao tem sintoma=doresDeBarriga.
amarelao tem medidasProfilaticas=medicamentoBefenio.
amarelao tem medidasProfilaticas=medicamentoPirante.
amarelao tem medidasProfilaticas=andarSempreCalçado.

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
