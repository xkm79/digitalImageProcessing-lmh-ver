%%%%%%%%%%%%%%%%% Ӱ�ӹ���ϵ����ͼ����γ�ʵ�飺ʵ��7 λ�ƶ���%%%%%%%%%%%%%%%%%%%%%%%%
% ��ͼ��Ҫ�������Լ���ͼƬ��
clear;
orgImage1 = imread('end16a.bmp'); 
orgImage=rgb2gray(orgImage1);
orgImage2=orgImage;
orgImage=imrotate(orgImage,180);
subplot(2,2,1); imshow(orgImage); 
% ʹ��fft2�任
fftImage = fftshift((fft2(orgImage)));   % 2d fft 
ampImage= abs(fftImage); 
%��ʾͼƬ
subplot(2,2,2); imshow(ampImage,[0 20000]); 
for i=1:460
    for j=1:1:576
       orgImage2(j,i)=orgImage(j,i+260);%ˮƽλ��
    end
end
for i=461:720
    for j=1:1:576
       orgImage2(j,i)=orgImage(j,i-460);%ˮƽλ��
    end
end
subplot(2,2,3); imshow(orgImage2); 
% ʹ��fft2�任
fftImage2 = fftshift((fft2(orgImage2)));   % 2d fft 
subplot(2,2,4);ampImage2= abs(fftImage2); imshow(ampImage2,[0 20000]); 
%%%%˼����shift��Ŀ��%%%%%%%%%%%%%
%%%ʹ��Ƶ���ָ�������