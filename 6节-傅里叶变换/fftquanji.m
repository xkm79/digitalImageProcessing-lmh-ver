%%%%%%%%%%%%%%%%% Ӱ�ӹ���ϵ����ͼ����γ�ʵ�飺ʵ��5 ����͵��%%%%%%%%%%%%%%%%%%%%%%%%
% ��ͼ��Ҫ�������Լ���ͼƬ��
clear;
aa = imread('PingGuo.jpg'); %end16a.bmp'
a = double(rgb2gray(aa));
%b = [ 1/9 1/9 1/9; 1/9 1/9 1/9; 1/9 1/9 1/9];
b = [ 1 1 1; 1 -8 1; 1 1 1];
% a = randn(5);
% b = randn(3);
[ra,ca] = size(a);
[rb,cb] = size(b);
r = ra+rb-1;
c = ca+cb-1;
result = conv2(a,b,'same');    % ʱ����
a1 = [a zeros(ra,c-ca);zeros(r-ra,c)];  % 0����
b1 = [b zeros(rb,c-cb);zeros(r-rb,c)];
A = fft2(a1);
B = fft2(b1);
result1 = ifft2(A.*B);  % Ƶ�����
% r_start = floor(rb/2) +1;
% r_end = r_start + ra -1;
% c_start = floor(cb/2) +1;
% c_end = c_start + ca -1;
%result1 = result1(r_start:r_end,c_start:c_end);
imshow(uint8(result1));

figure,imshow(uint8(result));
%%%%˼����shift��Ŀ��(��ʵ��4�Ƚϣ�ʵ��3����shift����)%%%%%%%%%%%%%