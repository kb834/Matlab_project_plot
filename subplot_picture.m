figure
subplot(2,2,1)
bar([6 3 4;2 4 2;3 1 1]);
axis([0 4 0 7])

subplot(2,2,2)
x = linspace(0,10,10);
yl1 = sin(x);
yl2 = sin(x/2);
yyaxis left
hold on
plot(x,yl1)
plot(x,yl2)
yr1 = x;
yr2 = x.^2;
axis([0,11,0,1.2])
yyaxis right
plot(x,yr1)
plot(x,yr2)
axis([0,11,0,120])

subplot(2,2,3)
scatter(randn(100,1),randn(100,1))






