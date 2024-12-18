% identifique a regiao z que atende 
% p 0% <= 16%   ==> zeta >=  0,5
% ts <= Gs      ==> wn >= 0,4
% tc <= 20s     ==> zeta*wn >= 0,23

% aumentar os 2 ou 1 dos primeiros para respeitar todas as regras

sys =tf(1,[1 1])
%figure
rlocus(sys)
% transforma em discreto

sysd=c2d(sys,0.1)
figure
rlocus(sysd)

% no sistema discreto apartir de um ganho maior que 20 o sistema se
% desestabiliza
% botão esquedo na figura + grid para mostra as linhas de dentro
rltool(sysd)
% para verificar o ganho coloca no "c" no quanto esquerdo e observa o
% quanto inferior o "gain"

% "ganho proporcional não zera erro de regime permanente" berto adal 
