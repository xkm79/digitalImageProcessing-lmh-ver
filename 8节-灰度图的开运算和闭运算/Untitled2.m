%%%%%%%%%%%%%%%%% Ӱ�ӹ���ϵ����ͼ����γ�ʵ�飺 �Ҷ�ͼ��������븯��ʵ��%%%%%%%%%%%%%%%%%%%%%%%%
% clear;
% I=imread('Shu.jpg');%����ͼ��
% I3=rgb2gray(I);%ת��Ϊ�Ҷ�ͼ��
% subplot(1,3,1),imshow(I3);title('ԭͼ');
% se2 = strel('disk', 30,0);%���ɽṹԪ��se2  
% c = imdilate(I3,se2);   %�Ҷ�ͼ������
% subplot(1,3,2),imshow(c);title('����');
% d = imerode(I3,se2);  %�Ҷ�ͼ��ʴ
% subplot(1,3,3),imshow(d);title('��ʴ');
%%%%%%%%%%%%˼����1�� ���̣���������븯ʴ����������ͱ�����ĺ���

% clear;
% I=imread('Shu.jpg');%����ͼ��
% I3=rgb2gray(I);%ת��Ϊ�Ҷ�ͼ��
% subplot(2,3,1),imshow(I3);title('ԭͼ');
% se2 = strel('disk', 30,0);%���ɽṹԪ��se2  
% c = imerode(I3,se2);  %�Ҷ�ͼ��ʴ
% subplot(2,3,2),imshow(c);title('ͼ���ȸ�ʴ');
% d = imdilate(c,se2);   %�Ҷ�ͼ������
% subplot(2,3,3),imshow(d);title('������');
% c = imdilate(I3,se2);   %�Ҷ�ͼ������
% subplot(2,3,5),imshow(c);title('ͼ��������');
% d = imerode(c,se2);  %�Ҷ�ͼ��ʴ
% subplot(2,3,6),imshow(d);title('������');

%%%%%%%%%%%%˼����2�� ʵ�ֲ�ɫͼ��������븯ʴ

clear;
I=imread('Shu.JPG');%����ͼ��
I3=I;
subplot(1,3,1),imshow(I3);title('ԭͼ');
se2 = strel('disk', 30,0);%���ɽṹԪ��se2  
c(:,:,1)=imdilate(I3(:,:,1),se2);
c(:,:,2)=imdilate(I3(:,:,2),se2);
c(:,:,3)=imdilate(I3(:,:,3),se2);
% c = imdilate(I3,se2);   %ͼ������
subplot(1,3,2),imshow(c);title('����');
d(:,:,1)=imerode(I3(:,:,1),se2);
d(:,:,2)=imerode(I3(:,:,2),se2);
d(:,:,3)=imerode(I3(:,:,3),se2);
% d = imerode(I3,se2);  %ͼ��ʴ
subplot(1,3,3),imshow(d);title('��ʴ');