
%%%%%%%%%%%%%%%%% Ӱ�ӹ���ϵ����ͼ����γ�ʵ�飺 ʵ��3 ͼ��ķֱ��� %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% clear;
% I1=imread('DongWu.jpg');%%��ȡ
% imshow(I1);%%
% I2=I1;
% [a b c] = size(I1);
% for i=13:25:b%%ͼ��ֱ���
%     for j=13:25:a%25*25����
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

%%%%%%%%%%%%˼����1������3*3����5*5����7*7����ķֱ���ת��%%%%%%%%%%%%%%%%%%%%%
% clear;
% I1=imread('DongWu.jpg');%%��ȡ
% n=5;%��Ҫ�Ĺ�����
% imshow(I1);%%ԭͼ
% I2=I1;
% [a b c] = size(I1);
% for i=ceil(n/2):n:b%%ͼ��ֱ���
%     for j=ceil(n/2):n:a%n*n����
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


%%%%%%%%%%%%����˼���⣺���и��и��еķֱ���ת����һ�б�����һ��ɾ����һ�б�����һ��ɾ��������Ч%%%%%%%%%%%%%%%%%%%%%

clear;
I1=imread('DongWu.jpg');%%��ȡ
n=3;%��Ҫ�Ĺ�����
imshow(I1);%%ԭͼ
I2=I1;
[a b c] = size(I1);
for i=ceil(n/2):2*n:b%%ͼ��ֱ���
    for j=ceil(n/2):2*n:a%n*n����
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