%%%%%%%%%%%%%%%%% Ӱ�ӹ���ϵ����ͼ����γ�ʵ�飺ʵ��4 ��Ե����ڲ�����ʵ��%%%%%%%%%%%%%%%%%%%%%%%%
clear;
I1=imread('QiuShengQuan.jpg');
I2=rgb2gray(I1);
subplot(2,3,1);
imshow(I2);title('ԭͼ');

tic;
for t=1:1:1000
    I3=edge(I2,'roberts');
end
closedtime1=toc;

subplot(2,3,2),imshow(I3);title('roberts');

tic;
for t=1:1:1000
   I3=edge(I2,'sobel');
end
closedtime2=toc;

subplot(2,3,3),imshow(I3);title('sobel');

tic;
for t=1:1:1000
    I3=edge(I2,'prewitt');
end
closedtime3=toc;


subplot(2,3,4),imshow(I3);title('prewitt');

tic;
for t=1:1:1000
    I3=edge(I2,'log');
end
closedtime4=toc;


subplot(2,3,5),imshow(I3);title('log');

tic;
for t=1:1:1000
    I3=edge(I2,'canny');
end
closedtime5=toc;


subplot(2,3,6),imshow(I3);title('canny');
%˼���⣺�۲�������ӵľ��������Ƚϸ����ӵ����Ӻͼ����ʱ������ʱ���ܷ������MATLAB�ܷ��ȡϵͳʱ�䣿��