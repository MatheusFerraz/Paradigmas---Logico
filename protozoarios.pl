%%% Doencas

%% Expressoes Gerais
:-op(900,xfx,[ehUmTipoDe, tem]).

doenca tem formaTransmissao.
doenca tem agenteCausador.
doenca tem sintoma.
doenca tem medidasProfilaticas.

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
