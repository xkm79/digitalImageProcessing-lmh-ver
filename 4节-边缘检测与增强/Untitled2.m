%%%%%%%%%%%%%%%%% Ӱ�ӹ���ϵ����ͼ����γ�ʵ�飺ʵ��1 ˮƽ�����Ե���ʵ��%%%%%%%%%%%%%%%%%%%%%%%%
% clear;
% I1=imread('end16a.jpg');
% I2=rgb2gray(I1);
% I=I2;
% 
% 
% for i=2:1:719
%     for j=2:1:575
%         I(j,i)= abs(I2(j,i)-I2(j,i+1)) ; %ˮƽ�����Ե�������
% 
%     end  
% end
% 
% 
% imshow(I2);%�����Ե���ͼ��
% figure;
% imshow(I);
% figure;
% imshow(I2-I);%�����Ե��ǿͼ��

%˼����1�� ����ʵ�ִ�ֱ�����Ե��⣬����ˮƽ����ı�Ե��ǿ���жԱ�

% clear;
% I1=imread('end16a.jpg');
% I2=rgb2gray(I1);
% I=I2;
% 
% 
% for i=2:1:719
%     for j=2:1:575
%         I(j,i)= abs(I2(j,i)-I2(j+1,i)) ; %ˮƽ�����Ե�������
% 
%     end  
% end
% 
% 
% imshow(I2);%�����Ե���ͼ��
% figure;
% imshow(I);
% figure;
% imshow(I2-I);%�����Ե��ǿͼ��

%˼����2�� ����������ɫͼ��ı�Ե��ǿ���벢��ʾ

clear;
I1=imread('end16a.jpg');
I2=I1;
I=I2;

for i=2:1:719
    for j=2:1:575
        for c=1:1:3
            I(j,i,c)= abs(I2(j,i,c)-I2(j+1,i,c)) ; %ˮƽ�����Ե�������
        end
    end  
end


imshow(I2);%�����Ե���ͼ��
figure;
imshow(I);
figure;
imshow(I2-I);%�����Ե��ǿͼ��