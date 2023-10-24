%%%%%%%%%%%%%%%%% 影视工程系数字图像处理课程实验：实验4 图像旋转实例-内部函数%%%%%%%%%%%%%%%%%%%%%%%%
% clear;
% for i=1:10000
%     I1=imread('PingGuo.jpg');
%     I2=I1;%rgb2gray(I1);
%     imshow(I2);
%     I=I2;
%     for i=1:1:8
%         I=imrotate(I2,i,'bicubic');
%         subplot(2,4,i);imshow(I);
%     end
% end

%%%%%%%%%%%%%%%%% 思考题1：旋转的三个实例哪个运行效率最高？

%%%图像旋转实例-int16精度

%%%%%%%%%%%%%%%%% 思考题2：能否利用imrotate函数旋转图像的局部？

clear;
I1=imread('1.jpg');
h=200;%%修改需要旋转的区域大小
w=200;%%修改需要旋转的区域大小
x=100;%%修改需要旋转的区域左上角横坐标
y=50;%%修改需要旋转的区域左上角纵坐标
r=30;
I2=I1(y:y+h,x:x+w,:);
I2=imrotate(I2,r,'crop');
I1(y:y+h,x:x+h,:)=I2;
imshow(I1);