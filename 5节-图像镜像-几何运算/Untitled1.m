%%%%%%%%%%%%%%%%% Ӱ�ӹ���ϵ����ͼ����γ�ʵ�飺 ʵ��3 ͼ��ֱ���� %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
% T=[-1 0 w/3;
%    0 1 0;
%    0 0 1]%�趨����ת����
% for i=1:1:w/3
%   for j=1:1:h
%      OLocation = [i;j;1];%���ԭʼλ�þ���
%         NLocation= int16( T*OLocation );%����Ŀ��λ�þ���
%         if ( (NLocation(1)>1)&&(NLocation(1)<w/3)&&(NLocation(2)>1)&&(NLocation(2)<h) )%Ԥ���������ͼ�����鷶Χ
%           I2(j,i,1)=I1( NLocation(2),NLocation(1),1 );%��ɫ��������
%           I2(j,i,2)=I1( NLocation(2),NLocation(1),2 );%��ɫ��������
%           I2(j,i,3)=I1( NLocation(2),NLocation(1),3 );%��ɫ��������
%         end
%    end
% end
% subplot(1,2,2);imshow(I2);

%%%%%%%%%%%%˼����1������ͼ��ˮƽ����ĳ������%%%%%%%%%%%%%%%%%%%%

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
% T=[1 0 0;
%    0 -1 h;
%    0 0 1]%�趨����ת����
% for i=1:1:w/3
%   for j=1:1:h
%      OLocation = [i;j;1];%���ԭʼλ�þ���
%         NLocation= int16( T*OLocation );%����Ŀ��λ�þ���
%         if ( (NLocation(1)>1)&&(NLocation(1)<w/3)&&(NLocation(2)>1)&&(NLocation(2)<h) )%Ԥ���������ͼ�����鷶Χ
%           I2(j,i,1)=I1( NLocation(2),NLocation(1),1 );%��ɫ��������
%           I2(j,i,2)=I1( NLocation(2),NLocation(1),2 );%��ɫ��������
%           I2(j,i,3)=I1( NLocation(2),NLocation(1),3 );%��ɫ��������
%         end
%    end
% end
% subplot(1,2,2);imshow(I2);

%%%%%%%%%%%%˼����2��matlab�ڲ��Ƿ���ͼ������������GUI��ʵ�־�����%%%%%%%%%%%%%%%%%

clear;
I1=imread('PingGuo.jpg');%%��ȡ
subplot(1,2,1);
imshow(I1);%%
I2=fliplr(I1);%%ˮƽ����
I2=flipud(I1);%%��ֱ����
subplot(1,2,2);imshow(I2);

%%%GUI��untitled.m