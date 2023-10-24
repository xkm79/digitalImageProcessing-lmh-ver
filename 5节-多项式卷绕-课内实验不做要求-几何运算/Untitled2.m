%%%%%%%%%%%%%%%%% 影视工程系数字图像处理课程实验： 实验7 多项式卷绕-图像变形%%%%%%%%%%%%%%%%%
clear;
I1=imread('end16a.bmp');
I2=rgb2gray(I1);
I=I2;
for i=1:1:720
    for j=1:1:576
        I(j,i)=255;
    end
end
x1=100;y1=100;
x2=500;y2=100;
x3=100;y3=500;
x4=500;y4=500;

p1=20;q1=20;
p2=500;q2=100;
p3=100;q3=500;
p4=500;q4=500;

a=[ x1 y1 x1*y1 1;
    x2 y2 x2*y2 1;  
    x3 y3 x3*y3 1;  
    x4 y4 x4*y4 1;  
  ]  ;

b=[p1;p2; p3; p4; ];

x=a\b

c=[q1;q2; q3; q4; ];
y=a\c

for i=100:1:500
    for j=100:1:500
   
       I(j,i )=I2(int16( y(1)*i+y(2)*j+y(3)*i*j+y(4)),int16(x(1)*i+x(2)*j+x(3)*i*j+x(4)) );

    end  
end
subplot(1,2,1);imshow(I2);
subplot(1,2,2);imshow(I);
