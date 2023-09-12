set(0,'defaulttextinterpreter','latex')           %将图片的字体格式设置成latex样式，方便输入公式
set(0,'defaultLegendInterpreter','latex')
set(0,'defaultAxesTickLabelInterpreter','latex')
% %%数据的导入
%方法一，纯数值文件，load函数
data1 = load('示例数据.txt');

%方法二，带有表头的数据文件，readtable函数
data2 = readtable('示例数据2.txt');


%方法三，对Excel使用xlsread或readtable函数
data3 = xlsread('示例数据.xlsx');
data4 = readtable('示例数据.xlsx');


%%绘图数据的准备
% 输入
x = 0:pi/10:2*pi;
m = linspace(0,2*pi,100);
% 输出
y1 = sin(x);
y2 = cos(x);
y{3} = x;
y{4} = x.^3;
y{5} = exp(sin(x));


%绘图plot
figure(1)
plot(x,y{1});
hold on;
plot(x,y{2});
hold on;
plot(x,y{3});
hold on;
plot(x,y{4});
hold on;
plot(x,y{5})

plot(x,y{1},x,y{2},x,y{3},x,y{4},x,y{5})


%%更改绘图的线形，颜色，添加标记
plot(x,y{1},'--r');           %虚线+红色
hold on;
plot(x,y{2},':ko');            %点线+黑色+圆圈
hold on;
plot(x,y{3},'-.g^');           %长短线+绿色+三角形
hold on;
plot(x,y{4});
hold on;
plot(x,y{5})

xlabel('x轴');
ylabel('y轴');
title('示例图');
legend('$y=sin(x)$','$y=cos(x)$','$y=x$','$y=x.^3$','$y=e^{sin(x)}$');

%%保存图像
print('example','-dpng')          %'-dpng:保存为.png的图片'  '-djpeg:保存为.jpg的图片'  '-dpdf:保存为.pdf图片'


%%绘制子图subplot
figure(2)
subplot(2,2,1)
plot(x,y1,'--')

subplot(2,2,2)
plot(x,y2,':')

subplot(2,2,3)
plot(x,y{3},'^')

subplot(2,2,4)
plot(x,y{4},'o')

subplot(2,2,[3,4])            %合并两个子图
plot(x,y{3},'-.',x,y{4})
