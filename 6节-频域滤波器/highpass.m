%%%%%%%%%%%%%%%%% Ӱ�ӹ���ϵ����ͼ����γ�ʵ�飺ʵ��6 fft�еĸ�ͨ�任ʵ��%%%%%%%%%%%%%%%%%%%%%%%%
% % ��ͼ��Ҫ�������Լ���ͼƬ��
% orgImage1 = imread('end16a.bmp', 'bmp'); 
% orgImage=rgb2gray(orgImage1);
% figure(1); imshow(orgImage); 
% % ʹ��fft2�任
% fftImage = ((fft2(orgImage)));   % 2d fft 
% ampImage= abs(fftImage); 
% 
% %��ʾͼƬ
% figure(2); imshow(ampImage,[0 20000]); 
% for i=1:1:50
%     for j=1:1:50
%        fftImage(j,i)=0;
%     end
% end
% for i=(720-50):1:720
%     for j=1:1:50
%        fftImage(j,i)=0;
%     end
% end
% for i=1:1:50
%     for j=(576-50):1:576
%        fftImage(j,i)=0;
%     end
% end
% for i=(720-50):1:720
%     for j=(576-50):1:576
%        fftImage(j,i)=0;
%     end
% end
% figure(3); imshow(abs(fftImage),[0 20000]); 
% s=ifft2((fftImage));
% figure(4); imshow(s,[0 255]); 

%%%˼���⣺��������������2�����͵ĸ�ͨ�仯��ʵ��%%%
% % ����1
% clear;
% f=10;
% orgImage1 = imread('2.jpg'); 
% orgImage=rgb2gray(orgImage1);
% figure(1); imshow(orgImage); 
% % ʹ��fft2�任
% fftImage = ((fft2(orgImage)));   % 2d fft 
% ampImage= abs(fftImage); 
% 
% %��ʾͼƬ
% figure(2); imshow(ampImage,[0 20000]); 
% for i=1:1:f
%     for j=1:1:f
%        fftImage(j,i)=0;
%     end
% end
% for i=(720-f):1:720
%     for j=1:1:f
%        fftImage(j,i)=0;
%     end
% end
% for i=1:1:f
%     for j=(576-f):1:576
%        fftImage(j,i)=0;
%     end
% end
% for i=(720-f):1:720
%     for j=(576-f):1:576
%        fftImage(j,i)=0;
%     end
% end
% figure(3); imshow(abs(fftImage),[0 20000]); 
% s=ifft2((fftImage));
% figure(4); imshow(s,[0 255]); 

% ����2
clear;
f=50;
orgImage1 = imread('PingGuo.JPG'); 
orgImage=rgb2gray(orgImage1);
figure(1); imshow(orgImage); 
% ʹ��fft2�任
fftImage = ((fft2(orgImage)));   % 2d fft 
ampImage= abs(fftImage); 

%��ʾͼƬ
figure(2); imshow(ampImage,[0 20000]); 
for i=1:1:f
    for j=1:1:f
       fftImage(j,i)=0;
    end
end
for i=(1500-f):1:1500
    for j=1:1:f
       fftImage(j,i)=0;
    end
end
for i=1:1:f
    for j=(1000-f):1:1000
       fftImage(j,i)=0;
    end
end
for i=(1500-f):1:1500
    for j=(1000-f):1:1000
       fftImage(j,i)=0;
    end
end
figure(3); imshow(abs(fftImage),[0 20000]); 
s=ifft2((fftImage));
figure(4); imshow(s,[0 255]); 