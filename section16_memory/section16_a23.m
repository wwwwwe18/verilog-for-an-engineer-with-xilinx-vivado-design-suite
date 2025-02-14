fs = 1000;
t = -2:1/fs : 2-1/fs;
x = 5 * sin(2 * pi * 30* t);
y = 5*sinc(1*t);
z = x.*y;
for j = 1:4000
if(z(j) >= 0)
 k(j) = z(j);
else
 k(j) = 0;
end
end
plot(t,k);
Y = cast(k,'uint32');
Hd = dfilt.dffir(Y);
Hd.Arithmetic = 'fixed';
Hd.CoeffWordLength = 16;
coewrite(Hd, 10, 'mycoefile');