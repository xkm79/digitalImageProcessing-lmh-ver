%%%%%%%%%%%%%%%%% 影视工程系数字图像处理课程实验：实验4 图像旋转实例-int16精度%%%%%%%%%%%%%%%%%%%%%%%%
clear;
I1=imread('1.jpg');
I2=rgb2gray(I1);
I=I2;
for i=1:1:720
    for j=1:1:576
           I(j,i)=0;
    end
end
s=pi/30  ;
for i=1:1:720
    for j=1:1:576

           a=int16(cos(s)*(i-360)-sin(s)*(j-288)+360);
           b=int16(sin(s)*(i-360)+cos(s)*(j-288)+288);
           if (a>1)&&(a<720)&&(b>1)&&(b<576)
           I(j,i)=I2(b,a);
           end
    end
end
imshow(I2);
figure;
imshow(I);

%%思考题：本实验与案例1有何区别？

%%%不通过矩阵计算，仅能旋转固定分辨率且单色图像