%%%%%%%%%%%%%%%%% 影视工程系数字图像处理课程实验：3*3 9宫格边缘增强实例%%%%%%%%%%%%%%%%%%%%%%%%
% clear;
% I1=imread('QiuShengQuan.jpg');
% I2=rgb2gray(I1);
% I=I2;
% 
% [h w]=size(I2);
% for i=2:1:w-1
%     for j=2:1:h-1
%             I(j,i)=uint8( int16(I2(j,i-1))+int16(I2(j,i+1))+int16(I2(j-1,i))+int16(I2(j+1,i))+int16(I2(j-1,i-1))+int16(I2(j+1,i-1))+int16(I2(j-1,i+1))+int16(I2(j+1,i+1))-8*int16(I2(j,i)) );%%9宫格边缘检测算子
%         %I(j,i)=-I2(j-1,i-1)-I2(j-1,i)-I2(j-1,i+1)-I2(j-1,i-1)+24*I2(j,i-1)-I2(j,i)-I2(j+1,i-1)-I2(j+1,i)-I2(j+1,i+1);
%     end  
% end
% I3=I;
% 
% figure,imshow(I2);
% 
% figure,imshow(I);%边缘检测
% 
% figure;
% a=I2-I;%边缘增强
% imshow(a);

%%%思考题1： 1、请编程制作彩色图像的边缘增强代码并演示 2、与2*2拉普拉斯边缘增强的结果进行比较

clear;
I1=imread('QiuShengQuan.jpg');
I2=I1;
I=I2;

[h,w,c]=size(I2);
for i=2:1:w-1
    for j=2:1:h-1
        for c=1:1:3
            I(j,i,c)=uint8( int16(I2(j,i-1,c))+int16(I2(j,i+1,c))+int16(I2(j-1,i,c))+int16(I2(j+1,i,c))+int16(I2(j-1,i-1,c))+int16(I2(j+1,i-1,c))+int16(I2(j-1,i+1,c))+int16(I2(j+1,i+1,c))-8*int16(I2(j,i,c)) );%%9宫格边缘检测算子
        %I(j,i)=-I2(j-1,i-1)-I2(j-1,i)-I2(j-1,i+1)-I2(j-1,i-1)+24*I2(j,i-1)-I2(j,i)-I2(j+1,i-1)-I2(j+1,i)-I2(j+1,i+1);
        end
    end  
end
I3=I;

figure,imshow(I2);

figure,imshow(I);%边缘检测

figure;
a=I2-I;%边缘增强
imshow(a);

clear;
I1=imread('QiuShengQuan.jpg');
I2=I1;
I=I2;
[h,w,c]=size(I2);
for i=2:1:w-1
    for j=2:1:h-1
        for c=1:1:3
            I(j,i,c)=uint8( int16(I2(j,i-1,c))+int16(I2(j,i+1,c))+int16(I2(j-1,i,c))+int16(I2(j+1,i,c))-4*int16(I2(j,i,c)) );%%拉普拉斯算子
        end
    end
end
figure;
imshow(I2);
I3=I;
figure;
imshow(I);%%输出边缘检测图像
figure;
a=I2-I;%边缘增强
imshow(a);%%输出边缘检测图像

%%%思考题2： 请编程制作彩色图像的边缘增强代码并演示
