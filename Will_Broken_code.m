%Define the (x,y) mesh on which to evaluate the orbitals
t = linspace(-5.,5.,100);
[x,y] = meshgrid(t,t);

%Function for the p orbital
p = x.*exp(-sqrt(x.^2 + y.^2));
%Function for the d orbital
d = (x.*y).*exp(-sqrt(x.^2 + y.^2));
%The plot

mesh(x,y,p)
set(gca,'fontsize',16,'linewidth',1)
xlabel('X','FontSize',14);
ylabel('Y','FontSize',14);
zlabel('Pxy','FontSize',14);
print -deps2c -r300 'meshp.eps'


%Plot the d orbital
mesh(x,y,d)
set(gca,'fontsize',16,'linewidth',1)
xlabel('X','FontSize',14);
ylabel('Y','FontSize',14);
zlabel('Pxy','FontSize',14);
print -deps2c -r300 'meshd.eps'