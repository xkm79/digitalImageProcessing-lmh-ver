%%%%%%%%%%%%%%%%% Ӱ�ӹ���ϵ����ͼ����γ�ʵ�飺 ʵ��2 ͼ������ %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
% fx = 1.5;%�趨ˮƽ���ű���
% fy = 2;%�趨��ֱ���ű���
% T=[fx 0 0;
%    0 fy 0;
%    0 0 1]%�趨���ž���
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
% subplot(1,2,2); imshow(I2);

%%%%%%%%%%%%˼����1��ͼ�����ŵ������T��ƣ��ı�T����Ĳ������ۿ����Ž����ʵ������1/2ѹ�������򲻱䣩��ʵ�ֺ���1/2ѹ�������򲻱䣩��%%%%%%%%%%%%%%%%%%%%

%%%����ѹ��
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
% fx = 1;%�趨ˮƽ���ű���
% fy = 0.5;%�趨��ֱ���ű���
% T=[fx 0 0;
%    0 fy 0;
%    0 0 1];%�趨���ž���
% T=T^-1;
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
% subplot(1,2,2); imshow(I2);

%%%����ѹ��
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
% fx = 0.5;%�趨ˮƽ���ű���
% fy = 1;%�趨��ֱ���ű���
% T=[fx 0 0;
%    0 fy 0;
%    0 0 1];%�趨���ž���
% T=T^-1;
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
% subplot(1,2,2); imshow(I2);

%%%%%%%%%%%%˼����2��matlab�ڲ��Ƿ���ͼ��ƽ�ƺ���������GUI��ʵ��������������Ź���%%%%%%%%%%%%%%%%%%%%
clear;
I1=imread('PingGuo.jpg');%%��ȡ
imshow(I1);%%
scale=0.5;
I2=imresize(I1,scale);
figure;
imshow(I2);