%%%%%%%%%%%%%%%%% 影视工程系数字图像处理课程实验：实验1 水平方向边缘检测实例%%%%%%%%%%%%%%%%%%%%%%%%
% clear;
% I1=imread('end16a.jpg');
% I2=rgb2gray(I1);
% I=I2;
% 
% 
% for i=2:1:719
%     for j=2:1:575
%         I(j,i)= abs(I2(j,i)-I2(j,i+1)) ; %水平方向边缘检测算子
% 
%     end  
% end
% 
% 
% imshow(I2);%输出边缘检测图像
% figure;
% imshow(I);
% figure;
% imshow(I2-I);%输出边缘增强图像

%思考题1： 请编程实现垂直方向边缘检测，并与水平方向的边缘增强进行对比

% clear;
% I1=imread('end16a.jpg');
% I2=rgb2gray(I1);
% I=I2;
% 
% 
% for i=2:1:719
%     for j=2:1:575
%         I(j,i)= abs(I2(j,i)-I2(j+1,i)) ; %水平方向边缘检测算子
% 
%     end  
% end
% 
% 
% imshow(I2);%输出边缘检测图像
% figure;
% imshow(I);
% figure;
% imshow(I2-I);%输出边缘增强图像

%思考题2： 请编程制作彩色图像的边缘增强代码并演示

clear;
I1=imread('end16a.jpg');
I2=I1;
I=I2;

for i=2:1:719
    for j=2:1:575
        for c=1:1:3
            I(j,i,c)= abs(I2(j,i,c)-I2(j+1,i,c)) ; %水平方向边缘检测算子
        end
    end  
end


imshow(I2);%输出边缘检测图像
figure;
imshow(I);
figure;
imshow(I2-I);%输出边缘增强图像