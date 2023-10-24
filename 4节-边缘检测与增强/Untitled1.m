%%%%%%%%%%%%%%%%% 影视工程系数字图像处理课程实验：实验2 2*2拉普拉斯边缘增强实例%%%%%%%%%%%%%%%%%%%%%%%%
% clear;
% I1=imread('QiuShengQuan.jpg');
% I2=rgb2gray(I1);
% I=I2;
% [h w]=size(I2);
% for i=2:1:w-1
%     for j=2:1:h-1
%         I(j,i)=uint8( int16(I2(j,i-1))+int16(I2(j,i+1))+int16(I2(j-1,i))+int16(I2(j+1,i))-4*int16(I2(j,i)) );%%拉普拉斯算子
%     end  
% end
% figure;
% imshow(I2);
% I3=I;
% figure;
% imshow(I);%%输出边缘检测图像
% figure;
% a=I2-I;%边缘增强
% imshow(a);%%输出边缘检测图像
%%%思考题：1、请编程制作彩色图像的边缘增强代码并演示  
 
% clear;
% I1=imread('QiuShengQuan.jpg');
% I2=I1;
% I=I2;
% [h,w,c]=size(I2);
% for i=2:1:w-1
%     for j=2:1:h-1
%         for c=1:1:3
%             I(j,i,c)=uint8( int16(I2(j,i-1,c))+int16(I2(j,i+1,c))+int16(I2(j-1,i,c))+int16(I2(j+1,i,c))-4*int16(I2(j,i,c)) );%%拉普拉斯算子
%         end
%     end
% end
% figure;
% imshow(I2);
% I3=I;
% figure;
% imshow(I);%%输出边缘检测图像
% figure;
% a=I2-I;%边缘增强
% imshow(a);%%输出边缘检测图像

%%% 2、按PPT的内容设计LOG算子（5*5模版）

% clear;
% I1=imread('QiuShengQuan.jpg');
% I2=rgb2gray(I1);
% I=I2;
% [h,w,c]=size(I2);
% for i=3:1:w-2
%     for j=3:1:h-2
%         I(j,i)=uint8( 8*int16(I2(j,i-1))+8*int16(I2(j,i+1))+8*int16(I2(j-1,i))+8*int16(I2(j+1,i))+24*int16(I2(j,i))-4*int16(I2(j-1,i+2))-4*int16(I2(j-1,i-2))-4*int16(I2(j,i+2))-4*int16(I2(j,i-2))-4*int16(I2(j+1,i+2))-4*int16(I2(j+1,i-2))-4*int16(I2(j-2,i+1))-4*int16(I2(j-2,i-1))-4*int16(I2(j-2,i))-4*int16(I2(j+2,i+1))-4*int16(I2(j+2,i))-4*int16(I2(j+2,i-1))-2*int16(I2(j-2,i+2))-2*int16(I2(j-2,i-2))-2*int16(I2(j+2,i+2))-2*int16(I2(j+2,i-2)));%%拉普拉斯算子
%     end
% end
% figure;
% imshow(I2);
% I3=I;
% figure;
% imshow(I);%%输出边缘检测图像
% figure;
% a=I2-I;%边缘增强
% imshow(a);%%输出边缘检测图像

%%% 3、能否设计任意尺寸的LOG算子模版

clear;
I1=imread('QiuShengQuan.jpg');
I2=rgb2gray(I1);
I=I2;
[h,w,c]=size(I2);
for i=3:1:w-2
    for j=3:1:h-2
        I(j,i)=uint8( 8*int16(I2(j,i-1))+8*int16(I2(j,i+1))+8*int16(I2(j-1,i))+8*int16(I2(j+1,i))+24*int16(I2(j,i))-4*int16(I2(j-1,i+2))-4*int16(I2(j-1,i-2))-4*int16(I2(j,i+2))-4*int16(I2(j,i-2))-4*int16(I2(j+1,i+2))-4*int16(I2(j+1,i-2))-4*int16(I2(j-2,i+1))-4*int16(I2(j-2,i-1))-4*int16(I2(j-2,i))-4*int16(I2(j+2,i+1))-4*int16(I2(j+2,i))-4*int16(I2(j+2,i-1))-2*int16(I2(j-2,i+2))-2*int16(I2(j-2,i-2))-2*int16(I2(j+2,i+2))-2*int16(I2(j+2,i-2)));%%拉普拉斯算子
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