%%%%%%%%%%%%%%%%% Ӱ�ӹ���ϵ����ͼ����γ�ʵ�飺��ֵ���Ǻ���ʵ��-������%%%%%%%%%%%%%%%%%%%%%%%%
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
%%˼����1���޸Ķ�ֵ������ֵ���۲�ͼ��仯�Ľ��

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

%%˼����2������Ϊ��ɫͼ�񣬹۲�ͼ��仯�Ľ��

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