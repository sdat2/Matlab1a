
% Get Temp, Process
cam = dlmread('cambridge.dat','\t',4,0);
x= yyyy + (mm-1)/12;
y = (tmax+tmin)/2;
plot(x,y,'-k','LineWidth',1,'MarkerFaceColor','k');
hold on

% Perform a minimisation including the sine argument and plot
b0 = [10,-0.01,20,0];
b = fminsearch(@(b) slopingsine(b,(x-1961),y), b0);
yfit = b(1) + b(2)*(x-1961) + b(3)*sin((x-1961)*pi*2+b(4));
plot(x,yfit,'-b','LineWidth',0.5)
hold on;

% Create axis properties
xlabel('Year','FontSize',14)
ylabel('Average Temperature /^{\circ}C','FontSize',14)

xlim([1961,2011]);
hold off;
% Create file
print -dpng -r300 'temperature.png'

% Print the results of the fit
b

% Create histogram
figure;
f=hist(rain, [5:10:185]);
bar([5:10:185], f);
xlabel('Total Rainfall /mm','FontSize',14)
ylabel('Time /Months','FontSize',14)

print -dpng -r300 'rainfall.png'

b(2)*50
