%%%%%%%%%%%%%%%%% Ӱ�ӹ���ϵ����ͼ����γ�ʵ�飺ʵ��4 ͼ����� %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% I1=imread('�Ʋ�2.jpg');
% I2=imread('������ͼ.jpg');
% I=I1/1.2+I2;
% figure,imshow(I1);
% figure,imshow(I2);
% figure,imshow(I);
% imwrite(I,'����3.jpg');
%%˼����1���������ͼ�������ʵ������

%�� 3��-ͼ�����-��������

%%˼����2���������ͼ����˺������ʵ������

%��˼� 3��-ͼ��˷�-��������

% X = uint8([ 255 10 75; 44 225 100]);
% Y = uint8([ 50 20 50; 50 50 50 ]);
% Z = imdivide(X,Y)
% I = imread('������ͼ.jpg'); 
% J = imdivide(I,2);
% subplot(1,2,1), imshow(I)
% subplot(1,2,2), imshow(J)
% figure;
% background = imread('�Ʋ�2.jpg');
% Ip = imdivide(I,background);
% imshow(Ip,[]);


%%����˼���⣺������Ļ����ԭ������ǰ�����壬����CG����������Ⱦ������֮��ϳ���Чͼ��

I1=imread('�ܲ�.png');
I1=imresize(I1,[1080,1920]);
I2=imread('¥��.png');
g=[0,255,0];
tolerance=70;
mask=abs(I1(:,:,1)-g(1))<tolerance & abs(I1(:,:,2)-g(2))<tolerance & abs(I1(:,:,3)-g(3))<tolerance;
for i=1:1:1080
    for j=1:1:1920
        for c=1:1:3
            I2(i,j,c)=I2(i,j,c)*double(mask(i,j));
        end
    end
end
mask=~mask;
for i=1:1:1080
    for j=1:1:1920
        for c=1:1:3
            I1(i,j,c)=I1(i,j,c)*double(mask(i,j));
        end
    end
end
I=I1+I2;
imshow(I);




