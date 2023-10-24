%%%%%%%%%%%%%%%%% 影视工程系数字图像处理课程实验：实验2 FFT与IFFT对图像变换的实例%%%%%%%%%%%%%%%%%%%%%%%%

% 读图（要换成你自己的图片）
clear;
tic
orgImage1 = imread('2.jpg'); %end16a.bmp'
orgImage2=rgb2gray(orgImage1);%%转换为单色图像%%

orgImage = gpuArray(orgImage2);
%figure(1); imshow(orgImage); 
% 使用fft2变换
fftImage = fftshift((fft2(orgImage)));   % 二维 fft变换 
ampImage= abs(fftImage); %获取绝对值

%显示图片
%figure(2); imshow(fftImage,[0 10000]); 
%figure(3); imshow(abs(fftImage),[0 10000]); 
toc
%s=real(ifft2(ifftshift(fftImage)));%%fft逆向变换ifft
%figure(4); imshow(s,[0 255]); %%显示你变换后的图像
%%思考题：比较原始图像和经过fft和ifft变换后的图像之间的一致性（编程后给出原始对比数据，提示-原始图像和结果图像两者相减）
% 读图（要换成你自己的图片）
orgImage1 = imread('2.jpg'); %end16a.bmp'
orgImage=rgb2gray(orgImage1);%%转换为单色图像%%
subplot(2,2,1); imshow(orgImage); 
% 使用fft2变换
fftImage = fftshift((fft2(orgImage)));   % 二维 fft变换 
ampImage= abs(fftImage); %获取绝对值

%显示图片
subplot(2,2,2); imshow(fftImage,[0 10000]); 
subplot(2,2,3); imshow(abs(fftImage),[0 10000]); 
 
s=real(ifft2(ifftshift(fftImage)));%%fft逆向变换ifft
subplot(2,2,4); imshow(s,[0 255]); %%显示你变换后的图像

figure;
imshow(double(orgImage)-s);%%完全一致

%%提高题：能否利用数字信号处理书本的原型，编写FFT2函数？

clc;         % 清除命令行窗口
clear all;   % 清除所有变量、函数等
close all;   % 关闭所有图形窗口
 
I=imread('2.jpg');
[L,C,x]=size(I);
N=L*C;  % 总共为N点
 
% 产生一个N点的离散序列
n=1:N;
y=n.*ones(1,N);
 
% 先直接做N点的一维FFT变换，以便与二维FFT变换的结果进行对比
fft1d_out = fft(y,N); 
 
 
% 以下是二维FFT变换实现过程
 
% 第一步：将N点分成L行C列
for c=1:C
    y1(:,c) = y(1,c:C:end);      % 先分成C列，每列L点
end
 
% 第二步：做C次L点的列变换
% fft_col=fft(y1,L);
for c=1:C
    y_col = y1(:,c);             % 取出每列的L点
    fft_col(:,c) = fft(y_col,L); % 再对每列做L点FFT变换
end
   
% 第三步：获得旋转因子WN_nk
for c=1:C
    for l=1:L
        nk=(2*pi*(c-1)*(l-1))/N;  % 先得到nk    
        W(l,c)=cos(nk)-i*sin(nk); % 再得到旋转因子
%         W1(l,c)=exp(-i*nk);     % 再得到旋转因子
    end
end
 
% 第四步：将列变换的结果乘以旋转因子WN_nk
fft_col_w=fft_col.*W;
 
% 第五步：做L次C点的行变换
% fft_row=fft(fft_col_w,C,2);
for l=1:L
    y_row = fft_col_w(l,:);      % 取出每行的C点
    fft_row(l,:) = fft(y_row,C); % 再对每行做C点FFT变换
end
 
% 第六步：整序输出
for c=1:C
    for l=1:L
        fft2d_out(1,((c-1)*L)+l)=fft_row(l,c); % 从第一列依次到最后一列
    end
end
 
% 将二维FFT变换的结果与一维FFT变换的结果进行对比，确认算法的正确性
% 除了很小的计算误差，两者的结果是一样的
fft_diff = fft2d_out - fft1d_out;