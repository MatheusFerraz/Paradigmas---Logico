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
