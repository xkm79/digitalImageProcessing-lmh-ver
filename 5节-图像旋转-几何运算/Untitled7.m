%%%%%%%%%%%%%%%%% 影视工程系数字图像处理课程实验：实验4 图像旋转实例-double双线性插值算法%%%%%%%%%%%%%%%%%%%%%%%%
% clear;
% I1=imread('PingGuo.jpg');
% [h w] = size(I1);
% I2=I1;
% for i=1:1:w/3
%   for j=1:1:h
%       I1(j,i,1)=0;
%       I1(j,i,2)=0;
%       I1(j,i,3)=0;
%   end
% end
% s=pi/6 ;
% for i=1:1:w/3
%   for j=1:1:h
%            a=cos(s)*(i-w/3/2)-sin(s)*(j-h/2)+w/3/2;
%            b=sin(s)*(i-w/3/2)+cos(s)*(j-h/2)+h/2;
%            c=fix(a);
%            d=fix(b);
%            if (c>1)&&(c<w/3)&&(d>1)&&(d<h)
%                x=a-c;y=b-d; 
%                all(:,:,1)=( double(I2(d,c+1,1))-double(I2(d,c,1)) )*x+( double(I2(d+1,c,1))-double(I2(d,c,1)) )*y+( double(I2(d+1,c+1,1))+double(I2(d,c,1))-double(I2(d+1,c,1))-double(I2(d,c+1,1)) )*x*y+double(I2(d,c,1));%%双线性插值算法
%                I1(j,i,1)=uint8(all(:,:,1));
%                all(:,:,2)=( double(I2(d,c+1,2))-double(I2(d,c,2)) )*x+( double(I2(d+1,c,2))-double(I2(d,c,2)) )*y+( double(I2(d+1,c+1,2))+double(I2(d,c,2))-double(I2(d+1,c,2))-double(I2(d,c+1,2)) )*x*y+double(I2(d,c,2));%%双线性插值算法
%                I1(j,i,2)=uint8(all(:,:,2));
%                all(:,:,3)=( double(I2(d,c+1,3))-double(I2(d,c,3)) )*x+( double(I2(d+1,c,3))-double(I2(d,c,3)) )*y+( double(I2(d+1,c+1,3))+double(I2(d,c,3))-double(I2(d+1,c,3))-double(I2(d,c+1,3)) )*x*y+double(I2(d,c,3));%%双线性插值算法
%                I1(j,i,3)=uint8(all(:,:,3));
%            end
%     end
% end
% subplot(1,2,1);imshow(I2);
% subplot(1,2,2);
% imshow(I1);

%%%%%思考题1：按任意角度旋转图像，观察结果并记录

clear;
I1=imread('PingGuo.jpg');
[h w] = size(I1);
I2=I1;
for i=1:1:w/3
  for j=1:1:h
      I1(j,i,1)=0;
      I1(j,i,2)=0;
      I1(j,i,3)=0;
  end
end
s=pi/3 ;%%修改这里
for i=1:1:w/3
  for j=1:1:h
           a=cos(s)*(i-w/3/2)-sin(s)*(j-h/2)+w/3/2;
           b=sin(s)*(i-w/3/2)+cos(s)*(j-h/2)+h/2;
           c=fix(a);
           d=fix(b);
           if (c>1)&&(c<w/3)&&(d>1)&&(d<h)
               x=a-c;y=b-d; 
               all(:,:,1)=( double(I2(d,c+1,1))-double(I2(d,c,1)) )*x+( double(I2(d+1,c,1))-double(I2(d,c,1)) )*y+( double(I2(d+1,c+1,1))+double(I2(d,c,1))-double(I2(d+1,c,1))-double(I2(d,c+1,1)) )*x*y+double(I2(d,c,1));%%双线性插值算法
               I1(j,i,1)=uint8(all(:,:,1));
               all(:,:,2)=( double(I2(d,c+1,2))-double(I2(d,c,2)) )*x+( double(I2(d+1,c,2))-double(I2(d,c,2)) )*y+( double(I2(d+1,c+1,2))+double(I2(d,c,2))-double(I2(d+1,c,2))-double(I2(d,c+1,2)) )*x*y+double(I2(d,c,2));%%双线性插值算法
               I1(j,i,2)=uint8(all(:,:,2));
               all(:,:,3)=( double(I2(d,c+1,3))-double(I2(d,c,3)) )*x+( double(I2(d+1,c,3))-double(I2(d,c,3)) )*y+( double(I2(d+1,c+1,3))+double(I2(d,c,3))-double(I2(d+1,c,3))-double(I2(d,c+1,3)) )*x*y+double(I2(d,c,3));%%双线性插值算法
               I1(j,i,3)=uint8(all(:,:,3));
           end
    end
end
subplot(1,2,1);imshow(I2);
subplot(1,2,2);
imshow(I1);

%%%%%思考题2：matlab内部是否有图像旋转函数？并在GUI内实现任意角度旋转功能%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%GUI见untitled.m