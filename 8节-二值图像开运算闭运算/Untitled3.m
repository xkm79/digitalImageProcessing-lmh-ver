%%%%%%%%%%%%%%%%% 影视工程系数字图像处理课程实验： 开运算和闭运算%%%%%%%%%%%%%%%%%%%%%%%%
% clear;
% I=imread('test.bmp');%输入图像
% I2=rgb2gray(I);%转化为灰度图像
% I3 = im2bw(I2);%转化为2值图像
% subplot(2,3,1),imshow(I3);title('原图');
% se2 = strel('disk', 20,0);%生成结构元素se2  % length 30, angle 90 degrees
% c = imerode(I3,se2);   %图像腐蚀
% d = imdilate(c,se2);   %图像膨胀
% subplot(2,3,2),imshow(d);title('腐蚀后膨胀');
% x=imopen(I3,se2);
% subplot(2,3,3),imshow(x);title('开运算');
% c = imdilate(I3,se2);   %图像膨胀
% d = imerode(c,se2);     %图像腐蚀
% subplot(2,3,5),imshow(d);title('膨胀后腐蚀');
% x=imclose(I3,se2);
% subplot(2,3,6),imshow(x);title('闭运算');
%%%%%%%%%%%%思考题： 1、说明开运算和闭运算对原图的变换结果和区别；

%%%开运算更容易使图形连接，闭运算更容易使图形断开

%%%%%%%%2、结合开运算和闭运算，实现先开后闭运算和先闭后开运算

% clear;
% I=imread('test.bmp');%输入图像
% I2=rgb2gray(I);%转化为灰度图像
% I3 = im2bw(I2);%转化为2值图像
% subplot(2,3,1),imshow(I3);title('原图');
% se2 = strel('disk', 20,0);%生成结构元素se2  % length 30, angle 90 degrees
% c = imopen(I3,se2);   %图像开运算
% subplot(2,3,2),imshow(c);title('先开');
% d = imclose(c,se2);   %图像闭运算
% subplot(2,3,3),imshow(d);title('先开后闭');
% 
% c = imclose(I3,se2);   %图像闭运算
% subplot(2,3,5),imshow(c);title('先闭');
% d = imopen(c,se2);   %图像开运算
% subplot(2,3,6),imshow(d);title('先闭后开');

%%%%%%%%%%%%附加题： 结合自己的膨胀和腐蚀源代码实现开闭运算

clear;
I=imread('test.bmp');%输入图像
I2=rgb2gray(I);%转化为灰度图像
I3 = im2bw(I2);%转化为2值图像
subplot(2,3,1),imshow(I3);title('原图');
se2 = strel('disk', 20,0);%生成结构元素se2  % length 30, angle 90 degrees
c = erode(I3,se2);   %图像腐蚀
d = dilate(c,se2);   %图像膨胀
subplot(2,3,2),imshow(d);title('腐蚀后膨胀');
x=imopen(I3,se2);
subplot(2,3,3),imshow(x);title('开运算');
c = dilate(I3,se2);   %图像膨胀
d = erode(c,se2);     %图像腐蚀
subplot(2,3,5),imshow(d);title('膨胀后腐蚀');
x=imclose(I3,se2);
subplot(2,3,6),imshow(x);title('闭运算');
%%%自编函数对仅对方形结构元素有效，对圆形无效


function I=dilate(I1,se)
    [a,b]=size(I1);
    I2=I1;
    [dx,dy]=size(getnhood(se));
    dx=floor(dx/2);
    dy=floor(dy/2);
    for i=1:1:a
        for j=1:1:b
            if I1(i,j)==1
                for m=i-dx:1:i+dx
                    for n=j-dy:1:j+dy
                        I2(m,n)=1;
                    end
                end
            end
        end
    end
    I=I2;
end

function I=erode(I1,se)
    [a,b]=size(I1);
    flag=getnhood(se);%%判断矩阵
    I2=I1;
    [dx,dy]=size(getnhood(se));
    dx=floor(dx/2);
    dy=floor(dy/2);
    for i=1:1:a
        for j=1:1:b%%遍历每个点
            if I1(i,j)==1%%若该点为1
                flag=I1(i-dx:i+dx,j-dy:j+dy);
                if ~isequal((flag&getnhood(se)),getnhood(se))%%若这个点与se不同，则归零
                    I2(i,j)=0;
                end
            end
        end
    end
    I=I2;

end