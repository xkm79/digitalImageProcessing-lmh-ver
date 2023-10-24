%%%%%%%%%%%%%%%%% 影视工程系数字图像处理课程实验： 实验2 图像缩放 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
% fx = 1.5;%设定水平缩放比例
% fy = 2;%设定垂直缩放比例
% T=[fx 0 0;
%    0 fy 0;
%    0 0 1]%设定缩放矩阵
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
% subplot(1,2,2); imshow(I2);

%%%%%%%%%%%%思考题1：图像缩放的逆矩阵T设计，改变T矩阵的参数，观看缩放结果，实现纵向1/2压缩（横向不变）和实现横向1/2压缩（纵向不变））%%%%%%%%%%%%%%%%%%%%

%%%纵向压缩
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
% fx = 1;%设定水平缩放比例
% fy = 0.5;%设定垂直缩放比例
% T=[fx 0 0;
%    0 fy 0;
%    0 0 1];%设定缩放矩阵
% T=T^-1;
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
% subplot(1,2,2); imshow(I2);

%%%横向压缩
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
% fx = 0.5;%设定水平缩放比例
% fy = 1;%设定垂直缩放比例
% T=[fx 0 0;
%    0 fy 0;
%    0 0 1];%设定缩放矩阵
% T=T^-1;
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
% subplot(1,2,2); imshow(I2);

%%%%%%%%%%%%思考题2：matlab内部是否有图像平移函数？并在GUI内实现任意比例的缩放功能%%%%%%%%%%%%%%%%%%%%
clear;
I1=imread('PingGuo.jpg');%%读取
imshow(I1);%%
scale=0.5;
I2=imresize(I1,scale);
figure;
imshow(I2);