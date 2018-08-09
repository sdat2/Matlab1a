clear;

micdata = dlmread('microsoft.csv',',',1,0);
ibmdata = dlmread('ibm.csv',',',1,0);
appdata = dlmread('apple.csv',',',1,0);
ipod = 399;
initmic = micdata(168,2);
initibm = ibmdata(168,2);
initapp = appdata(168,2);
smic= ipod/initmic;
sibm= ipod/initibm;
sapp= ipod/initapp;
totmic=smic*micdata(:,2);
totibm=sibm*ibmdata(:,2);
totapp=sapp*appdata(:,2);


plot(ibmdata(:,1),totibm,'b', ...
    micdata(:,1),totmic,'r', ...
    appdata(:,1),totapp,'k', 'LineWidth',2)
hold on
xlim([appdata(168,1),appdata(1,1)])
xlabel('Year /yr','fontsize',20)
ylabel('Value of Investment /$','fontsize', 20)
legend('IBM','Microsoft','Apple','Location','NorthWest')
set(gca,'FontSize',20)
print -dpng -r300 'ipod vs investments.png'
hold off
x = totapp(1,1)
y = totibm(1,1)
z = totmic(1,1)


