%ridge BC
spreadrate = 48*10^(-3);
spread = spreadrate*10^7;
measuredspread = spread*4.7*10^(-2)/(500*10^(3))

%ridge BD
spreadrate = 72*10^(-3);
spread = spreadrate*10^7;
measuredspread = spread*4.7*10^(-2)/(500*10^(3))

%Z 
spreadrate = 32*10^(-3);
spread = spreadrate*10^7;
measuredspread = spread*4.7*10^(-2)/(500*10^(3))

%Y
spreadrate = 39*10^(-3);
spread = spreadrate*10^7;
measuredspread = spread*4.7*10^(-2)/(500*10^(3))


time = 8.9/3.9

f = 261.6;
density = 7800;
d = 0.5*10^(-3);
y = 200*10^6;
l = 1.4;

T = f*f*l*l*density*d*d*pi()/4
