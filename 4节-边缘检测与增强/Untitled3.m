%%%%%%%%%%%%%%%%% Ӱ�ӹ���ϵ����ͼ����γ�ʵ�飺3*3 9�����Ե��ǿʵ��%%%%%%%%%%%%%%%%%%%%%%%%
% clear;
% I1=imread('QiuShengQuan.jpg');
% I2=rgb2gray(I1);
% I=I2;
% 
% [h w]=size(I2);
% for i=2:1:w-1
%     for j=2:1:h-1
%             I(j,i)=uint8( int16(I2(j,i-1))+int16(I2(j,i+1))+int16(I2(j-1,i))+int16(I2(j+1,i))+int16(I2(j-1,i-1))+int16(I2(j+1,i-1))+int16(I2(j-1,i+1))+int16(I2(j+1,i+1))-8*int16(I2(j,i)) );%%9�����Ե�������
%         %I(j,i)=-I2(j-1,i-1)-I2(j-1,i)-I2(j-1,i+1)-I2(j-1,i-1)+24*I2(j,i-1)-I2(j,i)-I2(j+1,i-1)-I2(j+1,i)-I2(j+1,i+1);
%     end  
% end
% I3=I;
% 
% figure,imshow(I2);
% 
% figure,imshow(I);%��Ե���
% 
% figure;
% a=I2-I;%��Ե��ǿ
% imshow(a);

%%%˼����1�� 1������������ɫͼ��ı�Ե��ǿ���벢��ʾ 2����2*2������˹��Ե��ǿ�Ľ�����бȽ�

clear;
I1=imread('QiuShengQuan.jpg');
I2=I1;
I=I2;

[h,w,c]=size(I2);
for i=2:1:w-1
    for j=2:1:h-1
        for c=1:1:3
            I(j,i,c)=uint8( int16(I2(j,i-1,c))+int16(I2(j,i+1,c))+int16(I2(j-1,i,c))+int16(I2(j+1,i,c))+int16(I2(j-1,i-1,c))+int16(I2(j+1,i-1,c))+int16(I2(j-1,i+1,c))+int16(I2(j+1,i+1,c))-8*int16(I2(j,i,c)) );%%9�����Ե�������
        %I(j,i)=-I2(j-1,i-1)-I2(j-1,i)-I2(j-1,i+1)-I2(j-1,i-1)+24*I2(j,i-1)-I2(j,i)-I2(j+1,i-1)-I2(j+1,i)-I2(j+1,i+1);
        end
    end  
end
I3=I;

figure,imshow(I2);

figure,imshow(I);%��Ե���

figure;
a=I2-I;%��Ե��ǿ
imshow(a);

clear;
I1=imread('QiuShengQuan.jpg');
I2=I1;
I=I2;
[h,w,c]=size(I2);
for i=2:1:w-1
    for j=2:1:h-1
        for c=1:1:3
            I(j,i,c)=uint8( int16(I2(j,i-1,c))+int16(I2(j,i+1,c))+int16(I2(j-1,i,c))+int16(I2(j+1,i,c))-4*int16(I2(j,i,c)) );%%������˹����
        end
    end
end
figure;
imshow(I2);
I3=I;
figure;
imshow(I);%%�����Ե���ͼ��
figure;
a=I2-I;%��Ե��ǿ
imshow(a);%%�����Ե���ͼ��

%%%˼����2�� ����������ɫͼ��ı�Ե��ǿ���벢��ʾ
