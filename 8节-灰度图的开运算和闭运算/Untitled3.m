%%%%%%%%%%%%%%%%% 影视工程系数字图像处理课程实验： 灰度图像的开运算和闭运算%%%%%%%%%%%%%%%%%%%%%%%%
% clear;
% I=imread('Shu.jpg');%输入图像
% I2=rgb2gray(I);%转化为灰度图像
% subplot(1,3,1),imshow(I2);title('原图');
% se2 = strel('disk', 30,0);%生成结构元素se2  
% x=imopen(I2,se2);
% subplot(1,3,2),imshow(x);title('开运算');
% x=imclose(I2,se2);
% subplot(1,3,3),imshow(x);title('闭运算');
%%%%%%%%%%%%思考题1： 调节算子参数，观察开运算和闭运算的结果

% clear;
% I=imread('Shu.jpg');%输入图像
% I2=rgb2gray(I);%转化为灰度图像
% subplot(1,3,1),imshow(I2);title('原图');
% se2 = strel('line', 30,0);%生成结构元素se2  
% x=imopen(I2,se2);
% subplot(1,3,2),imshow(x);title('开运算');
% x=imclose(I2,se2);
% subplot(1,3,3),imshow(x);title('闭运算');

%%%%%%%%%%%%思考题2： 实现彩色图像的开运算和闭运算

clear;
I=imread('Shu.jpg');%输入图像
I2=I;
subplot(1,3,1),imshow(I2);title('原图');
se2 = strel('line', 30,0);%生成结构元素se2  
x(:,:,1)=imopen(I2(:,:,1),se2);
x(:,:,2)=imopen(I2(:,:,2),se2);
x(:,:,3)=imopen(I2(:,:,3),se2);
% x=imopen(I2,se2);
subplot(1,3,2),imshow(x);title('开运算');
x(:,:,1)=imclose(I2(:,:,1),se2);
x(:,:,2)=imclose(I2(:,:,2),se2);
x(:,:,3)=imclose(I2(:,:,3),se2);
% x=imclose(I2,se2);
subplot(1,3,3),imshow(x);title('闭运算');