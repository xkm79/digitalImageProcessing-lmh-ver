%%%%%%%%%%%%%%%%% Ӱ�ӹ���ϵ����ͼ����γ�ʵ�飺ʵ��9 DCT�任ʵ��%%%%%%%%%%%%%%%%%%%%%%%%

% RGB = imread('PingGuo.jpg');
% I = rgb2gray(RGB);
% J = dct2(I);
% subplot(2,2,1);imshow(I);
% subplot(2,2,2);imshow(log(abs(J)),[])
% for i=1:1:100
%     for j=1:1:100
%         J(j,i)=0;
%     end
% end
% subplot(2,2,3);imshow(log(abs(J)),[])
% K = idct2(J);
% subplot(2,2,4); imshow(K,[0 125])
%%%%%%%%%%%%%˼����1������DCTʵ��ͼ��ĸ�ͨն���˲�����%%%%%%%%%%%%%%%%%%%

%%%������Ǹ�ͨն��

%%%%%%%%%%%%%˼����2�������������۲�����Խ����Ӱ�첢��¼ʵ����%%%%%%%%%%%%%%%%%%%

clear;
f=50;
RGB = imread('PingGuo.jpg');
I = rgb2gray(RGB);
J = dct2(I);
subplot(2,2,1);imshow(I);
subplot(2,2,2);imshow(log(abs(J)),[])
for i=1:1:f
    for j=1:1:f
        J(j,i)=0;
    end
end
subplot(2,2,3);imshow(log(abs(J)),[])
K = idct2(J);
subplot(2,2,4); imshow(K,[0 125])