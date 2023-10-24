%%%%%%%%%%%%%%%%% 影视工程系数字图像处理课程实验：实验5 图像相减 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% I1=imread('1.jpg');
% I2=imread('2.jpg');
% I=I1-I2;%图像相减
% figure,imshow(I1);
% figure,imshow(I2);
% figure,imshow(I);

%%思考题1：为何相减后出现大量边缘，请说明原因

%%可能是因为时间的变化或者新物体的存在吸收了一定的光或者是相机的晃动，导致两幅图像出现了一些细小的差异

%%思考题2：自己拍摄静态图，观察是否会出现大量边缘

% I1=imread('a1.jpg');
% I2=imread('a2.jpg');
% I=I1-I2;%图像相减
% figure,imshow(I1);
% figure,imshow(I2);
% figure,imshow(I);

%%附加思考题：请利用双重循环和点运算法则来进行图像相减

I1=imread('1.jpg');
I2=imread('2.jpg');
I=zeros(size(I1));
[h,w,c]=size(I1);
for i=1:1:h
    for j=1:1:w
        for c=1:1:c
            I(i,j,c)=I1(i,j,c)-I2(i,j,c);
        end
    end
end
         
figure,imshow(I1);
figure,imshow(I2);
figure,imshow(I);
