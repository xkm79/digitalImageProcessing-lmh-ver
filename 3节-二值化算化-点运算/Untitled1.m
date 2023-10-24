%%%%%%%%%%%%%%%%% 影视工程系数字图像处理课程实验：二值化非函数实例-点运算%%%%%%%%%%%%%%%%%%%%%%%%
% clear;
% I1=imread('123.bmp');
% I2=rgb2gray(I1);
% imshow(I2);
% for i=1:1:503
%     for j=1:1:39
% 
%         if I2(j,i)<170
%             I2(j,i)=0;
%         end
%         if I2(j,i)>=170
%             I2(j,i)=255;
%         end       
%     end  
% end
% figure;
% imshow(I2);
%%思考题1：修改二值化的阈值，观察图像变化的结果

% clear;
% I1=imread('123.bmp');
% I2=rgb2gray(I1);
% I3=I2;
% imshow(I2);
% for i=1:1:503
%     for j=1:1:39
% 
%         if I2(j,i)<170
%             I2(j,i)=0;
%         end
%         if I2(j,i)>=170
%             I2(j,i)=255;
%         end       
%     end  
% end
% figure;
% imshow(I2);
% for i=1:1:503
%     for j=1:1:39
% 
%         if I3(j,i)<200
%             I3(j,i)=0;
%         end
%         if I3(j,i)>=200
%             I3(j,i)=255;
%         end
%     end  
% end
% figure;
% imshow(I3);

%%思考题2：更换为彩色图像，观察图像变化的结果

clear;
I1=imread('123.bmp');
I2=I1;
imshow(I2);
for i=1:1:503
    for j=1:1:39
        if I2(j,i)<170
            I2(j,i)=0;
        end
        if I2(j,i)>=170
            I2(j,i)=255;
        end       
    end  
end
figure;
imshow(I2);