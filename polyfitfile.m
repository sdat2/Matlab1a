y = 2 + 3*x.^2 +2*x;
y = y + randn(1,11);
sigma = ones(1,11);
a = polyfit(x,y,2);
xfit = [0:0.01:10];
yfit = polyval(a,xfit);
errorbar(x,y,sigma,'ko','MarkerSize',6,'MarkerFaceColor','k');
hold on
plot(xfit,yfit,'k-')
xlabel('Uniform x variable','fontsize',16)
ylabel('Semi-random data','fontsize',16)
set(gca,'fontsize',16)
set(gca,'TickLength',[0.02,0.0]) 
xlim([0,10])
hold off

% Set up the plot and axes
figure; % Creates a new figure window
set(gcf,'units','centimeters'); % Sets the units of the window
set(gcf,'position',[5 5 14 12]); % Sets the size of the window
set(gca,'units','centimeters'); % Sets the units of the plot
set(gca,'position',[1.5 1.5 12 10]) % Sets the size and position of the plot
set(gca,'fontsize',14,'linewidth',1)