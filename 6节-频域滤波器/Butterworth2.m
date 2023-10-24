%%%%%%%%%%%%%%%%% 影视工程系数字图像处理课程实验：实验8 Butterworth低通变换实例%%%%%%%%%%%%%%%%%%%%%%%%
clc; clear all; close all;
I=imread('PingGuo.jpg');
J11 = imnoise(I, 'salt & pepper');   % 叠加椒盐噪声
J1 = rgb2gray(J11);
subplot(2, 2, 1); imshow(I); title('原图像');
subplot(2, 2, 2); imshow(J1); title('加噪声图像');
g = fft2(double(J1));        % 傅立叶变换
g = fftshift(g);             % 转换数据矩阵
[M, N]=size(g);
nn = 2;                      % 二阶巴特沃斯(Butterworth)低通滤波器
d0 = 20;
m = fix(M/2);
n = fix(N/2);
for i = 1:M
    for j = 1:N
        d = sqrt((i-m)^2+(j-n)^2);
        h = 1/(1+0.414*(d/d0)^(-2*nn));   % 计算低通滤波器传递函数
        result(i,j) = h*g(i,j);
        T(i, j) = h;
    end
end
result = ifftshift(result);
J2 = ifft2(result);
J3 = uint8(real(J2));
subplot(2, 2, 3); mesh(T); title('滤波器示意图')
box on;
% 显示滤波处理后的图像
subplot(2, 2, 4); imshow(J3); title('滤波结果')
%%思考题1：实现Butterworth高通滤波器

%%%上面就是Butterworth高通滤波器

%%思考题2：实现3阶Butterworth滤波器

clc; clear all; close all;
I=imread('PingGuo.jpg');
J11 = imnoise(I, 'salt & pepper');   % 叠加椒盐噪声
J1 = rgb2gray(J11);
subplot(2, 2, 1); imshow(I); title('原图像');
subplot(2, 2, 2); imshow(J1); title('加噪声图像');
g = fft2(double(J1));        % 傅立叶变换
g = fftshift(g);             % 转换数据矩阵
[M, N]=size(g);
nn = 3;                      % 三阶巴特沃斯(Butterworth)低通滤波器
d0 = 20;
m = fix(M/2);
n = fix(N/2);
for i = 1:M
    for j = 1:N
        d = sqrt((i-m)^2+(j-n)^2);
        h = 1/(1+0.414*(d/d0)^(-2*nn));   % 计算低通滤波器传递函数
        result(i,j) = h*g(i,j);
        T(i, j) = h;
    end
end
result = ifftshift(result);
J2 = ifft2(result);
J3 = uint8(real(J2));
subplot(2, 2, 3); mesh(T); title('滤波器示意图')
box on;
% 显示滤波处理后的图像
subplot(2, 2, 4); imshow(J3); title('滤波结果')