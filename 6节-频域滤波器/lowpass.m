%%%%%%%%%%%%%%%%% Ӱ�ӹ���ϵ����ͼ����γ�ʵ�飺ʵ��7 fft�еĵ�ͨ�任ʵ��%%%%%%%%%%%%%%%%%%%%%%%%
% % ��ͼ��Ҫ�������Լ���ͼƬ��
% orgImage1 = imread('end16a.bmp', 'bmp'); 
% orgImage=rgb2gray(orgImage1);
% figure(1); imshow(orgImage); 
% % ʹ��fft2�任
% fftImage = (fft2(orgImage));   % 2d fft 
% ampImage= abs(fftImage); 
% 
% %��ʾͼƬ
% figure(2); imshow(ampImage/10000); 
% for i=50:1:650
%     for j=50:1:550
%        fftImage(j,i)=0;
%     end
% end
% figure(3); imshow(abs(fftImage)/10000); 
% s=ifft2(fftImage);
% figure(4); imshow(s,[0 255]); 
%%%˼���⣺��������������2�����͵ĵ�ͨ�仯��ʵ��%%%

% % ����1
% clear;
% orgImage1 = imread('2.jpg'); 
% orgImage=rgb2gray(orgImage1);
% figure(1); imshow(orgImage); 
% % ʹ��fft2�任
% fftImage = (fft2(orgImage));   % 2d fft 
% ampImage= abs(fftImage); 
% 
% %��ʾͼƬ
% figure(2); imshow(ampImage/10000); 
% for i=20:1:700
%     for j=30:1:540
%        fftImage(j,i)=0;
%     end
% end
% figure(3); imshow(abs(fftImage)/10000); 
% s=ifft2(fftImage);
% figure(4); imshow(s,[0 255]); 

% ����2
clear;
orgImage1 = imread('PingGuo.JPG'); 
orgImage=rgb2gray(orgImage1);
figure(1); imshow(orgImage); 
% ʹ��fft2�任
fftImage = (fft2(orgImage));   % 2d fft 
ampImage= abs(fftImage); 

%��ʾͼƬ
figure(2); imshow(ampImage/10000); 
for i=20:1:1400
    for j=30:1:970
       fftImage(j,i)=0;
    end
end
figure(3); imshow(abs(fftImage)/10000); 
s=ifft2(fftImage);
figure(4); imshow(s,[0 255]); 