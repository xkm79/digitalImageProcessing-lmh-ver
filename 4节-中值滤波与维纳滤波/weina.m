%%%%%%%%%%%%%%%%% Ӱ�ӹ���ϵ����ͼ����γ�ʵ�飺ʵ��8 ά���˲�ʵ��%%%%%%%%%%%%%%%%%%%%%%%%
RGB = imread('QiuShengQuan.jpg');
I = rgb2gray(RGB);
subplot(2,2,1); 
imshow (I);title('Original Image');
J = imnoise(I,'gaussian',0,0.02);
subplot(2,2,2); imshow(J);title('��Ӹ�˹����');
K = wiener2(J,[3 3]);
subplot(2,2,3); imshow(K);title('ά���˲���Ľ��');
K1 = medfilt2(J);   %��Ĭ�ϵ�3��3�������н�����ֵ�˲�
subplot(2,2,4); imshow(K1);title('��ֵ�˲���Ľ��');
%˼���⣺ 1���Ƚ�ԭͼ����ֵ�˲����ͼ��֮������𣬱Ƚ�ά���˲�����ֵ�˲��Ĵ���Ч��������¼��ʵ�鱾��