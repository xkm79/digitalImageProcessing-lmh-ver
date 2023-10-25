%%%%%%%%%%%%%%%%% 影视工程系数字图像处理课程实验：实验9 DCT变换实例%%%%%%%%%%%%%%%%%%%%%%%%
clear;
RGB = imread('PingGuo.jpg');
I = rgb2gray(RGB);
J = dct2(I);
subplot(2,2,1);imshow(I);
subplot(2,2,2);imshow(log(abs(J)),[])
[h w]=size(RGB);
for i=180:1:w/3
    for j=1:1:h
        J(j,i)=0;
    end
end
for i=1:1:w/3
    for j=180:1:h
        J(j,i)=0;
    end
end
subplot(2,2,3);imshow(log(abs(J)),[])
K = idct2(J);
subplot(2,2,4);imshow(K,[0 255])
%%%%%%%%%%%%%思考题1：利用DCT实现图像的高通斩断滤波功能%%%%%%%%%%%%%%%%%%%

%%%同上，高通斩断即低通滤波

%%%%%%%%%%%%%思考题2：调整参数，观察参数对结果的影响并记录实验结果%%%%%%%%%%%%%%%%%%%

clear;
f=50;%%修改这里
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
