
%%%%%%%%%%%%%%%%% Ӱ�ӹ���ϵ����ͼ����γ�ʵ�飺ʵ��2 ͼ��Ļҽ����� %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% clear;
% I1=imread('DongWu.jpg');%%��ȡ
% 
% I2=rgb2gray(I1);%��ɫ��
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

%%%%%%%%%%%%˼����1������2��4��8��32�Ҷȼ���������%%%%%%%%%%%%%%%%%%%%%

% clear;
% I1=imread('DongWu.jpg');%%��ȡ
% n=32;%������
% I2=rgb2gray(I1);%��ɫ��
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

%%%%%%%%%%%%˼����2������2��4��8��32��ɫ��������%%%%%%%%%%%%%%%%%%%%%+

clear;
I1=imread('DongWu.jpg');%%��ȡ
n=32;%������
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