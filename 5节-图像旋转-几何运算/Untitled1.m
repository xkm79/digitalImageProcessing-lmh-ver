%%%%%%%%%%%%%%%%% Ӱ�ӹ���ϵ����ͼ����γ�ʵ�飺ʵ��4 ͼ����תʵ��-double˫���Բ�ֵ�㷨%%%%%%%%%%%%%%%%%%%%%%%%
% clear;
% I1=imread('1.jpg');
% [h w] = size(I1);
% I2=rgb2gray(I1);
% I=I2;
% for i=1:1:720
%     for j=1:1:576
%            I(j,i)=0;
%     end
% end
% s=pi/30 ;
% for i=1:1:720
%     for j=1:1:576
%            a=cos(s)*(i-360)-sin(s)*(j-288)+360;
%            b=sin(s)*(i-360)+cos(s)*(j-288)+288;
%            c=fix(a);
%            d=fix(b);
% 
%            if (c>1)&&(c<720)&&(d>1)&&(d<576)
%               x=a-c;y=b-d; 
% 
%            all=( double(I2(d,c+1))-double(I2(d,c)) )*x+( double(I2(d+1,c))-double(I2(d,c)) )*y+( double(I2(d+1,c+1))+double(I2(d,c))-double(I2(d+1,c))-double(I2(d,c+1)) )*x*y+double(I2(d,c));%%˫���Բ�ֵ�㷨
%            I(j,i)=uint8(all);
%            end
%     end
% end
% 
% imshow(I2);
% figure;
% imshow(I);
%%%%%˼����1��������Ƕ���תͼ�񣬹۲�������¼

% clear;
% I1=imread('1.jpg');
% [h w] = size(I1);
% I2=rgb2gray(I1);
% I=I2;
% for i=1:1:720
%     for j=1:1:576
%            I(j,i)=0;
%     end
% end
% s=pi/6 ;%%�޸�����
% for i=1:1:720
%     for j=1:1:576
%            a=cos(s)*(i-360)-sin(s)*(j-288)+360;
%            b=sin(s)*(i-360)+cos(s)*(j-288)+288;
%            c=fix(a);
%            d=fix(b);
% 
%            if (c>1)&&(c<720)&&(d>1)&&(d<576)
%               x=a-c;y=b-d; 
% 
%            all=( double(I2(d,c+1))-double(I2(d,c)) )*x+( double(I2(d+1,c))-double(I2(d,c)) )*y+( double(I2(d+1,c+1))+double(I2(d,c))-double(I2(d+1,c))-double(I2(d,c+1)) )*x*y+double(I2(d,c));%%˫���Բ�ֵ�㷨
%            I(j,i)=uint8(all);
%            end
%     end
% end
% 
% imshow(I2);
% figure;
% imshow(I);

%%%%%˼����2��matlab�ڲ��Ƿ���ͼ����ת����������GUI��ʵ������Ƕ���ת����%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear;
I1=imread('1.jpg');
s=30;
I2=imrotate(I1,s);

imshow(I1);
figure;
imshow(I2);

%%%GUI��untitled,m