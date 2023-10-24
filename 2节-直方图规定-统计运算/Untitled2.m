%%%%%%%%%%%%%%%%% 影视工程系数字图像处理课程实验：实验2 直方图规定化实例%%%%%%%%%%%%%%%%%%%%%%%%
% clear;
% I1=imread('DongWu.jpg');
% I1=rgb2gray(I1);
% figure;
% imhist(I1);
% figure;
% hold on;
% %%生成p函数
% for i=1:1:255
%     p(i)=0 ;
% end
% for i=1:1:10
%     p(i)=2 ;
% end
% for i=120:1:150
%     p(i)=2 ;
% end
% for i=1:1:255
%     plot(i,p(i),'r.');
% end
% I=histeq(I1,p);%按p函数规定直方图
% 
% figure;
% imhist(I);
% figure;
% imshow(I);

%%思考题1：利用直方图规定化实现图像亮度的明暗调节，调处自认为舒适的图像

% clear;
% I1=imread('DongWu.jpg');
% I1=rgb2gray(I1);
% figure;
% imhist(I1);
% figure;
% hold on;
% %%生成p函数
% for i=1:1:255
%     p(i)=0 ;
% end
% for i=1:1:50
%     p(i)=2 ;
% end
% for i=120:1:200
%     p(i)=2 ;
% end
% for i=1:1:255
%     plot(i,p(i),'r.');
% end
% I=histeq(I1,p);%按p函数规定直方图
% 
% figure;
% imhist(I);
% figure;
% imshow(I);

%%思考题2：实现RGB彩色直方图规定化。

% clear;
% I1=imread('DongWu.jpg');
% R=I1(:,:,1);
% G=I1(:,:,2);
% B=I1(:,:,3);
% figure;
% imhist(I1);
% figure;
% hold on;
% %%生成p函数
% for i=1:1:255
%     p(i)=0 ;
% end
% for i=1:1:50
%     p(i)=2 ;
% end
% for i=120:1:200
%     p(i)=2 ;
% end
% for i=1:1:255
%     plot(i,p(i),'r.');
% end
% R=histeq(R,p);%按p函数规定直方图
% G=histeq(G,p);%按p函数规定直方图
% B=histeq(B,p);%按p函数规定直方图
% I=cat(3,R,G,B);
% figure;
% imhist(I);
% figure;
% imshow(I);

%%附加思考题3：在一个静态相机位置拍摄2张不同曝光量的图像，根据宽动态技术的原理，尝试合成两张不同曝光参数并相同目标的图像

clear;
I1=imread("An.png");
I2=imread("Liang.png");
imshow(I1);
figure;
imshow(I2);
I=I1/2+I2/2;
figure;
imshow(I);
