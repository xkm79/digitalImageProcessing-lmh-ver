%%%%%%%%%%%%%%%%% Ӱ�ӹ���ϵ����ͼ����γ�ʵ�飺 �����븯��ʵ��%%%%%%%%%%%%%%%%%%%%%%%%
% clear;
% b=zeros(7,9);
% b(2:3,2:8)=1;
% b(4,4:7)=1;
% b(5,4:5)=1;
% b(6,5)=1;%���ɾ���b
% b
% se2 = strel("line",3,90);%���ɽṹԪ��se2
% c = imdilate(b,se2)%ͼ������
% d = imerode(b,se2)%ͼ��ʴ
%%%%%%%%%%%%˼���⣺1�����б�̳���ʵ��imdilate������

% clear;
% b=zeros(7,9);
% b(2:3,2:8)=1;
% b(4,4:7)=1;
% b(5,4:5)=1;
% b(6,5)=1;%���ɾ���b
% b
% se2 = strel("line",3,90);%���ɽṹԪ��se2
% c=dilate(b,se2)
% 
% 
% function I=dilate(I1,se)
%     [a,b]=size(I1);
%     I2=I1;
%     [dx,dy]=size(getnhood(se));
%     dx=floor(dx/2);
%     dy=floor(dy/2);
%     for i=1:1:a
%         for j=1:1:b
%             if I1(i,j)==1
%                 for m=i-dx:1:i+dx
%                     for n=j-dy:1:j+dy
%                         I2(m,n)=1;
%                     end
%                 end
%             end
%         end
%     end
%     I=I2;
% end


%%%%%%%%2�����б��ʵ��imerode����

% clear;
% b=zeros(7,9);
% b(2:3,2:8)=1;
% b(4,4:7)=1;
% b(5,4:5)=1;
% b(6,5)=1;%���ɾ���b
% b
% se2 = strel("line",3,90);%���ɽṹԪ��se2
% c=erode(b,se2)
% 
% function I=erode(I1,se)
%     [a,b]=size(I1);
%     flag=getnhood(se);%%�жϾ���
%     I2=I1;
%     [dx,dy]=size(getnhood(se));
%     dx=floor(dx/2);
%     dy=floor(dy/2);
%     for i=1:1:a
%         for j=1:1:b%%����ÿ����
%             if I1(i,j)==1%%���õ�Ϊ1
%                 flag=I1(i-dx:i+dx,j-dy:j+dy);
%                 if ~isequal((flag&getnhood(se)),getnhood(se))%%���������se��ͬ�������
%                     I2(i,j)=0;
%                 end
%             end
%         end
%     end
%     I=I2;
% 
% end

%%%%%%%%%%%%�����⣺ �Լ���д���ͺ͸�ʴ���ܺ���

clear;
b=zeros(7,9);
b(2:3,2:8)=1;
b(4,4:7)=1;
b(5,4:5)=1;
b(6,5)=1;%���ɾ���b
b
se2 = strel("line",3,90);%���ɽṹԪ��se2
c=dilate(b,se2)
d=erode(b,se2)

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