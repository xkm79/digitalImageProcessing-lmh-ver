%%%%%%%%%%%%%%%%% Ӱ�ӹ���ϵ����ͼ����γ�ʵ�飺ʵ��6 ͼ����� %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% clear;
% I1=imread('PingGuo.jpg');
% I2=imread('PingGuo2.jpg');
% I=I1.*(I2/255);%matlab�о���������.*��ʾ����ǰ�ڵ�matlab�γ���Ҳ�õ���.^
% figure,imshow(I1);
% figure,imshow(I2);
% figure,imshow(I);

%%˼����1���ں���ʵ���пɽ�ϱ�Ե���ʵ����Ļ����!
%%ʵ�鲽�裺�ҵ���һ��ɫ�ı�������ɫ����ɫ��������ɫ���ɣ�������Ŀ��ͱ�����Ƭ�����ÿ�ͼģ��ԭ����ȡǰ��Ŀ�����壬˼���ж����ֿ�������

clear;
I1=imread('�ܲ�.png');
imshow(I1);
g=[0,255,0];
tolerance=70;
mask=abs(I1(:,:,1)-g(1))<tolerance & abs(I1(:,:,2)-g(2))<tolerance & abs(I1(:,:,3)-g(3))<tolerance;
mask=~mask;
for i=1:1:828
    for j=1:1:1050
        for c=1:1:3
            I1(i,j,c)=I1(i,j,c)*double(mask(i,j));
        end
    end
end
figure;
imshow(I1);