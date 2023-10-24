%%%%%%%%%%%%%%%%% 影视工程系数字图像处理课程实验：实验4 图像相加 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% I1=imread('云层2.jpg');
% I2=imread('地球贴图.jpg');
% I=I1/1.2+I2;
% figure,imshow(I1);
% figure,imshow(I2);
% figure,imshow(I);
% imwrite(I,'地球3.jpg');
%%思考题1：设计两个图像相减的实例程序

%见 3节-图像相减-代数运算

%%思考题2：设计两个图像相乘和相除的实例程序

%相乘见 3节-图像乘法-代数运算

% X = uint8([ 255 10 75; 44 225 100]);
% Y = uint8([ 50 20 50; 50 50 50 ]);
% Z = imdivide(X,Y)
% I = imread('地球贴图.jpg'); 
% J = imdivide(I,2);
% subplot(1,2,1), imshow(I)
% subplot(1,2,2), imshow(J)
% figure;
% background = imread('云层2.jpg');
% Ip = imdivide(I,background);
% imshow(Ip,[]);


%%附加思考题：利用绿幕抠像原理拍摄前景主体，利用CG动画制作渲染背景，之后合成特效图。

I1=imread('跑步.png');
I1=imresize(I1,[1080,1920]);
I2=imread('楼顶.png');
g=[0,255,0];
tolerance=70;
mask=abs(I1(:,:,1)-g(1))<tolerance & abs(I1(:,:,2)-g(2))<tolerance & abs(I1(:,:,3)-g(3))<tolerance;
for i=1:1:1080
    for j=1:1:1920
        for c=1:1:3
            I2(i,j,c)=I2(i,j,c)*double(mask(i,j));
        end
    end
end
mask=~mask;
for i=1:1:1080
    for j=1:1:1920
        for c=1:1:3
            I1(i,j,c)=I1(i,j,c)*double(mask(i,j));
        end
    end
end
I=I1+I2;
imshow(I);




