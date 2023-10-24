%%%%%%%%%%%%%%%%% 影视工程系数字图像处理课程实验：shannon-fannon编码%%%%%%%%%%%%%%%%%%%%%%%%


% clear;
% S = [ 0.4 0.18 0.1 0.1 0.07 0.06 0.05 0.04 ];



%%%思考题：1，利用以上排序算法，手动计算S = [ 0.4 0.18 0.1 0.1 0.07 0.06 0.05 0.04]
%%% 2 ,计算shannon-fannon编码值，并计算图象信息熵、平均码字长度、编码效率、冗余度

% imshow("shannon_fannon.jpg");
% % 0.40:00
% % 0.18:01
% % 0.10:100
% % 0.10:101
% % 0.07:1100
% % 0.06:1101
% % 0.05:1110
% % 0.04:1111

% %%%平均码字长度
% R=(0.4+0.18)*2+(0.1+0.1)*3+(0.07+0.06+0.05+0.04)*4
% 
% %%%信息熵
% H=0;
% for i=1:1:8
%     H=H+S(i)*log2(S(i));
% end
% H
% 
% %%%编码效率
% yita=H/R*100
% 
% %%%冗余度
% Rd=100-yita

%%%提高题：是否能做出完整的自动shannon-fannon编码代码（可选，高级）。

clear;
SS = [ 0.4 0.18 0.1 0.1 0.07 0.06 0.05 0.04 ];%%频率数组在此输入
SS=sort(SS,"descend");%%降序排序
SS
S = SS;
n=length(S);%%数组长度
codeTable=strings(n);
sum=0;
for i=1:1:n
    sum=sum+S(i);
    sp(i)=sum;
end%%求得频率累加数组sp
k=divide(sp);%%第一次劈开数组
for i=1:1:k
    codeTable(1,i)='0';
end
for i=k+1:1:n
    sp(i)=sp(i)-sp(k);%%劈开后将右边的数统一减去左边的最大值
    codeTable(1,i)='1';
end

for i=2:1:n%%遍历每一行
    [uniqueUp,id]=unique(codeTable(i-1,:));%%找到所有不相同的元素
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
    end%%计算重复元素的个数

    for j=1:1:length(uniqueUp)%%有几个不相同的元素，就做几次劈开
        if(uniqueCount(j)==0)%%若为空，则不需要劈开
            continue;
        end
        if(uniqueCount(j)==1)%%若唯一，则不需要劈开
            continue;
        end
        k=divide(sp(id(j):id(j+1)-1));
        k=k+id(j)-1;%%使得到的索引k与原数组对应
        for x=id(j):1:k
            codeTable(i,x)=strcat(codeTable(i-1,x),'0');
        end
        for x=k+1:1:id(j+1)-1
            sp(x)=sp(x)-sp(j);%%劈开后将右边的数统一减去左边的最大值
            codeTable(i,x)=strcat(codeTable(i-1,x),'1');
        end

    end
end

for i=1:1:n%%显示最终编码结果
    codeTable(n,i)=num2str(SS(i));
end

codeTable



function k=divide(inputp)%%函数:用于得到劈开点
    a=inputp;
    b=max(inputp)-inputp;
    c=abs(a-b);
    d=find(c==min(c),1);%%找到最靠近一半频率的位置
    k=d;
end



