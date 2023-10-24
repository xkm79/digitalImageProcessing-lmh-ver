%%%%%%%%%%%%%%%%% 影视工程系数字图像处理课程实验：实验2 图像的非线性点运算 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% clear;
% I1=imread('QiuShengQuan.jpg');%%读取
% imshow(I1);%%
% I2=I1;
% a=0.5;b=0;
% x=[1:1:255];%设定自变量
% y=x.^a*15+b;%设定应变量
% for i=1:1:255
%     if (y(i)>255)
%         y(i)=255;%避免越界
%     end
%     if (y(i)<0)
%         y(i)=0;%避免越界
%     end    
% end
% [h w] = size(I1);
% figure,plot(x,y,'r');
% for i=1:1:w/3%%图像分辨率 
%     for j=1:1:h
%                   I2(j,i)=y( I1(j,i) +1 );%映射灰度值R
%                   I2(j,i,2)=y( I1(j,i,2) +1 );%映射灰度值G
%                   I2(j,i,3)=y( I1(j,i,3) +1 );%映射灰度值B
%     end  
% end
% figure,imshow(I2);

%%%%%%%%%%%%思考题1：实现PPT中的变换方程（gamma校正），观察图像变换效果%%%%%%%%%%%%%%%%%%%%%
%Y=(X+e)γ，其中，Y为亮度、X为输出电压、e为补偿系数、乘幂值（γ）为伽玛值，改变乘幂值（γ）的大小，就能改变CRT的伽玛曲线。典型的Gamma值是0.45

clear;
I1=imread('QiuShengQuan.jpg');%%读取
imshow(I1);%%
I2=I1;
a=0.45;b=0;%%a为伽马值
x=[1:1:255];%设定自变量
y=(x/255).^a*255+b;%设定应变量
for i=1:1:255
    if (y(i)>255)
        y(i)=255;%避免越界
    end
    if (y(i)<0)
        y(i)=0;%避免越界
    end    
end
[h, w] = size(I1);
figure,plot(x,y,'r');
for i=1:1:w/3%%图像分辨率 
    for j=1:1:h
                  I2(j,i)=y( I1(j,i) +1 );%映射灰度值R
                  I2(j,i,2)=y( I1(j,i,2) +1 );%映射灰度值G
                  I2(j,i,3)=y( I1(j,i,3) +1 );%映射灰度值B
    end  
end
figure,imshow(I2);
