
%%%%%%%%%%%%%%%%% 影视工程系数字图像处理课程实验： 实验3 图像的分辨率 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% clear;
% I1=imread('DongWu.jpg');%%读取
% imshow(I1);%%
% I2=I1;
% [a b c] = size(I1);
% for i=13:25:b%%图像分辨率
%     for j=13:25:a%25*25宫格
%         for x=-12:1:12
%             for y=-12:1:12
%                   I2(j+y,i+x,1)=I2(j,i,1);
%                   I2(j+y,i+x,2)=I2(j,i,2);
%                   I2(j+y,i+x,3)=I2(j,i,3);
%             end
%         end
%     end  
% end
% figure,imshow(I2);

%%%%%%%%%%%%思考题1：进行3*3宫格、5*5宫格、7*7宫格的分辨率转化%%%%%%%%%%%%%%%%%%%%%
% clear;
% I1=imread('DongWu.jpg');%%读取
% n=5;%需要的宫格数
% imshow(I1);%%原图
% I2=I1;
% [a b c] = size(I1);
% for i=ceil(n/2):n:b%%图像分辨率
%     for j=ceil(n/2):n:a%n*n宫格
%         for x=-floor(n/2):1:floor(n/2)
%             for y=-floor(n/2):1:floor(n/2)
%                   I2(j+y,i+x,1)=I2(j,i,1);
%                   I2(j+y,i+x,2)=I2(j,i,2);
%                   I2(j+y,i+x,3)=I2(j,i,3);
%             end
%         end
%     end  
% end
% figure,imshow(I2);


%%%%%%%%%%%%附加思考题：进行隔行隔列的分辨率转化（一行保留、一行删除、一列保留、一列删除）的特效%%%%%%%%%%%%%%%%%%%%%

clear;
I1=imread('DongWu.jpg');%%读取
n=3;%需要的宫格数
imshow(I1);%%原图
I2=I1;
[a b c] = size(I1);
for i=ceil(n/2):2*n:b%%图像分辨率
    for j=ceil(n/2):2*n:a%n*n宫格
        for x=-floor(n/2):1:floor(n/2)
            for y=-floor(n/2):1:floor(n/2)
                  I2(j+y,i+x,1)=0;
                  I2(j+y,i+x,2)=0;
                  I2(j+y,i+x,3)=0;
            end
        end
    end  
end
figure,imshow(I2);