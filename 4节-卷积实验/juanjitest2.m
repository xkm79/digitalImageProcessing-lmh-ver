%%%%%%%%%%%%%%%%% Ӱ�ӹ���ϵ����ͼ����γ�ʵ�飺ʵ��6 �������imfilter����ʵ��2%%%%%%%%%%%%%%%%%%%%%%%%
% clear;
% I=imread('QiuShengQuan.jpg');
% subplot(2,2,1); 
% imshow(I); title('Original Image');
% H1 = fspecial('motion',80,45);
% MotionBlur = imfilter(I,H1,'replicate');
% subplot(2,2,2); 
% imshow(MotionBlur);title('Motion Blurred Image');
% H2 = fspecial('disk',10);
% blurred = imfilter(I,H2,'replicate');
% subplot(2,2,3); 
% imshow(blurred); title('Blurred Image');
% I=rgb2gray(I);
% H3 = fspecial('unsharp');
% sharpened = imfilter(I,H3,'replicate');
% subplot(2,2,4); 
% imshow(sharpened); title('Sharpened Image');
%˼���⣺���ڹ۲촰������H���鿴������ֵ���Ƚϸ����˲���������

% H1
% H2
% H3

%����˼���⣺ʹ������ߴ�ģ����ת��ԭͼ�񣬱Ƚϸ��ߴ�ģ��Ĵ���Ч��

clear;
I=imread('QiuShengQuan.jpg');
subplot(2,2,1); 
imshow(I); title('Original Image');

len=40;
theta=20;

H1 = fspecial('motion',len,theta);
MotionBlur = imfilter(I,H1,'replicate');
subplot(2,2,2); 
imshow(MotionBlur);title('Motion Blurred Image');

radius=5;

H2 = fspecial('disk',radius);
blurred = imfilter(I,H2,'replicate');
subplot(2,2,3); 
imshow(blurred); title('Blurred Image');
I=rgb2gray(I);
H3 = fspecial('unsharp');
sharpened = imfilter(I,H3,'replicate');
subplot(2,2,4); 
imshow(sharpened); title('Sharpened Image');