%%%%%%%%%%%%%%%%% Ӱ�ӹ���ϵ����ͼ����γ�ʵ�飺 ������ͱ�����%%%%%%%%%%%%%%%%%%%%%%%%
% clear;
% I=imread('test.bmp');%����ͼ��
% I2=rgb2gray(I);%ת��Ϊ�Ҷ�ͼ��
% I3 = im2bw(I2);%ת��Ϊ2ֵͼ��
% subplot(2,3,1),imshow(I3);title('ԭͼ');
% se2 = strel('disk', 20,0);%���ɽṹԪ��se2  % length 30, angle 90 degrees
% c = imerode(I3,se2);   %ͼ��ʴ
% d = imdilate(c,se2);   %ͼ������
% subplot(2,3,2),imshow(d);title('��ʴ������');
% x=imopen(I3,se2);
% subplot(2,3,3),imshow(x);title('������');
% c = imdilate(I3,se2);   %ͼ������
% d = imerode(c,se2);     %ͼ��ʴ
% subplot(2,3,5),imshow(d);title('���ͺ�ʴ');
% x=imclose(I3,se2);
% subplot(2,3,6),imshow(x);title('������');
%%%%%%%%%%%%˼���⣺ 1��˵��������ͱ������ԭͼ�ı任���������

%%%�����������ʹͼ�����ӣ������������ʹͼ�ζϿ�

%%%%%%%%2����Ͽ�����ͱ����㣬ʵ���ȿ����������ȱպ�����

% clear;
% I=imread('test.bmp');%����ͼ��
% I2=rgb2gray(I);%ת��Ϊ�Ҷ�ͼ��
% I3 = im2bw(I2);%ת��Ϊ2ֵͼ��
% subplot(2,3,1),imshow(I3);title('ԭͼ');
% se2 = strel('disk', 20,0);%���ɽṹԪ��se2  % length 30, angle 90 degrees
% c = imopen(I3,se2);   %ͼ������
% subplot(2,3,2),imshow(c);title('�ȿ�');
% d = imclose(c,se2);   %ͼ�������
% subplot(2,3,3),imshow(d);title('�ȿ����');
% 
% c = imclose(I3,se2);   %ͼ�������
% subplot(2,3,5),imshow(c);title('�ȱ�');
% d = imopen(c,se2);   %ͼ������
% subplot(2,3,6),imshow(d);title('�ȱպ�');

%%%%%%%%%%%%�����⣺ ����Լ������ͺ͸�ʴԴ����ʵ�ֿ�������

clear;
I=imread('test.bmp');%����ͼ��
I2=rgb2gray(I);%ת��Ϊ�Ҷ�ͼ��
I3 = im2bw(I2);%ת��Ϊ2ֵͼ��
subplot(2,3,1),imshow(I3);title('ԭͼ');
se2 = strel('disk', 20,0);%���ɽṹԪ��se2  % length 30, angle 90 degrees
c = erode(I3,se2);   %ͼ��ʴ
d = dilate(c,se2);   %ͼ������
subplot(2,3,2),imshow(d);title('��ʴ������');
x=imopen(I3,se2);
subplot(2,3,3),imshow(x);title('������');
c = dilate(I3,se2);   %ͼ������
d = erode(c,se2);     %ͼ��ʴ
subplot(2,3,5),imshow(d);title('���ͺ�ʴ');
x=imclose(I3,se2);
subplot(2,3,6),imshow(x);title('������');
%%%�Աຯ���Խ��Է��νṹԪ����Ч����Բ����Ч


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
    flag=getnhood(se);%%�жϾ���
    I2=I1;
    [dx,dy]=size(getnhood(se));
    dx=floor(dx/2);
    dy=floor(dy/2);
    for i=1:1:a
        for j=1:1:b%%����ÿ����
            if I1(i,j)==1%%���õ�Ϊ1
                flag=I1(i-dx:i+dx,j-dy:j+dy);
                if ~isequal((flag&getnhood(se)),getnhood(se))%%���������se��ͬ�������
                    I2(i,j)=0;
                end
            end
        end
    end
    I=I2;

end