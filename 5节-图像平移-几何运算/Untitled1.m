%%%%%%%%%%%%%%%%% 影视工程系数字图像处理课程实验： 实验1 图像平移 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
% Dx = 100;%设定水平平移量
% Dy = -150;%设定垂直平移量
% T=[1 0 Dx;
%    0 1 Dy;
%    0 0 1]%设定平移矩阵
% for i=1:1:w/3
%   for j=1:1:h
%      OLocation = [i;j;1];%组合原始位置矩阵
%         NLocation= T*OLocation;%计算目标位置矩阵
%         if ( (NLocation(1)>1)&&(NLocation(1)<w/3)&&(NLocation(2)>1)&&(NLocation(2)<h) )%预防坐标溢出图像数组范围
%           I2(j,i,1)=I1( NLocation(2),NLocation(1),1 );%红色分量平移
%           I2(j,i,2)=I1( NLocation(2),NLocation(1),2 );%绿色分量平移
%           I2(j,i,3)=I1( NLocation(2),NLocation(1),3 );%蓝色分量平移
%         end
%    end
% end
% subplot(1,2,2); imshow(I2);

%%%%%%%%%%%%思考题1：图像平移的逆矩阵T设计，重新设计T，观察变化结果%%%%%%%%%%%%%%%%%%%%

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
% Dx = 100;%设定水平平移量
% Dy = -150;%设定垂直平移量
% T=[1 0 Dx;
%    0 1 Dy;
%    0 0 1];%设定平移矩阵
% T=T^-1;
% for i=1:1:w/3
%   for j=1:1:h
%      OLocation = [i;j;1];%组合原始位置矩阵
%         NLocation= T*OLocation;%计算目标位置矩阵
%         if ( (NLocation(1)>1)&&(NLocation(1)<w/3)&&(NLocation(2)>1)&&(NLocation(2)<h) )%预防坐标溢出图像数组范围
%           I2(j,i,1)=I1( NLocation(2),NLocation(1),1 );%红色分量平移
%           I2(j,i,2)=I1( NLocation(2),NLocation(1),2 );%绿色分量平移
%           I2(j,i,3)=I1( NLocation(2),NLocation(1),3 );%蓝色分量平移
%         end
%    end
% end
% subplot(1,2,2); imshow(I2);

%%%%%%%%%%%%思考题2：matlab内部是否有图像平移函数？并在GUI内实现任意距离的平移功能%%%%%%%%%%%%%%%%%

clear;
I1=imread('PingGuo.jpg');%%读取
subplot(1,2,1);
imshow(I1);%%
Dx = 100;%设定水平平移量
Dy = -150;%设定垂直平移量
I2=imtranslate(I1,[Dx,Dy]);
subplot(1,2,2); imshow(I2);

%%%GUI见untitled.m