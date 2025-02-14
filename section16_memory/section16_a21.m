t = 0:0.001:1;
x = 5 * sin(2 * pi * 50 * t);
for j = 1 :1001
if (x(j) >= 0)
 k(j) = 5*sin(2* pi* 50 * t(j));
else
 k(j) = 0;
end
end
plot(t,k);
Y = cast(k,'uint8');
Hd = dfilt.dffir(Y);
Hd.Arithmetic = 'fixed';
Hd.CoeffWordLength = 8;
coewrite(Hd, 10, 'mycoefile');