%%%%%%%%%%%%%%%%% Ӱ�ӹ���ϵ����ͼ����γ�ʵ�飺ʵ��3 ͼ�����ƽ��ȥ�� %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% I1=imread('X0000.bmp');
% I2=imread('X0001.bmp');
% I3=imread('X0002.bmp');
% I4=imread('X0003.bmp');
% I5=imread('X0004.bmp');
% subplot(2,3,1); 
% imshow(I1*3);
% subplot(2,3,2); 
% imshow(I2*3);
% subplot(2,3,3); 
% imshow(I3*3);
% subplot(2,3,4); 
% imshow(I4*3);
% subplot(2,3,5); 
% imshow(I5*3);
% all=I1;
% all = I1/5 + I2/5 + I3/5 + I4/5 + I5/5 ;%���ȥ��
% 
% 
% imwrite(all,'end.bmp')
% subplot(2,3,6); 
% imshow(all*3);

%%˼����1��������ѧ���ݽ��н��ͼ������ȵ��ڣ����ڹ۲�

% I1=imread('X0000.bmp');
% I2=imread('X0001.bmp');
% I3=imread('X0002.bmp');
% I4=imread('X0003.bmp');
% I5=imread('X0004.bmp');
% subplot(2,3,1); 
% imshow(I1*6);
% subplot(2,3,2); 
% imshow(I2*6);
% subplot(2,3,3); 
% imshow(I3*6);
% subplot(2,3,4); 
% imshow(I4*6);
% subplot(2,3,5); 
% imshow(I5*6);
% all=I1;
% all = I1/5 + I2/5 + I3/5 + I4/5 + I5/5 ;%���ȥ��
% 
% 
% % a=0.45;b=0;%%aΪ٤��ֵ
% % x=[1:1:255];%�趨�Ա���
% % y=(x/255).^a*255+b;%�趨Ӧ����
% % for i=1:1:255
% %     if (y(i)>255)
% %         y(i)=255;%����Խ��
% %     end
% %     if (y(i)<0)
% %         y(i)=0;%����Խ��
% %     end    
% % end
% % [h, w] = size(all);
% % for i=1:1:w/3%%ͼ��ֱ��� 
% %     for j=1:1:h
% %                   all(j,i)=y( all(j,i) +1 );%ӳ��Ҷ�ֵR
% %                   all(j,i,2)=y( all(j,i,2) +1 );%ӳ��Ҷ�ֵG
% %                   all(j,i,3)=y( all(j,i,3) +1 );%ӳ��Ҷ�ֵB
% %     end  
% % end
% 
% imwrite(all,'end.bmp')
% subplot(2,3,6); 
% imshow(all*6);

%%˼����2����ԭʼ����ͼ���ȽϽ�����Ч��

% figure;
% imshow(I1*6);

%%˼����3����Ϊ��һ��ͼ��������������windows���������matlab��noise�������������ȥ�룬�鿴������

I1=imread('X0000.bmp');

noisyI1=imnoise(I1,'gaussian',0,0.01);

I2=imread('X0001.bmp');
I3=imread('X0002.bmp');
I4=imread('X0003.bmp');
I5=imread('X0004.bmp');
subplot(2,3,1); 
imshow(noisyI1*3);
subplot(2,3,2); 
imshow(I2*3);
subplot(2,3,3); 
imshow(I3*3);
subplot(2,3,4); 
imshow(I4*3);
subplot(2,3,5); 
imshow(I5*3);
all=noisyI1;
all = noisyI1/5 + I2/5 + I3/5 + I4/5 + I5/5 ;%���ȥ��


imwrite(all,'end.bmp')
subplot(2,3,6); 
imshow(all*3);
