%%%%%%%%%%%%%%%%% Ӱ�ӹ���ϵ����ͼ����γ�ʵ�飺 �Ҷ�ͼ��Ŀ�����ͱ�����%%%%%%%%%%%%%%%%%%%%%%%%
% clear;
% I=imread('Shu.jpg');%����ͼ��
% I2=rgb2gray(I);%ת��Ϊ�Ҷ�ͼ��
% subplot(1,3,1),imshow(I2);title('ԭͼ');
% se2 = strel('disk', 30,0);%���ɽṹԪ��se2  
% x=imopen(I2,se2);
% subplot(1,3,2),imshow(x);title('������');
% x=imclose(I2,se2);
% subplot(1,3,3),imshow(x);title('������');
%%%%%%%%%%%%˼����1�� �������Ӳ������۲쿪����ͱ�����Ľ��

% clear;
% I=imread('Shu.jpg');%����ͼ��
% I2=rgb2gray(I);%ת��Ϊ�Ҷ�ͼ��
% subplot(1,3,1),imshow(I2);title('ԭͼ');
% se2 = strel('line', 30,0);%���ɽṹԪ��se2  
% x=imopen(I2,se2);
% subplot(1,3,2),imshow(x);title('������');
% x=imclose(I2,se2);
% subplot(1,3,3),imshow(x);title('������');

%%%%%%%%%%%%˼����2�� ʵ�ֲ�ɫͼ��Ŀ�����ͱ�����

clear;
I=imread('Shu.jpg');%����ͼ��
I2=I;
subplot(1,3,1),imshow(I2);title('ԭͼ');
se2 = strel('line', 30,0);%���ɽṹԪ��se2  
x(:,:,1)=imopen(I2(:,:,1),se2);
x(:,:,2)=imopen(I2(:,:,2),se2);
x(:,:,3)=imopen(I2(:,:,3),se2);
% x=imopen(I2,se2);
subplot(1,3,2),imshow(x);title('������');
x(:,:,1)=imclose(I2(:,:,1),se2);
x(:,:,2)=imclose(I2(:,:,2),se2);
x(:,:,3)=imclose(I2(:,:,3),se2);
% x=imclose(I2,se2);
subplot(1,3,3),imshow(x);title('������');