%Complete Matlab code produced with aim of producing figures perscribed for
%Assessment 3, Part 2

%Simon Thomas, Peterhouse, sdat2, 16th January 2016

%This section involves essentially plotting various representations of the
%Pxy and Dxy orbitals

%First section: plots mesh plot of values of Pxy orbital in xy plane
clear;
t = linspace(-4,4,100);
[x, y] = meshgrid(t,t); %meshgrid(t1,t2) for different x and y
z = 0;
d = x.*exp(-sqrt(x.*x+y.*y+z.*z)); %orbital values generated
mesh(x,y,d)
hold on
set(gca,'fontsize',14);
xlabel('X','FontSize',16);
ylabel('Y','FontSize',16);
zlabel('Pxy','FontSize',16);
print -dpng -r300 '1.png'%produces figure of given spec
hold off

%Second section: plots contour plot of values of Pxy orbital in xy plane
figure; 
contour(x,y,d)
hold on
set(gca,'fontsize',14);
xlabel('X','FontSize',16);
ylabel('Y','FontSize',16);
zlabel('Pxy','FontSize',16);
print -dpng -r300 '3.png'
hold off
figure;

%Third section: plots mesh plot of values of Dxy orbital in xy plane
clear;
t = linspace(-6,6,100);
[x, y] = meshgrid(t,t); %meshgrid(t1,t2) for different x and y
z = 0;
d = x.*y.*exp(-sqrt(x.*x+y.*y+z.*z));
mesh(x,y,d)
hold on
set(gca,'fontsize',14);
xlabel('X','FontSize',16);
xlim([-6 6]) %Matlab tried to plot it from 10,-10; intervention was taken
ylabel('Y','FontSize',16);
ylim([-6 6]) 
zlabel('Dxy','FontSize',16);
hold off
print -dpng -r300 '2.png'
figure;

%Fourth section: plots contour plot of values of Dxy orbital in xy plane
contour(x,y,d)
hold on
set(gca,'fontsize',14);
xlabel('X','FontSize',16);
ylabel('Y','FontSize',16);
zlabel('Dxy','FontSize',16);
print -dpng -r300 '4.png'
hold off
figure;

%Fifth section: plots line graph of values of Dxy orbital along the line
%x=y, i.e the diaganol
clear;
x=[-6:0.01:6]; %creates a linear space big enough
y=[-6:0.01:6]; %note x=y
z=0;
d = x.*y.*exp(-sqrt(x.*x+y.*y+z.*z));
r =sqrt(2)*x; %line x=y at 45 degrees to x and y axis
plot(r,d);
hold on
set(gca,'fontsize',14);
xlabel('Distance from nucleus, r','FontSize',16);
xlim([sqrt(2)*(-6) sqrt(2)*(6)]) %note: automatic adjustments failed
ylabel('Dxy','FontSize',16);
print -dpng -r300 '5.png'
hold off
figure;

%Sixth section: plots line graph of the differential of the Dxy orbital
%along the line y=x when z=0;
differential= diff(d)/0.01; %creates differential given previous matrix
x=[-6:0.01:5.99]; % ensures that the vectors equal size for plotting
r =sqrt(2)*x; %again the x=y line is at pi/4 rad
plot(r,differential);
hold on
set(gca,'fontsize',14);
xlabel('Distance from nucleus, r','FontSize',16);
xlim([sqrt(2)*(-6) sqrt(2)*(6)]);
ylabel('d(Dxy)/dr','FontSize',16);
print -dpng -r300 '6.png';
hold off
