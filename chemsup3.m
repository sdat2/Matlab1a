clear;

T=[278,298,318];
E=[0.0389,0.0458,0.0527];


plot(T,E,'ko')
hold on
set(gca,'fontsize',14);
xlabel('T/K','FontSize',16);
ylabel('E/V','FontSize',16);

J = polyfit(T,E,1);
t=(278:0.0001:318);
z= J(1).*t +J(2);
plot(t,z,'b-');

print -dpng -r300 'ChemSup3.png'%produces figure of given spec
hold off
figure;

