%%%%%%%%%%%%%%%%% 影视工程系数字图像处理课程实验： 骨架%%%%%%%%%%%%%%%%%%%%%%%%
% clear;
% I=imread('3.jpg');%输入图像
% I2=rgb2gray(I);%转化为灰度图像
% I3 = im2bw(I2);%转化为2值图像
% imshow(I3);
% se2 = strel('disk', 10,0);%生成结构元素se2  % length 30, angle 90 degrees  
% BW2 = bwmorph(I3,'skel',Inf);
% figure,imshow(BW2);

%%%%%%%%%%%%思考题1： 下载多幅图像，测试骨架化的效果

clear;
I=imread('b1.png');%输入图像
I2=rgb2gray(I);%转化为灰度图像
I3 = im2bw(I2);%转化为2值图像
imshow(I3);
se2 = strel('disk', 10,0);%生成结构元素se2  % length 30, angle 90 degrees  
BW2 = bwmorph(I3,'skel',Inf);
figure,imshow(BW2);

%%%%%%%%%%%%提高题2： 根据书中原理，自主实现骨架化函数