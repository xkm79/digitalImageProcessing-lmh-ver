
%%%%%%%%%%%%%%%%% 影视工程系数字图像处理课程实验：实验2 图像的灰阶量化 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% clear;
% I1=imread('DongWu.jpg');%%读取
% 
% I2=rgb2gray(I1);%单色化
% imshow(I2);%%
% [h w] = size(I2);
%  for i=1:1:w
%     for j=1:1:h
%         for tidu=1:1:4
%             if( ( I2(j,i)<64*tidu)&&( I2(j,i)>=64*(tidu-1) ) )
%                 I2(j,i)=64*tidu-32;
%             end
%         end
% 
%     end  
% end
% 
% figure,imshow(I2);

%%%%%%%%%%%%思考题1：进行2、4、8、32灰度级量化采样%%%%%%%%%%%%%%%%%%%%%

% clear;
% I1=imread('DongWu.jpg');%%读取
% n=32;%量化级
% I2=rgb2gray(I1);%单色化
% imshow(I2);%%
% [h w] = size(I2);
%  for i=1:1:w
%     for j=1:1:h
%         for tidu=1:1:256/n
%             if( ( I2(j,i)<n*tidu)&&( I2(j,i)>=n*(tidu-1) ) )
%                 I2(j,i)=n*tidu-n/2;
%             end
%         end
% 
%     end  
% end
% 
% figure,imshow(I2);

%%%%%%%%%%%%思考题2：进行2、4、8、32彩色量化采样%%%%%%%%%%%%%%%%%%%%%+

clear;
I1=imread('DongWu.jpg');%%读取
n=32;%量化级
I2=I1;
imshow(I2);%%
[h,w,c] = size(I2);
 for i=1:1:w
    for j=1:1:h
        for tidu=1:1:256/n
            for c=1:1:3
                if( ( I2(j,i,c)<n*tidu)&&( I2(j,i,c)>=n*(tidu-1) ) )
                    I2(j,i,c)=n*tidu-n/2;
                end
            end
        end
   
    end  
end

figure,imshow(I2);