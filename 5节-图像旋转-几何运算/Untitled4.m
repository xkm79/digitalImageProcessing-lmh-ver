%%%%%%%%%%%%%%%%% Ӱ�ӹ���ϵ����ͼ����γ�ʵ�飺ʵ��4 ͼ����תʵ��-����׼����ת����ʵ��%%%%%%%%%%%%%%%%%%%%%%%%
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
   0      0        1 ]%�趨��ת����������
for i=1:1:w/3
  for j=1:1:h
     OLocation = [j-h/2;i-w/3/2;1];%���ԭʼλ�þ��󣨰�������ƽ�ƣ�,x=NLocation(2) y=NLocation(1)
        NLocation=  int16(T*OLocation) ;%����Ŀ��λ�þ���
        NLocation(2)=NLocation(2)+w/3/2;%����������ƽ�ƣ�
        NLocation(1)=NLocation(1)+h/2;%����������ƽ�ƣ�
        if ( (NLocation(1)>1)&&(NLocation(1)<h)&&(NLocation(2)>1)&&(NLocation(2)<w/3) )%Ԥ���������ͼ�����鷶Χ
          I2(j,i,1)=I1( NLocation(1),NLocation(2),1 );%��ɫ��������
          I2(j,i,2)=I1( NLocation(1),NLocation(2),2 );%��ɫ��������
          I2(j,i,3)=I1( NLocation(1),NLocation(2),3 );%��ɫ��������
        end
   end
end
subplot(1,2,1);imshow(I1);
subplot(1,2,2);
imshow(I2);
imwrite(I2,'eee.bmp');
%%˼���⣺��׼����ת�㷨���Աȿ�������˵���˹��̵�ԭ��
