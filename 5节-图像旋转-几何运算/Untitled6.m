%%%%%%%%%%%%%%%%% Ӱ�ӹ���ϵ����ͼ����γ�ʵ�飺ʵ��6 ˫���Բ�ֵ����%%%%%%%%%%%%%%%%%%%%%%%%
%%˼����1�����鱾ԭ���������˫���Բ�ֵ���룬�������PPT��3��ͼ�Ĵ���Ч��
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
imshow(I1);%%˫���Բ�ֵ���

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
   0      0        1 ]%�趨��ת����
for i=1:1:w/3
  for j=1:1:h
     OLocation = [j-h/2;i-w/3/2;1];%���ԭʼλ�þ��󣨰�������ƽ�ƣ�
        NLocation=  int16(T*OLocation) ;%����Ŀ��λ�þ���
        NLocation(2)=NLocation(2)+w/3/2;%����������ƽ�ƣ�
        NLocation(1)=NLocation(1)+h/2;%����������ƽ�ƣ�
        if ( (NLocation(1)>1)&&(NLocation(1)<h)&&(NLocation(2)>1)&&(NLocation(2)<w/3) )%Ԥ���������ͼ�����鷶Χ
          I2( j,i,1 )=I1(NLocation(1),NLocation(2),1);%��ɫ����
          I2( j,i,2 )=I1(NLocation(1),NLocation(2),2);%��ɫ����
          I2( j,i,3 )=I1(NLocation(1),NLocation(2),3);%��ɫ����
        end
   end
end
figure;
imshow(I2);%%����ӳ����