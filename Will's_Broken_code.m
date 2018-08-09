%Define the (x,y) mesh on which to evaluate the orbitals
t = linspace(-5.,5.,100);
[x,y] = meshgrid(t,t);

%Function for the p orbital
p = x.*exp(-sqrt(x.^2 + y.^2));
%Function for the d orbital
d = (x*y).*exp(-sqrt(x.^2 + y.^2));
%The plot

mesh(x,y,p)

set(gca,'fontsize',16,'linewidth',1)
set(gca,'XTick',[-1:1:1])
set(gca,'YTick',[-1:1:1])
set(gca,'PTick',[0:0.5:1])
print -deps2c 'meshp.eps'


%Plot the d orbital
mesh(x,y,d)
set(gca,'fontsize',16,'linewidth',1)
set(gca,'XTick',[-1:1:1])
set(gca,'YTick',[-1:1:1])
set(gca,'PTick',[0:0.5:1])
print -deps2c 'meshd.eps'