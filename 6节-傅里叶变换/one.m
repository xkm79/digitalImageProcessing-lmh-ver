%%%%%%%%%%%%%%%%% Ӱ�ӹ���ϵ����ͼ����γ�ʵ�飺ʵ��1 ���ϵĳ������fft�任����--fft��ifftʵ��%%%%%%%%%%%%%%%%%%%%%%%%
% clear;
% 
% img=zeros(512,512);
% img(200:250,250:260)=1;%�м��и�С��
% imshow(img);%ԭͼ��
% f=fft2(img,512,512);%fft�任
% figure,imshow(abs(f));%���������Ƶ��ͼ��
% 
% f(12:500,12:500)=0;%�����Ƶ����
% figure;
% 
% imshow(abs(f));%�������������Ƶ��ͼ��
% s=ifft2(f);%Ƶ�������任
% figure;imshow(s);%������任���ͼ��
%˼����1����������Բ��ͼ��fft�任

% clear;
% 
% img=zeros(512,512);
% 
% centerX=256;
% centerY=256;
% radius=10;
% img=insertShape(img,'filled-circle',[centerX,centerY,radius],'ShapeColor','white','Opacity',1);
% imshow(img);%ԭͼ��
% axis equal;
% 
% f=fft2(img,512,512);%fft�任
% figure,imshow(abs(f));%���������Ƶ��ͼ��
% 
% f(12:500,12:500)=0;%�����Ƶ����
% figure;
% 
% imshow(abs(f));%�������������Ƶ��ͼ��
% s=ifft2(f);%Ƶ�������任
% figure;imshow(s);%������任���ͼ��

%˼����2�������ƶ�Բ�Σ��۲�fft�任�Ľ��������Բ�α任�Ľ���к�����  �ޱ仯

clear;

img=zeros(512,512);

centerX=50;
centerY=420;
radius=10;
img=insertShape(img,'filled-circle',[centerX,centerY,radius],'ShapeColor','white','Opacity',1);
imshow(img);%ԭͼ��
axis equal;

f=fft2(img,512,512);%fft�任
figure,imshow(abs(f));%���������Ƶ��ͼ��

f(12:500,12:500)=0;%�����Ƶ����
figure;

imshow(abs(f));%�������������Ƶ��ͼ��
s=ifft2(f);%Ƶ�������任
figure;imshow(s);%������任���ͼ��