%%%%%%%%%%%%%%%%% 影视工程系数字图像处理课程实验：实验6 图像相乘 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% clear;
% I1=imread('PingGuo.jpg');
% I2=imread('PingGuo2.jpg');
% I=I1.*(I2/255);%matlab中矩阵的相乘用.*表示，在前期的matlab课程中也用到了.^
% figure,imshow(I1);
% figure,imshow(I2);
% figure,imshow(I);

%%思考题1：在后续实验中可结合边缘检测实现绿幕抠像!
%%实验步骤：找到单一颜色的背景（绿色、蓝色或其它单色都可），拍摄目标和背景照片，利用抠图模版原理提取前景目标主体，思考有多少种抠像技术？

clear;
I1=imread('跑步.png');
imshow(I1);
g=[0,255,0];
tolerance=70;
mask=abs(I1(:,:,1)-g(1))<tolerance & abs(I1(:,:,2)-g(2))<tolerance & abs(I1(:,:,3)-g(3))<tolerance;
mask=~mask;
for i=1:1:828
    for j=1:1:1050
        for c=1:1:3
            I1(i,j,c)=I1(i,j,c)*double(mask(i,j));
        end
    end
end
figure;
imshow(I1);