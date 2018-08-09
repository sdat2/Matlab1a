%Produces a plot
clear;

m=[0.6,0.8,1.0,1.2,1.4];
E=[0.6375,0.6304,0.6252,0.6214,0.6182];
lnm= log(m);

plot(lnm,E,'ko')
hold on
set(gca,'fontsize',14);
xlabel('ln(m)','FontSize',16);
ylabel('E/V','FontSize',16);

J = polyfit(lnm,E,1);
t=(log(0.6):0.0001:log(1.4));
z= J(1).*t +J(2);
plot(t,z,'b-');

print -dpng -r300 'ChemSupo2.png'%produces figure of given spec
hold off
figure;

f = J(0).*1
j = J(1).*1