%%%%%%%%%%%%%%%%% Ӱ�ӹ���ϵ����ͼ����γ�ʵ�飺 ʵ��1 ͼ��ƽ�� %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% clear;
% I1=imread('PingGuo.jpg');%%��ȡ
% subplot(1,2,1);
% imshow(I1);%%
% I2=I1;
% [h w] = size(I1);
% for i=1:1:w/3
%     for j=1:1:h
%         I2(j,i,1)=0;I2(j,i,2)=0;I2(j,i,3)=0;
%     end
% end
% Dx = 100;%�趨ˮƽƽ����
% Dy = -150;%�趨��ֱƽ����
% T=[1 0 Dx;
%    0 1 Dy;
%    0 0 1]%�趨ƽ�ƾ���
% for i=1:1:w/3
%   for j=1:1:h
%      OLocation = [i;j;1];%���ԭʼλ�þ���
%         NLocation= T*OLocation;%����Ŀ��λ�þ���
%         if ( (NLocation(1)>1)&&(NLocation(1)<w/3)&&(NLocation(2)>1)&&(NLocation(2)<h) )%Ԥ���������ͼ�����鷶Χ
%           I2(j,i,1)=I1( NLocation(2),NLocation(1),1 );%��ɫ����ƽ��
%           I2(j,i,2)=I1( NLocation(2),NLocation(1),2 );%��ɫ����ƽ��
%           I2(j,i,3)=I1( NLocation(2),NLocation(1),3 );%��ɫ����ƽ��
%         end
%    end
% end
% subplot(1,2,2); imshow(I2);

%%%%%%%%%%%%˼����1��ͼ��ƽ�Ƶ������T��ƣ��������T���۲�仯���%%%%%%%%%%%%%%%%%%%%

% clear;
% I1=imread('PingGuo.jpg');%%��ȡ
% subplot(1,2,1);
% imshow(I1);%%
% I2=I1;
% [h w] = size(I1);
% for i=1:1:w/3
%     for j=1:1:h
%         I2(j,i,1)=0;I2(j,i,2)=0;I2(j,i,3)=0;
%     end
% end
% Dx = 100;%�趨ˮƽƽ����
% Dy = -150;%�趨��ֱƽ����
% T=[1 0 Dx;
%    0 1 Dy;
%    0 0 1];%�趨ƽ�ƾ���
% T=T^-1;
% for i=1:1:w/3
%   for j=1:1:h
%      OLocation = [i;j;1];%���ԭʼλ�þ���
%         NLocation= T*OLocation;%����Ŀ��λ�þ���
%         if ( (NLocation(1)>1)&&(NLocation(1)<w/3)&&(NLocation(2)>1)&&(NLocation(2)<h) )%Ԥ���������ͼ�����鷶Χ
%           I2(j,i,1)=I1( NLocation(2),NLocation(1),1 );%��ɫ����ƽ��
%           I2(j,i,2)=I1( NLocation(2),NLocation(1),2 );%��ɫ����ƽ��
%           I2(j,i,3)=I1( NLocation(2),NLocation(1),3 );%��ɫ����ƽ��
%         end
%    end
% end
% subplot(1,2,2); imshow(I2);

%%%%%%%%%%%%˼����2��matlab�ڲ��Ƿ���ͼ��ƽ�ƺ���������GUI��ʵ����������ƽ�ƹ���%%%%%%%%%%%%%%%%%

clear;
I1=imread('PingGuo.jpg');%%��ȡ
subplot(1,2,1);
imshow(I1);%%
Dx = 100;%�趨ˮƽƽ����
Dy = -150;%�趨��ֱƽ����
I2=imtranslate(I1,[Dx,Dy]);
subplot(1,2,2); imshow(I2);

%%%GUI��untitled.m