%%%%%%%%%%%%%%%%% Ӱ�ӹ���ϵ����ͼ����γ�ʵ�飺ʵ��1 ͼ������Ե����� %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% clear;
% I1=imread('QiuShengQuan.jpg');%%��ȡ
% imshow(I1);%%
% I2=I1;
% a=3;b=-50;
% x=[1:1:255];%�趨�Ա���
% y=a*x+b;%�趨Ӧ����
% for i=1:1:255
%     if (y(i)>255)
%         y(i)=255;%����Խ��
%     end
%     if (y(i)<0)
%         y(i)=0;%����Խ��
%     end    
% end
% 
% figure,plot(x,y,'r');
% [h w] = size(I1);
% for i=1:1:w/3%%ͼ��ֱ���
%     for j=1:1:h
% 
%                   I2(j,i)=y( I1(j,i) +1 );%ӳ��Ҷ�ֵR
%                   I2(j,i,2)=y( I1(j,i,2) +1 );%ӳ��Ҷ�ֵG
%                   I2(j,i,3)=y( I1(j,i,3) +1 );%ӳ��Ҷ�ֵB
% 
%     end  
% end
% figure,imshow(I2);

%%%%%%%%%%%%˼����1���������Բ�����ʵ�ַ�ɫ�������۲�ͼ��任Ч��%%%%%%%%%%%%%%%%%%%%%

clear;
I1=imread('QiuShengQuan.jpg');%%��ȡ
imshow(I1);%%
I2=I1;
a=-1;b=255;
x=[1:1:255];%�趨�Ա���
y=a*x+b;%�趨Ӧ����
for i=1:1:255
    if (y(i)>255)
        y(i)=255;%����Խ��
    end
    if (y(i)<0)
        y(i)=0;%����Խ��
    end    
end

figure,plot(x,y,'r');
[h w] = size(I1);
for i=1:1:w/3%%ͼ��ֱ���
    for j=1:1:h

                  I2(j,i)=y( I1(j,i) +1 );%ӳ��Ҷ�ֵR
                  I2(j,i,2)=y( I1(j,i,2) +1 );%ӳ��Ҷ�ֵG
                  I2(j,i,3)=y( I1(j,i,3) +1 );%ӳ��Ҷ�ֵB

    end  
end
figure,imshow(I2);