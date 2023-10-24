%%%%%%%%%%%%%%%%% Ӱ�ӹ���ϵ����ͼ����γ�ʵ�飺shannon-fannon����%%%%%%%%%%%%%%%%%%%%%%%%


% clear;
% S = [ 0.4 0.18 0.1 0.1 0.07 0.06 0.05 0.04 ];



%%%˼���⣺1���������������㷨���ֶ�����S = [ 0.4 0.18 0.1 0.1 0.07 0.06 0.05 0.04]
%%% 2 ,����shannon-fannon����ֵ��������ͼ����Ϣ�ء�ƽ�����ֳ��ȡ�����Ч�ʡ������

% imshow("shannon_fannon.jpg");
% % 0.40:00
% % 0.18:01
% % 0.10:100
% % 0.10:101
% % 0.07:1100
% % 0.06:1101
% % 0.05:1110
% % 0.04:1111

% %%%ƽ�����ֳ���
% R=(0.4+0.18)*2+(0.1+0.1)*3+(0.07+0.06+0.05+0.04)*4
% 
% %%%��Ϣ��
% H=0;
% for i=1:1:8
%     H=H+S(i)*log2(S(i));
% end
% H
% 
% %%%����Ч��
% yita=H/R*100
% 
% %%%�����
% Rd=100-yita

%%%����⣺�Ƿ��������������Զ�shannon-fannon������루��ѡ���߼�����

clear;
SS = [ 0.4 0.18 0.1 0.1 0.07 0.06 0.05 0.04 ];%%Ƶ�������ڴ�����
SS=sort(SS,"descend");%%��������
SS
S = SS;
n=length(S);%%���鳤��
codeTable=strings(n);
sum=0;
for i=1:1:n
    sum=sum+S(i);
    sp(i)=sum;
end%%���Ƶ���ۼ�����sp
k=divide(sp);%%��һ����������
for i=1:1:k
    codeTable(1,i)='0';
end
for i=k+1:1:n
    sp(i)=sp(i)-sp(k);%%�������ұߵ���ͳһ��ȥ��ߵ����ֵ
    codeTable(1,i)='1';
end

for i=2:1:n%%����ÿһ��
    [uniqueUp,id]=unique(codeTable(i-1,:));%%�ҵ����в���ͬ��Ԫ��
    id(length(id)+1)=n+1;
    sum=0;
    for j=1:1:length(uniqueUp)
        for x=1:1:n
            if(codeTable(i-1,x)==uniqueUp(j)) && (~strcmp(codeTable(i-1,x),""))
                sum=sum+1;
            end
        end
        uniqueCount(j)=sum;
        sum=0;
    end%%�����ظ�Ԫ�صĸ���

    for j=1:1:length(uniqueUp)%%�м�������ͬ��Ԫ�أ�������������
        if(uniqueCount(j)==0)%%��Ϊ�գ�����Ҫ����
            continue;
        end
        if(uniqueCount(j)==1)%%��Ψһ������Ҫ����
            continue;
        end
        k=divide(sp(id(j):id(j+1)-1));
        k=k+id(j)-1;%%ʹ�õ�������k��ԭ�����Ӧ
        for x=id(j):1:k
            codeTable(i,x)=strcat(codeTable(i-1,x),'0');
        end
        for x=k+1:1:id(j+1)-1
            sp(x)=sp(x)-sp(j);%%�������ұߵ���ͳһ��ȥ��ߵ����ֵ
            codeTable(i,x)=strcat(codeTable(i-1,x),'1');
        end

    end
end

for i=1:1:n%%��ʾ���ձ�����
    codeTable(n,i)=num2str(SS(i));
end

codeTable



function k=divide(inputp)%%����:���ڵõ�������
    a=inputp;
    b=max(inputp)-inputp;
    c=abs(a-b);
    d=find(c==min(c),1);%%�ҵ����һ��Ƶ�ʵ�λ��
    k=d;
end



