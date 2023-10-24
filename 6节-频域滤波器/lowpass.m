%%%%%%%%%%%%%%%%% 影视工程系数字图像处理课程实验：实验7 fft中的低通变换实例%%%%%%%%%%%%%%%%%%%%%%%%
% % 读图（要换成你自己的图片）
% orgImage1 = imread('end16a.bmp', 'bmp'); 
% orgImage=rgb2gray(orgImage1);
% figure(1); imshow(orgImage); 
% % 使用fft2变换
% fftImage = (fft2(orgImage));   % 2d fft 
% ampImage= abs(fftImage); 
% 
% %显示图片
% figure(2); imshow(ampImage/10000); 
% for i=50:1:650
%     for j=50:1:550
%        fftImage(j,i)=0;
%     end
% end
% figure(3); imshow(abs(fftImage)/10000); 
% s=ifft2(fftImage);
% figure(4); imshow(s,[0 255]); 
%%%思考题：按书所述，制作2种类型的低通变化的实例%%%

% % 案例1
% clear;
% orgImage1 = imread('2.jpg'); 
% orgImage=rgb2gray(orgImage1);
% figure(1); imshow(orgImage); 
% % 使用fft2变换
% fftImage = (fft2(orgImage));   % 2d fft 
% ampImage= abs(fftImage); 
% 
% %显示图片
% figure(2); imshow(ampImage/10000); 
% for i=20:1:700
%     for j=30:1:540
%        fftImage(j,i)=0;
%     end
% end
% figure(3); imshow(abs(fftImage)/10000); 
% s=ifft2(fftImage);
% figure(4); imshow(s,[0 255]); 

% 案例2
clear;
orgImage1 = imread('PingGuo.JPG'); 
orgImage=rgb2gray(orgImage1);
figure(1); imshow(orgImage); 
% 使用fft2变换
fftImage = (fft2(orgImage));   % 2d fft 
ampImage= abs(fftImage); 

%显示图片
figure(2); imshow(ampImage/10000); 
for i=20:1:1400
    for j=30:1:970
       fftImage(j,i)=0;
    end
end
figure(3); imshow(abs(fftImage)/10000); 
s=ifft2(fftImage);
figure(4); imshow(s,[0 255]); 