%%%%%%%%%%%%%%%%% Ӱ�ӹ���ϵ����ͼ����γ�ʵ�飺 �Ǽ�%%%%%%%%%%%%%%%%%%%%%%%%
% clear;
% I=imread('3.jpg');%����ͼ��
% I2=rgb2gray(I);%ת��Ϊ�Ҷ�ͼ��
% I3 = im2bw(I2);%ת��Ϊ2ֵͼ��
% imshow(I3);
% se2 = strel('disk', 10,0);%���ɽṹԪ��se2  % length 30, angle 90 degrees  
% BW2 = bwmorph(I3,'skel',Inf);
% figure,imshow(BW2);

%%%%%%%%%%%%˼����1�� ���ض��ͼ�񣬲��ԹǼܻ���Ч��

clear;
I=imread('b1.png');%����ͼ��
I2=rgb2gray(I);%ת��Ϊ�Ҷ�ͼ��
I3 = im2bw(I2);%ת��Ϊ2ֵͼ��
imshow(I3);
se2 = strel('disk', 10,0);%���ɽṹԪ��se2  % length 30, angle 90 degrees  
BW2 = bwmorph(I3,'skel',Inf);
figure,imshow(BW2);

%%%%%%%%%%%%�����2�� ��������ԭ������ʵ�ֹǼܻ�����