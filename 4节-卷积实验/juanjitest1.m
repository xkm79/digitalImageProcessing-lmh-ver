%%%%%%%%%%%%%%%%% 影视工程系数字图像处理课程实验：实验5 卷积算子imfilter函数实例1%%%%%%%%%%%%%%%%%%%%%%%%
% clear;
% I1=imread('end16a.jpg');
% imshow(I1);
% %H = [1  1 1; 1  -8  1;1 1 1];%拉普拉斯算子
% H=fspecial('gaussian',9,3);%高斯低通滤波算子
% B = imfilter(I1,H);
% figure,imshow(B);
%思考题：1、请在观察窗口输入H，查看高斯算子的矩阵值  2、编写程序使用5*5的25平均算子模糊原图像 
% clear;
% I1=imread('end16a.jpg');
% imshow(I1);
% %H = [1  1 1; 1  -8  1;1 1 1];%拉普拉斯算子
% H=fspecial('average',[5,5]);%高斯低通滤波算子
% B = imfilter(I1,H);
% figure,imshow(B);

%%3、编写程序使用任意尺寸模版来模糊原图像

clear;
I1=imread('end16a.jpg');
imshow(I1);
n=8;%在这里输入尺寸
%H = [1  1 1; 1  -8  1;1 1 1];%拉普拉斯算子
H=fspecial('average',[n,n]);%高斯低通滤波算子
B = imfilter(I1,H);
figure,imshow(B);