%%%%%%%%%%%%%%%%% 影视工程系数字图像处理课程实验：实验1 图像的线性点运算 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% clear;
% I1=imread('QiuShengQuan.jpg');%%读取
% imshow(I1);%%
% I2=I1;
% a=3;b=-50;
% x=[1:1:255];%设定自变量
% y=a*x+b;%设定应变量
% for i=1:1:255
%     if (y(i)>255)
%         y(i)=255;%避免越界
%     end
%     if (y(i)<0)
%         y(i)=0;%避免越界
%     end    
% end
% 
% figure,plot(x,y,'r');
% [h w] = size(I1);
% for i=1:1:w/3%%图像分辨率
%     for j=1:1:h
% 
%                   I2(j,i)=y( I1(j,i) +1 );%映射灰度值R
%                   I2(j,i,2)=y( I1(j,i,2) +1 );%映射灰度值G
%                   I2(j,i,3)=y( I1(j,i,3) +1 );%映射灰度值B
% 
%     end  
% end
% figure,imshow(I2);

%%%%%%%%%%%%思考题1：调节线性参数，实现反色函数，观察图像变换效果%%%%%%%%%%%%%%%%%%%%%

clear;
I1=imread('QiuShengQuan.jpg');%%读取
imshow(I1);%%
I2=I1;
a=-1;b=255;
x=[1:1:255];%设定自变量
y=a*x+b;%设定应变量
for i=1:1:255
    if (y(i)>255)
        y(i)=255;%避免越界
    end
    if (y(i)<0)
        y(i)=0;%避免越界
    end    
end

figure,plot(x,y,'r');
[h w] = size(I1);
for i=1:1:w/3%%图像分辨率
    for j=1:1:h

                  I2(j,i)=y( I1(j,i) +1 );%映射灰度值R
                  I2(j,i,2)=y( I1(j,i,2) +1 );%映射灰度值G
                  I2(j,i,3)=y( I1(j,i,3) +1 );%映射灰度值B

    end  
end
figure,imshow(I2);