%%%%%%%%%%%%%%%%% 影视工程系数字图像处理课程实验：实验3 图像求和平均去噪 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% I1=imread('X0000.bmp');
% I2=imread('X0001.bmp');
% I3=imread('X0002.bmp');
% I4=imread('X0003.bmp');
% I5=imread('X0004.bmp');
% subplot(2,3,1); 
% imshow(I1*3);
% subplot(2,3,2); 
% imshow(I2*3);
% subplot(2,3,3); 
% imshow(I3*3);
% subplot(2,3,4); 
% imshow(I4*3);
% subplot(2,3,5); 
% imshow(I5*3);
% all=I1;
% all = I1/5 + I2/5 + I3/5 + I4/5 + I5/5 ;%求和去噪
% 
% 
% imwrite(all,'end.bmp')
% subplot(2,3,6); 
% imshow(all*3);

%%思考题1：利用已学内容进行结果图像的亮度调节，便于观察

% I1=imread('X0000.bmp');
% I2=imread('X0001.bmp');
% I3=imread('X0002.bmp');
% I4=imread('X0003.bmp');
% I5=imread('X0004.bmp');
% subplot(2,3,1); 
% imshow(I1*6);
% subplot(2,3,2); 
% imshow(I2*6);
% subplot(2,3,3); 
% imshow(I3*6);
% subplot(2,3,4); 
% imshow(I4*6);
% subplot(2,3,5); 
% imshow(I5*6);
% all=I1;
% all = I1/5 + I2/5 + I3/5 + I4/5 + I5/5 ;%求和去噪
% 
% 
% % a=0.45;b=0;%%a为伽马值
% % x=[1:1:255];%设定自变量
% % y=(x/255).^a*255+b;%设定应变量
% % for i=1:1:255
% %     if (y(i)>255)
% %         y(i)=255;%避免越界
% %     end
% %     if (y(i)<0)
% %         y(i)=0;%避免越界
% %     end    
% % end
% % [h, w] = size(all);
% % for i=1:1:w/3%%图像分辨率 
% %     for j=1:1:h
% %                   all(j,i)=y( all(j,i) +1 );%映射灰度值R
% %                   all(j,i,2)=y( all(j,i,2) +1 );%映射灰度值G
% %                   all(j,i,3)=y( all(j,i,3) +1 );%映射灰度值B
% %     end  
% % end
% 
% imwrite(all,'end.bmp')
% subplot(2,3,6); 
% imshow(all*6);

%%思考题2：打开原始噪声图，比较降噪后的效果

% figure;
% imshow(I1*6);

%%思考题3：人为对一张图像加随机噪声（用windows画笔软件或matlab的noise函数），再求和去噪，查看计算结果

I1=imread('X0000.bmp');

noisyI1=imnoise(I1,'gaussian',0,0.01);

I2=imread('X0001.bmp');
I3=imread('X0002.bmp');
I4=imread('X0003.bmp');
I5=imread('X0004.bmp');
subplot(2,3,1); 
imshow(noisyI1*3);
subplot(2,3,2); 
imshow(I2*3);
subplot(2,3,3); 
imshow(I3*3);
subplot(2,3,4); 
imshow(I4*3);
subplot(2,3,5); 
imshow(I5*3);
all=noisyI1;
all = noisyI1/5 + I2/5 + I3/5 + I4/5 + I5/5 ;%求和去噪


imwrite(all,'end.bmp')
subplot(2,3,6); 
imshow(all*3);
