%%%%%%%%%%%%%%%%% Ӱ�ӹ���ϵ����ͼ����γ�ʵ�飺ʵ��6 �ӷ�����%%%%%%%%%%%%%%%%%%%%%%%%
clear;
orgImage1 = imread('eee.bmp'); 
orgImage11=rgb2gray(orgImage1);
subplot(3,3,1); imshow(orgImage11); 
% ʹ��fft2�任
fftImage11 = fftshift((fft2(orgImage11)));   % 2d fft 
ampImage11= abs(fftImage11); 
%��ʾͼƬ
subplot(3,3,2); imshow(ampImage11,[0 20000]); 
orgImage2 = imread('end16a.bmp'); 
orgImage22=rgb2gray(orgImage2);
subplot(3,3,3);imshow(orgImage22); 
% ʹ��fft2�任
fftImage22 = fftshift((fft2(orgImage22)));   % 2d fft 
ampImage22= abs(fftImage22); 
%��ʾͼƬ
subplot(3,3,4); imshow(ampImage22,[0 20000]); 
subplot(3,3,5); imshow(ampImage22+ampImage11,[0 20000]); %Ƶ�������ʾ
subplot(3,3,6);imshow(orgImage11+orgImage22); %ԭͼ�����ʾ
fftImage33 = fftshift((fft2(double(orgImage11)+double(orgImage22) ))); %ԭͼ�ӷ�����Ҷ�仯����ʾ
ampImage33= abs(fftImage33); 
subplot(3,3,7); imshow(ampImage33,[0 20000]); 