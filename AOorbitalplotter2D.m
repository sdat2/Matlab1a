%Orbital plotter in 2D
%p x =xe? x2+y2+z2
% dxy =xye? x2+y2+z2

t = linspace(-2,2,100);
[x y] = meshgrid(t,t); %meshgrid(t1,t2) for different x and y
d = Dorbital(x,y,0);
mesh(x,y,d)