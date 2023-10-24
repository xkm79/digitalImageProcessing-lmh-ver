%%%%%%%%%%%%%%%%% 影视工程系数字图像处理课程实验：实验6 fft中的高通变换实例%%%%%%%%%%%%%%%%%%%%%%%%
% % 读图（要换成你自己的图片）
% orgImage1 = imread('end16a.bmp', 'bmp'); 
% orgImage=rgb2gray(orgImage1);
% figure(1); imshow(orgImage); 
% % 使用fft2变换
% fftImage = ((fft2(orgImage)));   % 2d fft 
% ampImage= abs(fftImage); 
% 
% %显示图片
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

%%%思考题：按书所述，制作2种类型的高通变化的实例%%%
% % 案例1
% clear;
% f=10;
% orgImage1 = imread('2.jpg'); 
% orgImage=rgb2gray(orgImage1);
% figure(1); imshow(orgImage); 
% % 使用fft2变换
% fftImage = ((fft2(orgImage)));   % 2d fft 
% ampImage= abs(fftImage); 
% 
% %显示图片
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

% 案例2
clear;
f=50;
orgImage1 = imread('PingGuo.JPG'); 
orgImage=rgb2gray(orgImage1);
figure(1); imshow(orgImage); 
% 使用fft2变换
fftImage = ((fft2(orgImage)));   % 2d fft 
ampImage= abs(fftImage); 

%显示图片
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