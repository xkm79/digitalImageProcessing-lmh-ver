%%%%%%%%%%%%%%%%% 影视工程系数字图像处理课程实验： 实验3 图像垂直镜像 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% clear;
% I1=imread('PingGuo.jpg');%%读取
% subplot(1,2,1);
% imshow(I1);%%
% I2=I1;
% [h w] = size(I1);
% for i=1:1:w/3
%     for j=1:1:h
%         I2(j,i,1)=0;I2(j,i,2)=0;I2(j,i,3)=0;
%     end
% end
% T=[-1 0 w/3;
%    0 1 0;
%    0 0 1]%设定镜像反转矩阵
% for i=1:1:w/3
%   for j=1:1:h
%      OLocation = [i;j;1];%组合原始位置矩阵
%         NLocation= int16( T*OLocation );%计算目标位置矩阵
%         if ( (NLocation(1)>1)&&(NLocation(1)<w/3)&&(NLocation(2)>1)&&(NLocation(2)<h) )%预防坐标溢出图像数组范围
%           I2(j,i,1)=I1( NLocation(2),NLocation(1),1 );%红色分量缩放
%           I2(j,i,2)=I1( NLocation(2),NLocation(1),2 );%绿色分量缩放
%           I2(j,i,3)=I1( NLocation(2),NLocation(1),3 );%蓝色分量缩放
%         end
%    end
% end
% subplot(1,2,2);imshow(I2);

%%%%%%%%%%%%思考题1：进行图像水平镜像的程序设计%%%%%%%%%%%%%%%%%%%%

% clear;
% I1=imread('PingGuo.jpg');%%读取
% subplot(1,2,1);
% imshow(I1);%%
% I2=I1;
% [h w] = size(I1);
% for i=1:1:w/3
%     for j=1:1:h
%         I2(j,i,1)=0;I2(j,i,2)=0;I2(j,i,3)=0;
%     end
% end
% T=[1 0 0;
%    0 -1 h;
%    0 0 1]%设定镜像反转矩阵
% for i=1:1:w/3
%   for j=1:1:h
%      OLocation = [i;j;1];%组合原始位置矩阵
%         NLocation= int16( T*OLocation );%计算目标位置矩阵
%         if ( (NLocation(1)>1)&&(NLocation(1)<w/3)&&(NLocation(2)>1)&&(NLocation(2)<h) )%预防坐标溢出图像数组范围
%           I2(j,i,1)=I1( NLocation(2),NLocation(1),1 );%红色分量缩放
%           I2(j,i,2)=I1( NLocation(2),NLocation(1),2 );%绿色分量缩放
%           I2(j,i,3)=I1( NLocation(2),NLocation(1),3 );%蓝色分量缩放
%         end
%    end
% end
% subplot(1,2,2);imshow(I2);

%%%%%%%%%%%%思考题2：matlab内部是否有图像镜像函数？并在GUI内实现镜像功能%%%%%%%%%%%%%%%%%

clear;
I1=imread('PingGuo.jpg');%%读取
subplot(1,2,1);
imshow(I1);%%
I2=fliplr(I1);%%水平镜像
I2=flipud(I1);%%垂直镜像
subplot(1,2,2);imshow(I2);

%%%GUI见untitled.m