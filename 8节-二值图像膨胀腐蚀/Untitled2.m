%%%%%%%%%%%%%%%%% Ӱ�ӹ���ϵ����ͼ����γ�ʵ�飺 �����븯��ʵ��%%%%%%%%%%%%%%%%%%%%%%%%
clear;
I=imread('AnLi.bmp');%����ͼ��
I2=rgb2gray(I);%ת��Ϊ�Ҷ�ͼ��
I3 = im2bw(I2);%ת��Ϊ2ֵͼ��
subplot(1,3,1),imshow(I3);
title('ԭͼ');
se2 = strel('line',80,90);%���ɽṹԪ��se2  % length 30, angle 90 degrees
c = imdilate(I3,se2);   %ͼ������
subplot(1,3,2),imshow(c);
title("����");
d = imerode(I3,se2);  %ͼ��ʴ
subplot(1,3,3),imshow(d);
title('��ʴ');
%%%%%%%%%%%%˼���⣺1��Ϊ��ͼ��ʴ��Ŀ���������أ���

%%%����

%%%%%%%2���ı�ṹԪ��se2�ľ���ֵ��'arbitrary';'pair';'diamond';'periodicline';'
%%%%%%%%%%%%disk';'rectangle';'line';'square';'octagon'��,�۲첻ͬ�ṹԪ�ض�ͼ�����ͺ�ͼ��ʴ��Ӱ�졣
% clear;
% I=imread('AnLi.bmp');%����ͼ��
% I2=rgb2gray(I);%ת��Ϊ�Ҷ�ͼ��
% I3 = im2bw(I2);%ת��Ϊ2ֵͼ��
% subplot(1,3,1),imshow(I3);
% title('ԭͼ');
% se2 = strel('rectangle',[300,300]);%���ɽṹԪ��se2  % length 30, angle 90 degrees
% c = imdilate(I3,se2);   %ͼ������
% subplot(1,3,2),imshow(c);
% title("����");
% d = imerode(I3,se2);  %ͼ��ʴ
% subplot(1,3,3),imshow(d);
% title('��ʴ');