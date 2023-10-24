%%%%%%%%%%%%%%%%% 影视工程系数字图像处理课程实验：实验7 位移定理%%%%%%%%%%%%%%%%%%%%%%%%
% 读图（要换成你自己的图片）
clear;
orgImage1 = imread('end16a.bmp'); 
orgImage=rgb2gray(orgImage1);
orgImage2=orgImage;
orgImage=imrotate(orgImage,180);
subplot(2,2,1); imshow(orgImage); 
% 使用fft2变换
fftImage = fftshift((fft2(orgImage)));   % 2d fft 
ampImage= abs(fftImage); 
%显示图片
subplot(2,2,2); imshow(ampImage,[0 20000]); 
for i=1:460
    for j=1:1:576
       orgImage2(j,i)=orgImage(j,i+260);%水平位移
    end
end
for i=461:720
    for j=1:1:576
       orgImage2(j,i)=orgImage(j,i-460);%水平位移
    end
end
subplot(2,2,3); imshow(orgImage2); 
% 使用fft2变换
fftImage2 = fftshift((fft2(orgImage2)));   % 2d fft 
subplot(2,2,4);ampImage2= abs(fftImage2); imshow(ampImage2,[0 20000]); 
%%%%思考：shift的目的%%%%%%%%%%%%%
%%%使低频部分更加明显