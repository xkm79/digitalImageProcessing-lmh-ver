%%%%%%%%%%%%%%%%% 影视工程系数字图像处理课程实验： 膨胀与腐烛实例%%%%%%%%%%%%%%%%%%%%%%%%
% clear;
% b=zeros(7,9);
% b(2:3,2:8)=1;
% b(4,4:7)=1;
% b(5,4:5)=1;
% b(6,5)=1;%生成矩阵b
% b
% se2 = strel("line",3,90);%生成结构元素se2
% c = imdilate(b,se2)%图像膨胀
% d = imerode(b,se2)%图像腐蚀
%%%%%%%%%%%%思考题：1、自行编程尝试实现imdilate函数；

% clear;
% b=zeros(7,9);
% b(2:3,2:8)=1;
% b(4,4:7)=1;
% b(5,4:5)=1;
% b(6,5)=1;%生成矩阵b
% b
% se2 = strel("line",3,90);%生成结构元素se2
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


%%%%%%%%2、自行编程实现imerode函数

% clear;
% b=zeros(7,9);
% b(2:3,2:8)=1;
% b(4,4:7)=1;
% b(5,4:5)=1;
% b(6,5)=1;%生成矩阵b
% b
% se2 = strel("line",3,90);%生成结构元素se2
% c=erode(b,se2)
% 
% function I=erode(I1,se)
%     [a,b]=size(I1);
%     flag=getnhood(se);%%判断矩阵
%     I2=I1;
%     [dx,dy]=size(getnhood(se));
%     dx=floor(dx/2);
%     dy=floor(dy/2);
%     for i=1:1:a
%         for j=1:1:b%%遍历每个点
%             if I1(i,j)==1%%若该点为1
%                 flag=I1(i-dx:i+dx,j-dy:j+dy);
%                 if ~isequal((flag&getnhood(se)),getnhood(se))%%若这个点与se不同，则归零
%                     I2(i,j)=0;
%                 end
%             end
%         end
%     end
%     I=I2;
% 
% end

%%%%%%%%%%%%附加题： 自己编写膨胀和腐蚀功能函数

clear;
b=zeros(7,9);
b(2:3,2:8)=1;
b(4,4:7)=1;
b(5,4:5)=1;
b(6,5)=1;%生成矩阵b
b
se2 = strel("line",3,90);%生成结构元素se2
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
    flag=getnhood(se);%%判断矩阵
    I2=I1;
    [dx,dy]=size(getnhood(se));
    dx=floor(dx/2);
    dy=floor(dy/2);
    for i=1:1:a
        for j=1:1:b%%遍历每个点
            if I1(i,j)==1%%若该点为1
                flag=I1(i-dx:i+dx,j-dy:j+dy);
                if ~isequal((flag&getnhood(se)),getnhood(se))%%若这个点与se不同，则归零
                    I2(i,j)=0;
                end
            end
        end
    end
    I=I2;

end