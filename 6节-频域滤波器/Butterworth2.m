%%%%%%%%%%%%%%%%% Ӱ�ӹ���ϵ����ͼ����γ�ʵ�飺ʵ��8 Butterworth��ͨ�任ʵ��%%%%%%%%%%%%%%%%%%%%%%%%
clc; clear all; close all;
I=imread('PingGuo.jpg');
J11 = imnoise(I, 'salt & pepper');   % ���ӽ�������
J1 = rgb2gray(J11);
subplot(2, 2, 1); imshow(I); title('ԭͼ��');
subplot(2, 2, 2); imshow(J1); title('������ͼ��');
g = fft2(double(J1));        % ����Ҷ�任
g = fftshift(g);             % ת�����ݾ���
[M, N]=size(g);
nn = 2;                      % ���װ�����˹(Butterworth)��ͨ�˲���
d0 = 20;
m = fix(M/2);
n = fix(N/2);
for i = 1:M
    for j = 1:N
        d = sqrt((i-m)^2+(j-n)^2);
        h = 1/(1+0.414*(d/d0)^(-2*nn));   % �����ͨ�˲������ݺ���
        result(i,j) = h*g(i,j);
        T(i, j) = h;
    end
end
result = ifftshift(result);
J2 = ifft2(result);
J3 = uint8(real(J2));
subplot(2, 2, 3); mesh(T); title('�˲���ʾ��ͼ')
box on;
% ��ʾ�˲�������ͼ��
subplot(2, 2, 4); imshow(J3); title('�˲����')
%%˼����1��ʵ��Butterworth��ͨ�˲���

%%%�������Butterworth��ͨ�˲���

%%˼����2��ʵ��3��Butterworth�˲���

clc; clear all; close all;
I=imread('PingGuo.jpg');
J11 = imnoise(I, 'salt & pepper');   % ���ӽ�������
J1 = rgb2gray(J11);
subplot(2, 2, 1); imshow(I); title('ԭͼ��');
subplot(2, 2, 2); imshow(J1); title('������ͼ��');
g = fft2(double(J1));        % ����Ҷ�任
g = fftshift(g);             % ת�����ݾ���
[M, N]=size(g);
nn = 3;                      % ���װ�����˹(Butterworth)��ͨ�˲���
d0 = 20;
m = fix(M/2);
n = fix(N/2);
for i = 1:M
    for j = 1:N
        d = sqrt((i-m)^2+(j-n)^2);
        h = 1/(1+0.414*(d/d0)^(-2*nn));   % �����ͨ�˲������ݺ���
        result(i,j) = h*g(i,j);
        T(i, j) = h;
    end
end
result = ifftshift(result);
J2 = ifft2(result);
J3 = uint8(real(J2));
subplot(2, 2, 3); mesh(T); title('�˲���ʾ��ͼ')
box on;
% ��ʾ�˲�������ͼ��
subplot(2, 2, 4); imshow(J3); title('�˲����')