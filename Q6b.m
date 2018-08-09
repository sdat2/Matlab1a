clear;

W = 1;
f = 1;
g = 0.01;
t=(0:0.001:40);
x = f/(-3*W^2)*(sin(2*W*t)-2*sin(W*t));
xc = f/(-3*W^2)*(-2*sin(W*t));
xp = f/(-3*W^2)*(sin(2*W*t));
plot(t,x)
hold on
plot(t,xc)
plot(t,xp)


set(gca,'fontsize',14);
xlabel('t','FontSize',16);
ylabel('x','FontSize',16);
print -dpng -r300 'Q6c.png'%produces figure of given spec
hold off

%{
figure;


x = f/(-3*W^2)*(sin(2*W*t)-exp(-g*t)*2*sin(W*t));

plot(t,x)
hold on
set(gca,'fontsize',14);
xlabel('t','FontSize',16);
ylabel('x','FontSize',16);
print -dpng -r300 'Q6d.png'%produces figure of given spec
hold off
%}