%%%%%%%%%%%%%%%%% Ӱ�ӹ���ϵ����ͼ����γ�ʵ�飺ʵ��1 ֱ��ͼ����ʵ��-ͳ��ֱ��ͼ��%%%%%%%%%%%%%%%%%%%%%%%%
% clear;
% I1=imread('DongWu.jpg');
% I1=rgb2gray(I1);
% figure;
% imshow(I1);%%ԭͼ
% figure;
% imhist(I1);%%ԭͼֱ��ͼ
% I=histeq(I1,8);%��I1�ĻҶ�ֱ��ͼ��255Ϊ���ûҶ�����
% figure;
% imshow(I);%%ֱ��ͼ������ͼ��
% figure;
% imhist(I);%%ֱ��ͼ�����ͼ���ֱ��ͼ��ʾ

%%˼����1������ֱ��ͼ���ж�ֵ��������

% clear;
% I1=imread('DongWu.jpg');
% I1=rgb2gray(I1);
% [h,w]=size(I1);
% I=I1;
% figure;
% imshow(I1);%%ԭͼ
% figure;
% imhist(I1);%%ԭͼֱ��ͼ
% for i=1:1:h
%     for j=1:1:w
%         if I1(i,j)<=124
%             I(i,j)=0;
%         end
%         if I1(i,j)>124
%             I(i,j)=255;
%         end
%     end
% end%%ֱ��ͼ��ֵ��
% figure;
% imshow(I);%%ֱ��ͼ��ֵ�����ͼ��
% figure;
% imhist(I);%%ֱ��ͼ��ֵ����ͼ���ֱ��ͼ��ʾ

%%˼����2��ʵ��RGB��ɫֱ��ͼ���⡣

% clear;
% I1=imread('DongWu.jpg');
% figure;
% imshow(I1);%%ԭͼ
% figure;
% imhist(I1);%%ԭͼֱ��ͼ
% I=histeq(I1,255);%��I1�ĻҶ�ֱ��ͼ��255Ϊ���ûҶ�����
% figure;
% imshow(I);%%ֱ��ͼ������ͼ��
% figure;
% imhist(I);%%ֱ��ͼ�����ͼ���ֱ��ͼ��ʾ

% clear;
% I1=imread('DongWu.jpg');
% figure;
% imshow(I1);%%ԭͼ
% figure;
% imhist(I1);%%ԭͼֱ��ͼ
% R=I1(:,:,1);
% G=I1(:,:,2);
% B=I1(:,:,3);
% R=histeq(R,255);
% G=histeq(G,255);
% B=histeq(B,255);
% I=cat(3,R,G,B);
% figure;
% imshow(I);%%ֱ��ͼ������ͼ��
% figure;
% imhist(I);%%ֱ��ͼ�����ͼ���ֱ��ͼ��ʾ

%%˼����3����������㲽�裬��������ֱ��ͼ���⺯����ѡ������

clear;
I1=imread('DongWu.jpg');
I1=rgb2gray(I1);
I=I1;
[h,w]=size(I1);
L=8;%%�ҶȲ����  ��д8�ı���
x=256/L;%%ÿһ��Ĵ�С
n=zeros(1,L);
p=n;
s=p;
S=s;
figure;
imshow(I1);%%ԭͼ
figure;
imhist(I1);%%ԭͼֱ��ͼ
for i=1:1:h
    for j=1:1:w
        for y=0:x:256-x
            if(I1(i,j)>=y&&I1(i,j)<y+x)
                n(y/x+1)=n(y/x+1)+1;
            end
        end
    end
end
n1=sum(n);
p=n/n1;
for i=1:1:L
    s(i)=sum(p(1:i));
end
for i=1:1:L
    S(i)=floor(s(i)*(L-1));
end%%���ӳ���Ӧ��ϵ
for i=1:1:h
    for j=1:1:w
        for y=0:x:256-x
            if(I1(i,j)>=y-x/2&&I1(i,j)<y+x/2)
                I(i,j)=S(y/x+1)*x;
            end
        end
    end
end
figure;
imshow(I);%%ֱ��ͼ������ͼ��
figure;
imhist(I);%%ֱ��ͼ�����ͼ���ֱ��ͼ��ʾ