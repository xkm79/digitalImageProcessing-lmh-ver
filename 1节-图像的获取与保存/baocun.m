
%%%%%%%%%%%%%%%%% 影视工程系数字图像处理课程实验： 实验1 图像的矩阵获取、显示和保存 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% clear;
% I1=imread('DongWu.jpg');%%读取
% imshow(I1);%%
% I1=imread('QiuShengQuan.jpg');%%读取
% figure;
% imshow(I1);%%
% I2=I1;
% for i=1:1:960%%图像反色
%     for j=1:1:600
%         I2(j,i)=255 - I1(j,i);
%         I2(j,i)=255 - I1(j,i);
%         I2(j,i+960)=255 - I1(j,i+960);
%         I2(j,i+960)=255 - I1(j,i+960);
%         I2(j,i+960*2)=255 - I1(j,i+960*2);
%         I2(j,i+960*2)=255 - I1(j,i+960*2);        
%     end  
% end
% 
% figure,imshow(I2);
% imwrite(I2,'savebmp.bmp');
%%%%%%%%%%%%思考题1：按jpg格式保存图像%%%%%%%%%%%%%%%%%%%%%

% imwrite(I2,'savejpg.jpg');

%%%%%%%%%%%%思考题2：保存在MAT格式文件内，clear清空后再调出显示已处理的图像%%%%%%%%%%%%%%%%%%%%%

% save('savemat');
% clear;
% load("savemat.mat","I2");
% figure;
% imshow(I2);

%%%%%%%%%%%%思考题3：把2.jpg水平和垂直尺寸都缩小一半并保存bmp文件%%%%%%%%%%%%%%%%%%%%%

% clear;
% I=imread("2.jpg");
% imshow(I);
% I=imresize(I,0.5);
% figure;
% imshow(I);
% imwrite(I,'save3.bmp');

%%%%%%%%%%%%思考题4：把2.jpg垂直尺寸缩小一半，水平尺寸不变并保存bmp文件%%%%%%%%%%%%%%%%%%%%%\

clear;
I=imread('2.jpg');
[h,w,c]=size(I);
I=imresize(I,[h/2,w]);
imshow(I);
imwrite(I,'save4.bmp');