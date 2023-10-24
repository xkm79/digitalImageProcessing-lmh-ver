%%%%%%%%%%%%%%%%% 影视工程系数字图像处理课程实验：实验8 相似性定理%%%%%%%%%%%%%%%%%%%%%%%%
clear;

img=zeros(512,512);
img(250:260,250:260)=1;%中间有个小孔
subplot(2,2,1);imshow(img);%原图像
f=fftshift( fft2(img,512,512) );%fft变换
subplot(2,2,2);imshow(abs(f),[0 10]);%输出功率谱频域图像
img(210:302,210:302)=1;%中间有个小孔
subplot(2,2,3);imshow(img);%原图像
f=fftshift( fft2(img,512,512) );%fft变换
subplot(2,2,4);imshow(abs(f),[0 10]);%输出功率谱频域图像
