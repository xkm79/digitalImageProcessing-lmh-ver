%%%%%%%%%%%%%%%%% 影视工程系数字图像处理课程实验：实验6 卷积算子imfilter函数实例2%%%%%%%%%%%%%%%%%%%%%%%%
% clear;
% I=imread('QiuShengQuan.jpg');
% subplot(2,2,1); 
% imshow(I); title('Original Image');
% H1 = fspecial('motion',80,45);
% MotionBlur = imfilter(I,H1,'replicate');
% subplot(2,2,2); 
% imshow(MotionBlur);title('Motion Blurred Image');
% H2 = fspecial('disk',10);
% blurred = imfilter(I,H2,'replicate');
% subplot(2,2,3); 
% imshow(blurred); title('Blurred Image');
% I=rgb2gray(I);
% H3 = fspecial('unsharp');
% sharpened = imfilter(I,H3,'replicate');
% subplot(2,2,4); 
% imshow(sharpened); title('Sharpened Image');
%思考题：请在观察窗口输入H，查看各矩阵值，比较各个滤波器的数据

% H1
% H2
% H3

%附加思考题：使用任意尺寸模版来转化原图像，比较各尺寸模版的处理效果

clear;
I=imread('QiuShengQuan.jpg');
subplot(2,2,1); 
imshow(I); title('Original Image');

len=40;
theta=20;

H1 = fspecial('motion',len,theta);
MotionBlur = imfilter(I,H1,'replicate');
subplot(2,2,2); 
imshow(MotionBlur);title('Motion Blurred Image');

radius=5;

H2 = fspecial('disk',radius);
blurred = imfilter(I,H2,'replicate');
subplot(2,2,3); 
imshow(blurred); title('Blurred Image');
I=rgb2gray(I);
H3 = fspecial('unsharp');
sharpened = imfilter(I,H3,'replicate');
subplot(2,2,4); 
imshow(sharpened); title('Sharpened Image');