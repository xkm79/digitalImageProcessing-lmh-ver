%%%%%%%%%%%%%%%%% 影视工程系数字图像处理课程实验：实验6 加法定理%%%%%%%%%%%%%%%%%%%%%%%%
clear;
orgImage1 = imread('eee.bmp'); 
orgImage11=rgb2gray(orgImage1);
subplot(3,3,1); imshow(orgImage11); 
% 使用fft2变换
fftImage11 = fftshift((fft2(orgImage11)));   % 2d fft 
ampImage11= abs(fftImage11); 
%显示图片
subplot(3,3,2); imshow(ampImage11,[0 20000]); 
orgImage2 = imread('end16a.bmp'); 
orgImage22=rgb2gray(orgImage2);
subplot(3,3,3);imshow(orgImage22); 
% 使用fft2变换
fftImage22 = fftshift((fft2(orgImage22)));   % 2d fft 
ampImage22= abs(fftImage22); 
%显示图片
subplot(3,3,4); imshow(ampImage22,[0 20000]); 
subplot(3,3,5); imshow(ampImage22+ampImage11,[0 20000]); %频谱相加显示
subplot(3,3,6);imshow(orgImage11+orgImage22); %原图相加显示
fftImage33 = fftshift((fft2(double(orgImage11)+double(orgImage22) ))); %原图加法后傅里叶变化并显示
ampImage33= abs(fftImage33); 
subplot(3,3,7); imshow(ampImage33,[0 20000]); 