%%%%%%%%%%%%%%%%% Ӱ�ӹ���ϵ����ͼ����γ�ʵ�飺RLE����%%%%%%%%%%%%%%%%%%%%%%%%


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
             jishu=jishu+1;%�������Ҷȸ��������ۼ�
        else   
            a(zhizhen,1)=I(i,j);%��¼ÿ���Ҷȵ���������
            a(zhizhen,2)=jishu;
            jishu=1;
            zhizhen=zhizhen+1;
        end
    end     
    a(zhizhen,1)=I(i,j);%ÿ�н����Ͷ�ÿ���Ҷȵ����������ϲ����������н��бȽ�
    a(zhizhen,2)=jishu;
    jishu=1;
    zhizhen=zhizhen+1;
end
        

%%˼���⣺1��ʵ��PCX��RLEѹ���㷨

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
             jishu=jishu+1;%�������Ҷȸ��������ۼ�
             if jishu>63
                 a(zhizhen,1)=I(i,j);%��¼ÿ���Ҷȵ���������
                 a(zhizhen,2)=jishu;
                 jishu=1;
                 zhizhen=zhizhen+1;
             end
        else   
            a(zhizhen,1)=I(i,j);%��¼ÿ���Ҷȵ���������
            a(zhizhen,2)=jishu;
            jishu=1;
            zhizhen=zhizhen+1;
        end
    end     
    a(zhizhen,1)=I(i,j);%ÿ�н����Ͷ�ÿ���Ҷȵ����������ϲ����������н��бȽ�
    a(zhizhen,2)=jishu;
    jishu=1;
    zhizhen=zhizhen+1;
end

%%2���Ƿ��ܶ�1.bmp����RLE���룬ʵ�ֱ�д�룬���ָ�ͼ�񣨿�ѡ���߼�,��Ҫʹ��UE32����ȡBMP��ͼ���ʽ����

