%%%%%%%%%%%%%%%%% Ӱ�ӹ���ϵ����ͼ����γ�ʵ�飺ʵ��5 ͼ����� %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% I1=imread('1.jpg');
% I2=imread('2.jpg');
% I=I1-I2;%ͼ�����
% figure,imshow(I1);
% figure,imshow(I2);
% figure,imshow(I);

%%˼����1��Ϊ���������ִ�����Ե����˵��ԭ��

%%��������Ϊʱ��ı仯����������Ĵ���������һ���Ĺ����������Ļζ�����������ͼ�������һЩϸС�Ĳ���

%%˼����2���Լ����㾲̬ͼ���۲��Ƿ����ִ�����Ե

% I1=imread('a1.jpg');
% I2=imread('a2.jpg');
% I=I1-I2;%ͼ�����
% figure,imshow(I1);
% figure,imshow(I2);
% figure,imshow(I);

%%����˼���⣺������˫��ѭ���͵����㷨��������ͼ�����

I1=imread('1.jpg');
I2=imread('2.jpg');
I=zeros(size(I1));
[h,w,c]=size(I1);
for i=1:1:h
    for j=1:1:w
        for c=1:1:c
            I(i,j,c)=I1(i,j,c)-I2(i,j,c);
        end
    end
end
         
figure,imshow(I1);
figure,imshow(I2);
figure,imshow(I);
