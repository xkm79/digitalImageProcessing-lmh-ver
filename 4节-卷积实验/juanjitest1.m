%%%%%%%%%%%%%%%%% Ӱ�ӹ���ϵ����ͼ����γ�ʵ�飺ʵ��5 �������imfilter����ʵ��1%%%%%%%%%%%%%%%%%%%%%%%%
% clear;
% I1=imread('end16a.jpg');
% imshow(I1);
% %H = [1  1 1; 1  -8  1;1 1 1];%������˹����
% H=fspecial('gaussian',9,3);%��˹��ͨ�˲�����
% B = imfilter(I1,H);
% figure,imshow(B);
%˼���⣺1�����ڹ۲촰������H���鿴��˹���ӵľ���ֵ  2����д����ʹ��5*5��25ƽ������ģ��ԭͼ�� 
% clear;
% I1=imread('end16a.jpg');
% imshow(I1);
% %H = [1  1 1; 1  -8  1;1 1 1];%������˹����
% H=fspecial('average',[5,5]);%��˹��ͨ�˲�����
% B = imfilter(I1,H);
% figure,imshow(B);

%%3����д����ʹ������ߴ�ģ����ģ��ԭͼ��

clear;
I1=imread('end16a.jpg');
imshow(I1);
n=8;%����������ߴ�
%H = [1  1 1; 1  -8  1;1 1 1];%������˹����
H=fspecial('average',[n,n]);%��˹��ͨ�˲�����
B = imfilter(I1,H);
figure,imshow(B);