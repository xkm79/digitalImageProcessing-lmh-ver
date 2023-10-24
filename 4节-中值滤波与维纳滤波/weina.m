%%%%%%%%%%%%%%%%% 影视工程系数字图像处理课程实验：实验8 维纳滤波实例%%%%%%%%%%%%%%%%%%%%%%%%
RGB = imread('QiuShengQuan.jpg');
I = rgb2gray(RGB);
subplot(2,2,1); 
imshow (I);title('Original Image');
J = imnoise(I,'gaussian',0,0.02);
subplot(2,2,2); imshow(J);title('添加高斯噪声');
K = wiener2(J,[3 3]);
subplot(2,2,3); imshow(K);title('维纳滤波后的结果');
K1 = medfilt2(J);   %在默认的3×3的邻域窗中进行中值滤波
subplot(2,2,4); imshow(K1);title('中值滤波后的结果');
%思考题： 1、比较原图和中值滤波后的图像之间的区别，比较维纳滤波和中值滤波的处理效果，并记录在实验本上