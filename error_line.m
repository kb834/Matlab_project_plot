figure
subplot(2,2,1)
x = 0:pi/10:pi;
y = sin(x);
e = std(y)*ones(size(x));
errorbar(x,y,e)

subplot(2,2,2)
contour(peaks)        %等高线图

subplot(2,2,3)
surfc(peaks)          %三维面加等高线图

subplot(2,2,4)
pie([2 3 4])