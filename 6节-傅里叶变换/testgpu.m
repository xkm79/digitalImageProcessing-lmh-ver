%%%%%%%%%%%%%%%%% Ӱ�ӹ���ϵ����ͼ����γ�ʵ�飺ʵ��2 FFT��IFFT��ͼ��任��ʵ��%%%%%%%%%%%%%%%%%%%%%%%%

% ��ͼ��Ҫ�������Լ���ͼƬ��
clear;
tic
orgImage1 = imread('2.jpg'); %end16a.bmp'
orgImage2=rgb2gray(orgImage1);%%ת��Ϊ��ɫͼ��%%

orgImage = gpuArray(orgImage2);
%figure(1); imshow(orgImage); 
% ʹ��fft2�任
fftImage = fftshift((fft2(orgImage)));   % ��ά fft�任 
ampImage= abs(fftImage); %��ȡ����ֵ

%��ʾͼƬ
%figure(2); imshow(fftImage,[0 10000]); 
%figure(3); imshow(abs(fftImage),[0 10000]); 
toc
%s=real(ifft2(ifftshift(fftImage)));%%fft����任ifft
%figure(4); imshow(s,[0 255]); %%��ʾ��任���ͼ��
%%˼���⣺�Ƚ�ԭʼͼ��;���fft��ifft�任���ͼ��֮���һ���ԣ���̺����ԭʼ�Ա����ݣ���ʾ-ԭʼͼ��ͽ��ͼ�����������
% ��ͼ��Ҫ�������Լ���ͼƬ��
orgImage1 = imread('2.jpg'); %end16a.bmp'
orgImage=rgb2gray(orgImage1);%%ת��Ϊ��ɫͼ��%%
subplot(2,2,1); imshow(orgImage); 
% ʹ��fft2�任
fftImage = fftshift((fft2(orgImage)));   % ��ά fft�任 
ampImage= abs(fftImage); %��ȡ����ֵ

%��ʾͼƬ
subplot(2,2,2); imshow(fftImage,[0 10000]); 
subplot(2,2,3); imshow(abs(fftImage),[0 10000]); 
 
s=real(ifft2(ifftshift(fftImage)));%%fft����任ifft
subplot(2,2,4); imshow(s,[0 255]); %%��ʾ��任���ͼ��

figure;
imshow(double(orgImage)-s);%%��ȫһ��

%%����⣺�ܷ����������źŴ����鱾��ԭ�ͣ���дFFT2������

clc;         % ��������д���
clear all;   % ������б�����������
close all;   % �ر�����ͼ�δ���
 
I=imread('2.jpg');
[L,C,x]=size(I);
N=L*C;  % �ܹ�ΪN��
 
% ����һ��N�����ɢ����
n=1:N;
y=n.*ones(1,N);
 
% ��ֱ����N���һάFFT�任���Ա����άFFT�任�Ľ�����жԱ�
fft1d_out = fft(y,N); 
 
 
% �����Ƕ�άFFT�任ʵ�ֹ���
 
% ��һ������N��ֳ�L��C��
for c=1:C
    y1(:,c) = y(1,c:C:end);      % �ȷֳ�C�У�ÿ��L��
end
 
% �ڶ�������C��L����б任
% fft_col=fft(y1,L);
for c=1:C
    y_col = y1(:,c);             % ȡ��ÿ�е�L��
    fft_col(:,c) = fft(y_col,L); % �ٶ�ÿ����L��FFT�任
end
   
% �������������ת����WN_nk
for c=1:C
    for l=1:L
        nk=(2*pi*(c-1)*(l-1))/N;  % �ȵõ�nk    
        W(l,c)=cos(nk)-i*sin(nk); % �ٵõ���ת����
%         W1(l,c)=exp(-i*nk);     % �ٵõ���ת����
    end
end
 
% ���Ĳ������б任�Ľ��������ת����WN_nk
fft_col_w=fft_col.*W;
 
% ���岽����L��C����б任
% fft_row=fft(fft_col_w,C,2);
for l=1:L
    y_row = fft_col_w(l,:);      % ȡ��ÿ�е�C��
    fft_row(l,:) = fft(y_row,C); % �ٶ�ÿ����C��FFT�任
end
 
% ���������������
for c=1:C
    for l=1:L
        fft2d_out(1,((c-1)*L)+l)=fft_row(l,c); % �ӵ�һ�����ε����һ��
    end
end
 
% ����άFFT�任�Ľ����һάFFT�任�Ľ�����жԱȣ�ȷ���㷨����ȷ��
% ���˺�С�ļ��������ߵĽ����һ����
fft_diff = fft2d_out - fft1d_out;