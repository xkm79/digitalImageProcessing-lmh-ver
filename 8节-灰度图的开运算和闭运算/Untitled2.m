%%%%%%%%%%%%%%%%% 影视工程系数字图像处理课程实验： 灰度图像的膨胀与腐烛实例%%%%%%%%%%%%%%%%%%%%%%%%
% clear;
% I=imread('Shu.jpg');%输入图像
% I3=rgb2gray(I);%转化为灰度图像
% subplot(1,3,1),imshow(I3);title('原图');
% se2 = strel('disk', 30,0);%生成结构元素se2  
% c = imdilate(I3,se2);   %灰度图像膨胀
% subplot(1,3,2),imshow(c);title('膨胀');
% d = imerode(I3,se2);  %灰度图像腐蚀
% subplot(1,3,3),imshow(d);title('腐蚀');
%%%%%%%%%%%%思考题1： 请编程，结合膨胀与腐蚀制作开运算和闭运算的函数

% clear;
% I=imread('Shu.jpg');%输入图像
% I3=rgb2gray(I);%转化为灰度图像
% subplot(2,3,1),imshow(I3);title('原图');
% se2 = strel('disk', 30,0);%生成结构元素se2  
% c = imerode(I3,se2);  %灰度图像腐蚀
% subplot(2,3,2),imshow(c);title('图像先腐蚀');
% d = imdilate(c,se2);   %灰度图像膨胀
% subplot(2,3,3),imshow(d);title('开运算');
% c = imdilate(I3,se2);   %灰度图像膨胀
% subplot(2,3,5),imshow(c);title('图像先膨胀');
% d = imerode(c,se2);  %灰度图像腐蚀
% subplot(2,3,6),imshow(d);title('闭运算');

%%%%%%%%%%%%思考题2： 实现彩色图像的膨胀与腐蚀

clear;
I=imread('Shu.JPG');%输入图像
I3=I;
subplot(1,3,1),imshow(I3);title('原图');
se2 = strel('disk', 30,0);%生成结构元素se2  
c(:,:,1)=imdilate(I3(:,:,1),se2);
c(:,:,2)=imdilate(I3(:,:,2),se2);
c(:,:,3)=imdilate(I3(:,:,3),se2);
% c = imdilate(I3,se2);   %图像膨胀
subplot(1,3,2),imshow(c);title('膨胀');
d(:,:,1)=imerode(I3(:,:,1),se2);
d(:,:,2)=imerode(I3(:,:,2),se2);
d(:,:,3)=imerode(I3(:,:,3),se2);
% d = imerode(I3,se2);  %图像腐蚀
subplot(1,3,3),imshow(d);title('腐蚀');