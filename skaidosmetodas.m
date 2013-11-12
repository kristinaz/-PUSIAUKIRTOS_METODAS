function [x1,x2] = skaidosmetodas(funkcija_1,a,b,dx)

% Intervalo skaidos metodu surandamas intervalas (x1, x2), kuriame yra maşiausias
%funkcijos nulis (maşiausia lygties f(x) = 0 ğaknis)
% NAUDOJIMAS: [x1,x2] = skaidosmetodas(@myfunc,a,b,dx)
% IVEDIMO PARAMETRAI:
% funkcija_1 = priskiriama M-failo myfunc.m funkcija (arba anonimine funkcija).
% a,b = pirminio intervalo pradzia ir pabaiga.
% dx = zingsnio ilgis: (b-a)/n.
% ISVEDIMO PARAMETRAI:
% x1,x2 = maziausio funkcijos nulio ribos: intervalas (x1,x2), kuris yra poaibis (a,b);
% priskiriame NaN jeigu nebuvo surastas toks intervalas

% disp(['uztruko interaciju: ',num2str(k)])]
% TODO papildyti nargin apsauga

if a>=b ; x1=NaN; x2=NaN; return; end;
x1 = a; f1 = funkcija_1(x1);
x2 = a + dx; f2 = funkcija_1(x2);
while f1*f2 > 0.0
if x1 >= b
x1 = NaN; x2 = NaN; return
end
x1 = x2; f1 = f2;
x2 = x1 + dx; f2 = funkcija_1(x2);
end