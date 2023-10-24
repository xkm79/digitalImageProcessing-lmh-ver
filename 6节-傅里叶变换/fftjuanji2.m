clear all
clc
aa = imread('PingGuo.jpg'); %end16a.bmp'
a = double(rgb2gray(aa));
subplot(1,3,1);imshow(rgb2gray(aa));
%b = [ 1/9 1/9 1/9; 1/9 1/9 1/9; 1/9 1/9 1/9];
b = [ 1 1 1; 1 -8 1; 1 1 1];
[ra,ca] = size(a);
[rb,cb] = size(b);
r = ra+rb-1;
c = ca+cb-1;
result = conv2(a,b,'same');    % Ê±Óò¾í»ý
a1 = [a zeros(ra,c-ca);zeros(r-ra,c)];  % 0ÑÓÍØ
b1 = [b zeros(rb,c-cb);zeros(r-rb,c)];
A = fft2(a1);
B = fft2(b1);
result1 = ifft2(A.*B);  % ÆµÓòÏà³Ë
subplot(1,3,2);imshow(uint8(result1));
subplot(1,3,3);imshow(uint8(result));