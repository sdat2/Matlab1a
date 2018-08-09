clear;
T=[0,7,14,21,28,35];
lnA=[0,0.98,1.20,1.85,2.12,2.69];


plot(T,lnA,'ko')
hold on
set(gca,'fontsize',14);
xlabel('Time /seconds','FontSize',16);
ylabel('ln(A*A_{0}^{-1})','FontSize',16);

P = polyfit(T,lnA,1);
t=(-1:1:36);
z= P(1).*t +P(2);
plot(t,z,'b-');

print -dpng -r300 'D12.png'%produces figure of given spec
hold off

gamma = P(1);


gamt = T*gamma;

chi = gamt - lnA;

chisq = chi*(chi.')


%delH = -P(1)*8.3145
%delS = P(2)*8.3145
%delG = delH-700*delS