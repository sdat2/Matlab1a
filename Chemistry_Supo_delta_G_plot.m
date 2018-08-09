clear;
T=[635.7,670.4,686.0,722.2,760.2];
Kp=[0.01950,0.04414,0.07575,0.1971,0.5183];
ln=log(Kp);
inverse=1./T;
plot(inverse,ln,'ko')
hold on
set(gca,'fontsize',14);
xlabel('1/T /K^-1','FontSize',16);
ylabel('ln(kp)','FontSize',16);

P = polyfit(inverse,ln,1);
t=(0.001314:0.0001:0.0015731);
z= P(1).*t +P(2);
plot(t,z,'b-');

print -dpng -r300 'Chemistry Supo.png'%produces figure of given spec
hold off

delH = -P(1)*8.3145
delS = P(2)*8.3145
delG = delH-700*delS