%%%%%%%%%%%%%%%%% 影视工程系数字图像处理课程实验：实验4 图像旋转实例-按标准矩阵转换的实例%%%%%%%%%%%%%%%%%%%%%%%%
clear;
I1=imread('PingGuo.jpg');
[h w] = size(I1);
I2=I1;
for i=1:1:w/3
  for j=1:1:h
      I2(j,i,1)=0;
      I2(j,i,2)=0;
      I2(j,i,3)=0;
  end
end
s=pi/6;
T=[cos(s) sin(s)  0;
   -sin(s) cos(s)   0;
   0      0        1 ]%设定旋转矩阵的逆矩阵
for i=1:1:w/3
  for j=1:1:h
     OLocation = [j-h/2;i-w/3/2;1];%组合原始位置矩阵（包含中心平移）,x=NLocation(2) y=NLocation(1)
        NLocation=  int16(T*OLocation) ;%计算目标位置矩阵
        NLocation(2)=NLocation(2)+w/3/2;%（包含中心平移）
        NLocation(1)=NLocation(1)+h/2;%（包含中心平移）
        if ( (NLocation(1)>1)&&(NLocation(1)<h)&&(NLocation(2)>1)&&(NLocation(2)<w/3) )%预防坐标溢出图像数组范围
          I2(j,i,1)=I1( NLocation(1),NLocation(2),1 );%红色分量缩放
          I2(j,i,2)=I1( NLocation(1),NLocation(2),2 );%绿色分量缩放
          I2(j,i,3)=I1( NLocation(1),NLocation(2),3 );%蓝色分量缩放
        end
   end
end
subplot(1,2,1);imshow(I1);
subplot(1,2,2);
imshow(I2);
imwrite(I2,'eee.bmp');
%%思考题：标准的旋转算法，对比课堂内容说明此过程的原理
