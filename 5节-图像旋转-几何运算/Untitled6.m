%%%%%%%%%%%%%%%%% 影视工程系数字图像处理课程实验：实验6 双线性插值操作%%%%%%%%%%%%%%%%%%%%%%%%
%%思考题1：按书本原理自行设计双线性插值代码，获得如下PPT中3个图的处理效果
I1=imread('1.JPG');
[h,w]=size(I1);
I2=I1;
for i=1:1:w/3
    for j=1:1:h
        for c=1:1:3
            I1(j,i,c)=0;
        end
    end
end
s=pi/6;
for i=1:1:w/3
    for j=1:1:h
        a=cos(s)*(i-w/3/2)-sin(s)*(j-h/2)+w/3/2;
        b=sin(s)*(i-w/3/2)+cos(s)*(j-h/2)+h/2;
        c=fix(a);
        d=fix(b);
        if(c>1)&&(c<w/3)&&(d>1)&&(d<h)
            x=a-c;y=b-d;
            all(:,:,1)=(double(I2(d,c+1,1))-double(I2(d,c,1)))*x+(double(I2(d+1,c,1))-double(I2(d,c,1)))*y+(double(I2(d+1,c+1,1))+double(I2(d,c,1))-double(I2(d+1,c,1))-double(I2(d,c+1,1)))*x*y+double(I2(d,c,1));
            I1(j,i,1)=uint8(all(:,:,1));
            all(:,:,2)=(double(I2(d,c+1,2))-double(I2(d,c,2)))*x+(double(I2(d+1,c,2))-double(I2(d,c,2)))*y+(double(I2(d+1,c+1,2))+double(I2(d,c,2))-double(I2(d+1,c,2))-double(I2(d,c+1,2)))*x*y+double(I2(d,c,2));
            I1(j,i,2)=uint8(all(:,:,2));
            all(:,:,3)=(double(I2(d,c+1,3))-double(I2(d,c,3)))*x+(double(I2(d+1,c,3))-double(I2(d,c,3)))*y+(double(I2(d+1,c+1,3))+double(I2(d,c,3))-double(I2(d+1,c,3))-double(I2(d,c+1,3)))*x*y+double(I2(d,c,3));
            I1(j,i,3)=uint8(all(:,:,3));
        end
    end
end
imshow(I2);
figure;
imshow(I1);%%双线性插值结果

I1=imread('1.jpg');
[h w] = size(I1);
I2=I1;
for i=1:1:w/3
  for j=1:1:h
      I2(j,i,1)=0;
      I2(j,i,2)=0;
      I2(j,i,3)=0;
  end
end
s=-pi/6;
T=[cos(s) -sin(s)  0;
   sin(s) cos(s)   0;
   0      0        1 ]%设定旋转矩阵
for i=1:1:w/3
  for j=1:1:h
     OLocation = [j-h/2;i-w/3/2;1];%组合原始位置矩阵（包含中心平移）
        NLocation=  int16(T*OLocation) ;%计算目标位置矩阵
        NLocation(2)=NLocation(2)+w/3/2;%（包含中心平移）
        NLocation(1)=NLocation(1)+h/2;%（包含中心平移）
        if ( (NLocation(1)>1)&&(NLocation(1)<h)&&(NLocation(2)>1)&&(NLocation(2)<w/3) )%预防坐标溢出图像数组范围
          I2( j,i,1 )=I1(NLocation(1),NLocation(2),1);%红色分量
          I2( j,i,2 )=I1(NLocation(1),NLocation(2),2);%绿色分量
          I2( j,i,3 )=I1(NLocation(1),NLocation(2),3);%蓝色分量
        end
   end
end
figure;
imshow(I2);%%逆向映射结果