%%%%%%%%%%%%%%%%% Ӱ�ӹ���ϵ����ͼ����γ�ʵ�飺ʵ��7 ��ֵ�˲�medfilt2����ʵ��2%%%%%%%%%%%%%%%%%%%%%%%%
% I=imread('QiuShengQuan.jpg');
% I=rgb2gray(I);
% subplot(2,2,1); 
% imshow (I);title('Original Image');
% J=imnoise(I,'salt & pepper',0.02);  %����ν������������ܶ�Ϊ0.02
% subplot(2,2,2);imshow(J);title('��ӽ�������');
% K = medfilt2(J);              %��Ĭ�ϵ�3��3�������н�����ֵ�˲�
% subplot(2,2,3);imshow(K);title('��ֵ�˲���Ľ��');
% K1 = wiener2(J,[3 3]);%ά���˲�
% subplot(2,2,4);imshow(K1);title('ά���˲���Ľ��');
%˼���⣺ 1���Ƚ�ԭͼ����ֵ�˲����ͼ��֮������𣬱Ƚ�ά���˲�����ֵ�˲��Ĵ���Ч��������¼��ʵ�鱾��
%        2���������ϵ��㷨������д��ֵ�˲�������
% �ο����£�
I=imread('QiuShengQuan.JPG');
imshow(I);
J=imnoise(I,'salt & pepper',0.02);
figure,imshow(J);title('������ͼ');
figure;
[A,map]=imread('QiuShengQuan.JPG');        
imshow(A,map);                       
title('ԭͼ');
image=double(A);
u=zeros(1,9);
for i=2:255
    for j=2:255
        u(1)=image(i,j);u(2)=image(i, j+1);u(3)=image(i-1,j+1);
        u(4)=image(i-1,j);u(5)=image(i-1,j-1);u(6)=image(i,j-1);
        u(7)=image(i+1,j-1);u(8)=image(i+1,j);u(9)=image(i+1,j+1);
        for p=1:8
            for q=1:8-p
                if u(q)>u(q+1)
                    k=u(q);u(q)=u(q+1);u(q+1)=k;
                end
            end
        end
        rimage(i,j)=u(5);
    end
end
figure;
imshow(rimage,map);
title('��ֵ�˲�');