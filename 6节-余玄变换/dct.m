%%%%%%%%%%%%%%%%% Ӱ�ӹ���ϵ����ͼ����γ�ʵ�飺ʵ��9 DCT�任ʵ��%%%%%%%%%%%%%%%%%%%%%%%%
% clear;
% RGB = imread('PingGuo.jpg');
% I = rgb2gray(RGB);
% J = dct2(I);
% subplot(2,2,1);imshow(I);
% subplot(2,2,2);imshow(log(abs(J)),[])
% [h w]=size(RGB);
% for i=180:1:w/3
%     for j=1:1:h
%         J(j,i)=0;
%     end
% end
% for i=1:1:w/3
%     for j=180:1:h
%         J(j,i)=0;
%     end
% end
% subplot(2,2,3);imshow(log(abs(J)),[])
% K = idct2(J);
% subplot(2,2,4);imshow(K,[0 255])
%%%%%%%%%%%%%˼����1������DCTʵ��ͼ��ĸ�ͨն���˲�����%%%%%%%%%%%%%%%%%%%

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

%%%%%%%%%%%%%˼����2�������������۲�����Խ����Ӱ�첢��¼ʵ����%%%%%%%%%%%%%%%%%%%

clear;
f=50;%%�޸�����
RGB = imread('PingGuo.jpg');
I = rgb2gray(RGB);
J = dct2(I);
subplot(2,2,1);imshow(I);
subplot(2,2,2);imshow(log(abs(J)),[])
[h w]=size(RGB);
for i=f:1:w/3
    for j=1:1:h
        J(j,i)=0;
    end
end
for i=1:1:w/3
    for j=f:1:h
        J(j,i)=0;
    end
end
subplot(2,2,3);imshow(log(abs(J)),[])
K = idct2(J);
subplot(2,2,4);imshow(K,[0 255])