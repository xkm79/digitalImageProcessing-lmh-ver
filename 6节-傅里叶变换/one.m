%%%%%%%%%%%%%%%%% 影视工程系数字图像处理课程实验：实验1 书上的冲击矩阵fft变换例子--fft和ifft实验%%%%%%%%%%%%%%%%%%%%%%%%
% clear;
% 
% img=zeros(512,512);
% img(200:250,250:260)=1;%中间有个小孔
% imshow(img);%原图像
% f=fft2(img,512,512);%fft变换
% figure,imshow(abs(f));%输出功率谱频域图像
% 
% f(12:500,12:500)=0;%清除高频分量
% figure;
% 
% imshow(abs(f));%输出清除分量后的频域图像
% s=ifft2(f);%频域向空余变换
% figure;imshow(s);%输出反变换后的图像
%思考题1：绘制中心圆形图的fft变换

% clear;
% 
% img=zeros(512,512);
% 
% centerX=256;
% centerY=256;
% radius=10;
% img=insertShape(img,'filled-circle',[centerX,centerY,radius],'ShapeColor','white','Opacity',1);
% imshow(img);%原图像
% axis equal;
% 
% f=fft2(img,512,512);%fft变换
% figure,imshow(abs(f));%输出功率谱频域图像
% 
% f(12:500,12:500)=0;%清除高频分量
% figure;
% 
% imshow(abs(f));%输出清除分量后的频域图像
% s=ifft2(f);%频域向空余变换
% figure;imshow(s);%输出反变换后的图像

%思考题2：任意移动圆形，观察fft变换的结果与中心圆形变换的结果有何区别？  无变化

clear;

img=zeros(512,512);

centerX=50;
centerY=420;
radius=10;
img=insertShape(img,'filled-circle',[centerX,centerY,radius],'ShapeColor','white','Opacity',1);
imshow(img);%原图像
axis equal;

f=fft2(img,512,512);%fft变换
figure,imshow(abs(f));%输出功率谱频域图像

f(12:500,12:500)=0;%清除高频分量
figure;

imshow(abs(f));%输出清除分量后的频域图像
s=ifft2(f);%频域向空余变换
figure;imshow(s);%输出反变换后的图像