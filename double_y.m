figure
x = linspace(0,10,10);
yl1 = sin(x);
yl2 = sin(x/2);
yyaxis left     
hold on
plot(x,yl2)

yr1 = x;
yr2 = x.^2;
axis([0,11,0,1.2])
yyaxis right
plot(x,yr1)
plot(x,yr2)
axis([0,11,0,120])

