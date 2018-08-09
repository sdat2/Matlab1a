x= [55:1:71];
y= [46,14,50,0,31,79,14,106,151,205,223,0,19,35,91,183,270];
plot(x,y)
hold on
set(gca,'fontsize',14);
xlabel('Atomic number/Z','FontSize',16);
ylabel('EA/ KJ mol-1','FontSize',16);
print -dpng -r300 'EAgraph.png'%produces figure of given spec
hold off
figure;


x= [19:1:35];
y= [48,2,18,8,51,64,0,16,64,112,118,0,29,130,78,195,325];
plot(x,y)
hold on
set(gca,'fontsize',14);
xlabel('Atomic number/Z','FontSize',16);
ylabel('EA/ KJ mol-1','FontSize',16);
print -dpng -r300 'EAgraph2.png'%produces figure of given spec
hold off