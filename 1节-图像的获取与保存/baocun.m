
%%%%%%%%%%%%%%%%% Ӱ�ӹ���ϵ����ͼ����γ�ʵ�飺 ʵ��1 ͼ��ľ����ȡ����ʾ�ͱ��� %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% clear;
% I1=imread('DongWu.jpg');%%��ȡ
% imshow(I1);%%
% I1=imread('QiuShengQuan.jpg');%%��ȡ
% figure;
% imshow(I1);%%
% I2=I1;
% for i=1:1:960%%ͼ��ɫ
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
%%%%%%%%%%%%˼����1����jpg��ʽ����ͼ��%%%%%%%%%%%%%%%%%%%%%

% imwrite(I2,'savejpg.jpg');

%%%%%%%%%%%%˼����2��������MAT��ʽ�ļ��ڣ�clear��պ��ٵ�����ʾ�Ѵ����ͼ��%%%%%%%%%%%%%%%%%%%%%

% save('savemat');
% clear;
% load("savemat.mat","I2");
% figure;
% imshow(I2);

%%%%%%%%%%%%˼����3����2.jpgˮƽ�ʹ�ֱ�ߴ綼��Сһ�벢����bmp�ļ�%%%%%%%%%%%%%%%%%%%%%

% clear;
% I=imread("2.jpg");
% imshow(I);
% I=imresize(I,0.5);
% figure;
% imshow(I);
% imwrite(I,'save3.bmp');

%%%%%%%%%%%%˼����4����2.jpg��ֱ�ߴ���Сһ�룬ˮƽ�ߴ粻�䲢����bmp�ļ�%%%%%%%%%%%%%%%%%%%%%\

clear;
I=imread('2.jpg');
[h,w,c]=size(I);
I=imresize(I,[h/2,w]);
imshow(I);
imwrite(I,'save4.bmp');