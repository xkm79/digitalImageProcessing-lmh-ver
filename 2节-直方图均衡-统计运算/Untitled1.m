%%%%%%%%%%%%%%%%% 影视工程系数字图像处理课程实验：实验1 直方图均衡实例-统计直方图、%%%%%%%%%%%%%%%%%%%%%%%%
% clear;
% I1=imread('DongWu.jpg');
% I1=rgb2gray(I1);
% figure;
% imshow(I1);%%原图
% figure;
% imhist(I1);%%原图直方图
% I=histeq(I1,8);%作I1的灰度直方图，255为可用灰度数量
% figure;
% imshow(I);%%直方图均衡后的图像
% figure;
% imhist(I);%%直方图均衡后图像的直方图显示

%%思考题1：利用直方图进行二值化操作。

% clear;
% I1=imread('DongWu.jpg');
% I1=rgb2gray(I1);
% [h,w]=size(I1);
% I=I1;
% figure;
% imshow(I1);%%原图
% figure;
% imhist(I1);%%原图直方图
% for i=1:1:h
%     for j=1:1:w
%         if I1(i,j)<=124
%             I(i,j)=0;
%         end
%         if I1(i,j)>124
%             I(i,j)=255;
%         end
%     end
% end%%直方图二值化
% figure;
% imshow(I);%%直方图二值化后的图像
% figure;
% imhist(I);%%直方图二值化后图像的直方图显示

%%思考题2：实现RGB彩色直方图均衡。

% clear;
% I1=imread('DongWu.jpg');
% figure;
% imshow(I1);%%原图
% figure;
% imhist(I1);%%原图直方图
% I=histeq(I1,255);%作I1的灰度直方图，255为可用灰度数量
% figure;
% imshow(I);%%直方图均衡后的图像
% figure;
% imhist(I);%%直方图均衡后图像的直方图显示

% clear;
% I1=imread('DongWu.jpg');
% figure;
% imshow(I1);%%原图
% figure;
% imhist(I1);%%原图直方图
% R=I1(:,:,1);
% G=I1(:,:,2);
% B=I1(:,:,3);
% R=histeq(R,255);
% G=histeq(G,255);
% B=histeq(B,255);
% I=cat(3,R,G,B);
% figure;
% imshow(I);%%直方图均衡后的图像
% figure;
% imhist(I);%%直方图均衡后图像的直方图显示

%%思考题3：按书的运算步骤，自主编制直方图均衡函数（选做）。

clear;
I1=imread('DongWu.jpg');
I1=rgb2gray(I1);
I=I1;
[h,w]=size(I1);
L=8;%%灰度层次数  填写8的倍数
x=256/L;%%每一层的大小
n=zeros(1,L);
p=n;
s=p;
S=s;
figure;
imshow(I1);%%原图
figure;
imhist(I1);%%原图直方图
for i=1:1:h
    for j=1:1:w
        for y=0:x:256-x
            if(I1(i,j)>=y&&I1(i,j)<y+x)
                n(y/x+1)=n(y/x+1)+1;
            end
        end
    end
end
n1=sum(n);
p=n/n1;
for i=1:1:L
    s(i)=sum(p(1:i));
end
for i=1:1:L
    S(i)=floor(s(i)*(L-1));
end%%求出映射对应关系
for i=1:1:h
    for j=1:1:w
        for y=0:x:256-x
            if(I1(i,j)>=y-x/2&&I1(i,j)<y+x/2)
                I(i,j)=S(y/x+1)*x;
            end
        end
    end
end
figure;
imshow(I);%%直方图均衡后的图像
figure;
imhist(I);%%直方图均衡后图像的直方图显示