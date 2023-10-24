%%%%%%%%%%%%%%%%% 影视工程系数字图像处理课程实验：实验7 中值滤波medfilt2函数实例2%%%%%%%%%%%%%%%%%%%%%%%%
% I=imread('QiuShengQuan.jpg');
% I=rgb2gray(I);
% subplot(2,2,1); 
% imshow (I);title('Original Image');
% J=imnoise(I,'salt & pepper',0.02);  %添加盐椒噪声，噪声密度为0.02
% subplot(2,2,2);imshow(J);title('添加椒盐噪声');
% K = medfilt2(J);              %在默认的3×3的邻域窗中进行中值滤波
% subplot(2,2,3);imshow(K);title('中值滤波后的结果');
% K1 = wiener2(J,[3 3]);%维纳滤波
% subplot(2,2,4);imshow(K1);title('维纳滤波后的结果');
%思考题： 1、比较原图和中值滤波后的图像之间的区别，比较维纳滤波和中值滤波的处理效果，并记录在实验本上
%        2、按照书上的算法自主编写中值滤波函数。
% 参考如下：
I=imread('QiuShengQuan.JPG');
imshow(I);
J=imnoise(I,'salt & pepper',0.02);
figure,imshow(J);title('加噪声图');
figure;
[A,map]=imread('QiuShengQuan.JPG');        
imshow(A,map);                       
title('原图');
image=double(A);
u=zeros(1,9);
for i=2:255
    for j=2:255
        u(1)=image(i,j);u(2)=image(i, j+1);u(3)=image(i-1,j+1);
        u(4)=image(i-1,j);u(5)=image(i-1,j-1);u(6)=image(i,j-1);
        u(7)=image(i+1,j-1);u(8)=image(i+1,j);u(9)=image(i+1,j+1);
        for p=1:8
            for q=1:8-p
                if u(q)>u(q+1)
                    k=u(q);u(q)=u(q+1);u(q+1)=k;
                end
            end
        end
        rimage(i,j)=u(5);
    end
end
figure;
imshow(rimage,map);
title('中值滤波');