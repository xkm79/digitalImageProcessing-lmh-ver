%%%%%%%%%%%%%%%%% 影视工程系数字图像处理课程实验： 膨胀与腐烛实例%%%%%%%%%%%%%%%%%%%%%%%%
clear;
I=imread('AnLi.bmp');%输入图像
I2=rgb2gray(I);%转化为灰度图像
I3 = im2bw(I2);%转化为2值图像
subplot(1,3,1),imshow(I3);
title('原图');
se2 = strel('line',80,90);%生成结构元素se2  % length 30, angle 90 degrees
c = imdilate(I3,se2);   %图像膨胀
subplot(1,3,2),imshow(c);
title("膨胀");
d = imerode(I3,se2);  %图像腐蚀
subplot(1,3,3),imshow(d);
title('腐蚀');
%%%%%%%%%%%%思考题：1、为何图像腐蚀后目标膨胀了呢？，

%%%？？

%%%%%%%2、改变结构元素se2的矩阵值（'arbitrary';'pair';'diamond';'periodicline';'
%%%%%%%%%%%%disk';'rectangle';'line';'square';'octagon'）,观察不同结构元素对图像膨胀和图像腐蚀的影响。
% clear;
% I=imread('AnLi.bmp');%输入图像
% I2=rgb2gray(I);%转化为灰度图像
% I3 = im2bw(I2);%转化为2值图像
% subplot(1,3,1),imshow(I3);
% title('原图');
% se2 = strel('rectangle',[300,300]);%生成结构元素se2  % length 30, angle 90 degrees
% c = imdilate(I3,se2);   %图像膨胀
% subplot(1,3,2),imshow(c);
% title("膨胀");
% d = imerode(I3,se2);  %图像腐蚀
% subplot(1,3,3),imshow(d);
% title('腐蚀');