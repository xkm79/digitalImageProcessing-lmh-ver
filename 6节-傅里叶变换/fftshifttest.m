%%%%%%%%%%%%%%%%% Ӱ�ӹ���ϵ����ͼ����γ�ʵ�飺ʵ��4 fft�е�shift�л����Ƶ���(��ͨ)ʵ��%%%%%%%%%%%%%%%%%%%%%%%%
% ��ͼ��Ҫ�������Լ���ͼƬ��
clear;
orgImage1 = imread('PingGuo.jpg'); 
orgImage=rgb2gray(orgImage1);
subplot(2,2,1); imshow(orgImage); 
% ʹ��fft2�任
fftImage = fftshift((fft2(orgImage)));   % 2d fft 
ampImage= abs(fftImage); 
[h w]=size(orgImage1);
subplot(2,2,2);  imshow(ampImage,[0 20000]); 
for i=w/3/2-40:1:w/3/2+40%������Ƶ����
    for j=h/2-40:1:h/2+40
       fftImage(j,i)=0;
    end
end
subplot(2,2,3);  imshow(abs(fftImage),[0 20000]); 
s=ifft2(ifftshift(fftImage));
subplot(2,2,4);  imshow(s/100);
%%%%˼����shift��Ŀ��%%%%%%%%%%%%%
%%%��ͼ��ĵ�һ������������޽��������ڶ�������������޽���,���ڰѵ�Ƶ�ŵ��������ģ��Ա�һ����е�Ƶ���