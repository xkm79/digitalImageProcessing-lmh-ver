%%%%%%%%%%%%%%%%% 影视工程系数字图像处理课程实验：RLE编码%%%%%%%%%%%%%%%%%%%%%%%%


clear;
I=[ 0 0 0 0 0 0 3 3 3 3 3;
    2 2 2 2 2 2 2 2 2 6 6 ;
    1 1 1 1 1 1 1 1 1 1 1 ;
    1 1 1 1 5 5 5 5 5 5 5 ;
    8 8 8 8 8 8 8 8 8 8 8 ;
    5 5 5 5 5 8 9 5 5 5 5 ;
    6 2 2 2 6 6 2 2 2 2 2];

[ii,jj]=size(I);
jishu=1;zhizhen=1;
for i=1:1:ii
    for j=1:1:jj-1
        if (I(i,j)==I(i,j+1) )
             jishu=jishu+1;%对连续灰度个数进行累加
        else   
            a(zhizhen,1)=I(i,j);%记录每个灰度的连续个数
            a(zhizhen,2)=jishu;
            jishu=1;
            zhizhen=zhizhen+1;
        end
    end     
    a(zhizhen,1)=I(i,j);%每行结束就对每个灰度的连续个数合并，不与下行进行比较
    a(zhizhen,2)=jishu;
    jishu=1;
    zhizhen=zhizhen+1;
end
        

%%思考题：1，实现PCX的RLE压缩算法

clear;
I=[ 0 0 0 0 0 0 3 3 3 3 3;
    2 2 2 2 2 2 2 2 2 6 6 ;
    1 1 1 1 1 1 1 1 1 1 1 ;
    1 1 1 1 5 5 5 5 5 5 5 ;
    8 8 8 8 8 8 8 8 8 8 8 ;
    5 5 5 5 5 8 9 5 5 5 5 ;
    6 2 2 2 6 6 2 2 2 2 2];

[ii,jj]=size(I);
jishu=1;zhizhen=1;
for i=1:1:ii
    for j=1:1:jj-1
        if (I(i,j)==I(i,j+1) )
             jishu=jishu+1;%对连续灰度个数进行累加
             if jishu>63
                 a(zhizhen,1)=I(i,j);%记录每个灰度的连续个数
                 a(zhizhen,2)=jishu;
                 jishu=1;
                 zhizhen=zhizhen+1;
             end
        else   
            a(zhizhen,1)=I(i,j);%记录每个灰度的连续个数
            a(zhizhen,2)=jishu;
            jishu=1;
            zhizhen=zhizhen+1;
        end
    end     
    a(zhizhen,1)=I(i,j);%每行结束就对每个灰度的连续个数合并，不与下行进行比较
    a(zhizhen,2)=jishu;
    jishu=1;
    zhizhen=zhizhen+1;
end

%%2，是否能对1.bmp进行RLE编码，实现编写码，并恢复图像（可选，高级,需要使用UE32并获取BMP的图像格式）。

