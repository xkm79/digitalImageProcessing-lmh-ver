%%%%%%%%%%%%%%%%% 影视工程系数字图像处理课程实验：huffman编码%%%%%%%%%%%%%%%%%%%%%%%%


% clear;
% S = [ 0.4 0.3 0.1 0.1 0.06 0.04 ];
% 
% [S1,index1] = sort(S,'descend')
% 
% S1(5) = S1(5)+S1(6);S1(6)=0;
% [S2,index2] = sort(S1,'descend')
% 
% S2(4) = S2(4)+S2(5);S2(5)=0;
% [S3,index2] = sort(S2,'descend')
% 
% S3(3) = S3(3)+S3(4);S3(4)=0;
% [S4,index3] = sort(S3,'descend')
% 
% S4(2) = S4(2)+S4(3);S4(3)=0;
% [S5,index4] = sort(S4,'descend')

%%思考题：1，利用以上排序算法，手动计算S = [ 0.21 0.09 0.11 0.13 0.07 0.12 0.08 0.19]

% clear;
% S = [ 0.21 0.09 0.11 0.13 0.07 0.12 0.08 0.19 ];
% 
% [S1,index1] = sort(S,'descend')
% 
% S1(7) = S1(7)+S1(8);S1(8)=0;
% [S2,index2] = sort(S1,'descend')
% 
% S2(6) = S2(6)+S2(7);S2(7)=0;
% [S3,index3] = sort(S2,'descend')
% 
% S3(5) = S3(5)+S3(6);S3(6)=0;
% [S4,index4] = sort(S3,'descend')
% 
% S4(4) = S4(4)+S4(5);S4(5)=0;
% [S5,index5] = sort(S4,'descend')
% 
% S5(3) = S5(3)+S5(4);S5(4)=0;
% [S6,index6] = sort(S5,'descend')
% 
% S6(2) = S6(2)+S6(3);S6(3)=0;
% [S7,index7] = sort(S6,'descend')

%%% 2、计算huffman编码值，并计算图象信息熵、平均码字长度、编码效率、冗余度

% %%%编码值
% imshow("huffman.jpg");
% 
% %%%平均码字长度
% R=0.21*2+(0.19+0.13+0.12+0.11+0.09)*3+(0.08+0.07)*4
% 
% %%%信息熵
% S = [ 0.21 0.09 0.11 0.13 0.07 0.12 0.08 0.19 ];
% sum=0;
% for i=1:1:8
%     sum=sum+S(i)*log2(S(i));
% end
% H=-sum
% 
% %%%编码效率
% yita=H/R*100
% 
% %%%冗余度
% Rd=100-yita


%%提高题： 是否能做出完整的自动huffman编码代码（可选，高级）。

clear;

t1=cputime;
SS = [0.21 0.09 0.11 0.13 0.07 0.12 0.08 0.19];%%频率数组在此输入
S = SS;
n=length(S);
a=zeros([n,n-1]);%%编码过程排序矩阵
b=strings([n,n-1]);%%编码矩阵
[a(:,1)]=sort(S,'descend');
S=sort(S,'descend');
S(n-1)=S(n-1)+S(n);
S(n)=0;%%对第一列排序
for i=2:1:n-1
    S=sort(S,'descend');
    [a(:,i)]=sort(S,'descend');
    S(n-i)=S(n-i)+S(n-i+1);
    S(n-i+1)=0;
end
%%%画出huffman编码过程排序矩阵

b(1,n-1)='1';
b(2,n-1)='0';%%初始化最右边两个数的编码
k=3;%%用于遍历每一列除0以外元素
x=0;%%累加器
flag=0;%%标志变量，用于找到相等的数后跳出循环
for i=n-2:-1:1%%从后往前遍历每一列
    for j=1:1:k%%遍历每一列除0以外元素
        for h=1:1:n%%遍历前一列
            if(a(j,i)==a(h,i+1))%%寻找后一列是否有与当前元素重复的元素
                flag=1;
                break;%%若有重复元素，跳出循环
            end
        end
        if(flag==1)%%若有重复元素，则编码值与上一列相同元素编码值相等
            b(j,i)=b(find(a(:,i+1)==a(j,i),1),i+1);
        end
        if(flag==0)%%若找不到重复元素，那么将其放入累加器，每列至多有两个元素无法找到
            x=x+a(j,i);
        end
        flag=0;
    end
    if(x==0)%%若累加器为零，说明当前列所有元素都是重复元素
        [minvalue,index]=min(a(:,i));%%找到当前列最小值对应的索引
        x=a(index,i)+a(index-1,i);%%将累加器赋值为最小值与次小值的和
    end
    b(k,i)=strcat('0',b(find(a(:,i+1)==x,1),i+1))%%对最小值的编码加0
    b(k-1,i)=strcat('1',b(find(a(:,i+1)==x,1),i+1))%%对次小值的编码加1
    k=k+1;
    x=0;
end
%%%画出排序矩阵对应的编码值的矩阵

output=strings([n,2]);%%为结果矩阵开辟内存空间
flag=0;
for i=1:1:n%%遍历频率数组的每一个元素
    output(i,1)=num2str(SS(i))
    for j=n-1:-1:1%%从后往前遍历每一列
        for k=1:1:n%%遍历一列中的每一行
            if(a(k,j)==SS(i))%%寻找元素第一次出现的位置
                flag=1;
                break;
            end
        end
        if(flag==1)%%找到后将元素的编码值放入结果表格中
            output(i,2)=b(k,j)
            flag=0;
            break;
        end
    end
end
t2=cputime-t1%%计算所需时间

