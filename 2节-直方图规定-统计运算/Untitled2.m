%%%%%%%%%%%%%%%%% Ӱ�ӹ���ϵ����ͼ����γ�ʵ�飺ʵ��2 ֱ��ͼ�涨��ʵ��%%%%%%%%%%%%%%%%%%%%%%%%
% clear;
% I1=imread('DongWu.jpg');
% I1=rgb2gray(I1);
% figure;
% imhist(I1);
% figure;
% hold on;
% %%����p����
% for i=1:1:255
%     p(i)=0 ;
% end
% for i=1:1:10
%     p(i)=2 ;
% end
% for i=120:1:150
%     p(i)=2 ;
% end
% for i=1:1:255
%     plot(i,p(i),'r.');
% end
% I=histeq(I1,p);%��p�����涨ֱ��ͼ
% 
% figure;
% imhist(I);
% figure;
% imshow(I);

%%˼����1������ֱ��ͼ�涨��ʵ��ͼ�����ȵ��������ڣ���������Ϊ���ʵ�ͼ��

% clear;
% I1=imread('DongWu.jpg');
% I1=rgb2gray(I1);
% figure;
% imhist(I1);
% figure;
% hold on;
% %%����p����
% for i=1:1:255
%     p(i)=0 ;
% end
% for i=1:1:50
%     p(i)=2 ;
% end
% for i=120:1:200
%     p(i)=2 ;
% end
% for i=1:1:255
%     plot(i,p(i),'r.');
% end
% I=histeq(I1,p);%��p�����涨ֱ��ͼ
% 
% figure;
% imhist(I);
% figure;
% imshow(I);

%%˼����2��ʵ��RGB��ɫֱ��ͼ�涨����

% clear;
% I1=imread('DongWu.jpg');
% R=I1(:,:,1);
% G=I1(:,:,2);
% B=I1(:,:,3);
% figure;
% imhist(I1);
% figure;
% hold on;
% %%����p����
% for i=1:1:255
%     p(i)=0 ;
% end
% for i=1:1:50
%     p(i)=2 ;
% end
% for i=120:1:200
%     p(i)=2 ;
% end
% for i=1:1:255
%     plot(i,p(i),'r.');
% end
% R=histeq(R,p);%��p�����涨ֱ��ͼ
% G=histeq(G,p);%��p�����涨ֱ��ͼ
% B=histeq(B,p);%��p�����涨ֱ��ͼ
% I=cat(3,R,G,B);
% figure;
% imhist(I);
% figure;
% imshow(I);

%%����˼����3����һ����̬���λ������2�Ų�ͬ�ع�����ͼ�񣬸��ݿ�̬������ԭ�����Ժϳ����Ų�ͬ�ع��������ͬĿ���ͼ��

clear;
I1=imread("An.png");
I2=imread("Liang.png");
imshow(I1);
figure;
imshow(I2);
I=I1/2+I2/2;
figure;
imshow(I);
