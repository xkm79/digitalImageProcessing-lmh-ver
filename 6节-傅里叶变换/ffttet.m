%%%%%%%%%%%%%%%%% Ӱ�ӹ���ϵ����ͼ����γ�ʵ�飺ʵ��3 ��Ƶ��ϣ���ͨ��%%%%%%%%%%%%%%%%%%%%%%%%
% ��ͼ��Ҫ�������Լ���ͼƬ��
clear;
orgImage1 = imread('PingGuo.jpg'); 
orgImage=rgb2gray(orgImage1);
subplot(2,2,1); imshow(orgImage); 
fftImage =((fft2(orgImage)));  % ʹ��fft2�任 % 2d fft 
ampImage= abs(fftImage); 
[h w]=size(orgImage1);
subplot(2,2,2); imshow(ampImage,[0 20000]); 
for i=w/3/2-730:w/3/2+730%������Ƶ����
    for j=h/2-480:1:h/2+480
       fftImage(j,i)=0;
    end
end
subplot(2,2,3); imshow(abs(fftImage),[0 20000]); 
s=ifft2((fftImage));
subplot(2,2,4); imshow(s,[0 255]);%imshow(s/200);
%%%%˼����shift��Ŀ��(��ʵ��4�Ƚϣ�ʵ��3����shift����)%%%%%%%%%%%%%
%%%��ͼ��ĵ�һ������������޽��������ڶ�������������޽���,���ڰѵ�Ƶ�ŵ��������ģ��Ա�һ����е�Ƶ���