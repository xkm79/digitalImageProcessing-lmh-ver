%%%%%%%%%%%%%%%%% Ӱ�ӹ���ϵMATLAB�γ�ʵ�飺 ʵ��8 ������� %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%% Ӱ�ӹ���ϵ����ͼ����γ�ʵ�飺 ͼ����������ɾ�����㸴�� %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;
I1=imread('2.jpg');

for i=1:1:960
    for j=1:1:600
%I1(j,i+1280)=255;
%I1(j,i+1280)=255;
    end  
end
imshow(I1);
I2 = I1;
%%%%%%%%%%%���ͼ��I2
for i=1:1:960
    for j=1:1:600
        I2(j,i)=0;
        I2(j,i+960)=0;
        I2(j,i+2*960)=0;
    end  
end
I3=I2;
I4=I2;
hold all;
%%%%%%%%%%%%%%%%%%���Ʊ߽�%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for i=1:1:20
    [x,y,button] = ginput(1);
    
    if(button == 3 )

        a(2) = x0;b(2) = y0;
        a(1) = xx;b(1) = yy;
         %%%%%%%%%%%%�˳�����%%%%%%%%%%%%%%%%%%%%%%
        for s=a(1):1:a(2)
            t=(b(2)-b(1))*(s-a(1))/(a(2)-a(1))+b(1);
            plot(s,t,'b.','markersize',5);
            I2(int16(t),int16(s))=255;
        end
        for s=a(1):-1:a(2)
            t=(b(2)-b(1))*(s-a(1))/(a(2)-a(1))+b(1);
            plot(s,t,'b.','markersize',5);
             I2(int16(t),int16(s))=255;
        end
        for t=b(1):1:b(2)
            s=(a(2)-a(1))*(t-b(1))/(b(2)-b(1))+a(1);
            plot(s,t,'b.','markersize',5);
            I2(int16(t),int16(s))=255;
        end
        for t=b(1):-1:b(2)
            s=(a(2)-a(1))*(t-b(1))/(b(2)-b(1))+a(1);
            plot(s,t,'b.','markersize',5);
            I2(int16(t),int16(s))=255;
        end     
        %%%%%%%%%%%%%%%%%%%
        break;%%%%%%%%%%%%%%%%%%�Ҽ��������һ���߲��Ƴ��ϼ�ѭ��%%%%%%%%%%%%%%%%%%
    end
    plot(x,y,'r.','markersize',20);

   
    if(i>1)
        a(2) = x;b(2) = y;
        a(1) = x0;b(1) = y0;
        %%%%%%%%%%%%��������%%%%%%%%%%%%%%%%%%%%%%
        for s=a(1):1:a(2)
            t=(b(2)-b(1))*(s-a(1))/(a(2)-a(1))+b(1);
            plot(s,t,'b.','markersize',5);
            I2(int16(t),int16(s))=255;
        end
        for s=a(1):-1:a(2)
            t=(b(2)-b(1))*(s-a(1))/(a(2)-a(1))+b(1);
            plot(s,t,'b.','markersize',5);
             I2(int16(t),int16(s))=255;
        end
        for t=b(1):1:b(2)
            s=(a(2)-a(1))*(t-b(1))/(b(2)-b(1))+a(1);
            plot(s,t,'b.','markersize',5);
            I2(int16(t),int16(s))=255;
        end
        for t=b(1):-1:b(2)
            s=(a(2)-a(1))*(t-b(1))/(b(2)-b(1))+a(1);
            plot(s,t,'b.','markersize',5);
            I2(int16(t),int16(s))=255;
        end        
        %%%%%%%%%%%%%
    end
    x0 = x; y0 = y;  
    if(i==1)
         xx = x;yy = y;
    end
    
end

control = 0;
jishu = 0;
n=1:1:600;
%%%%%%%%%��ȡ��Ҫ������%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%˼����1��ͬѧ��˼����䲻��͹������ε��㷨
for j=1:1:600
     for i=2:1:959
        if( (I2(j,i) == 0)&&(I2(j,i-1) == 255))
                control = control + 1;
        end
        if( (I2(j,i) == 0)&&(I2(j,i+1) == 255))
                 control = control + 1;
        end   
     end  
     if (control == 4)
            n(j) = 0;
           
     end
     control = 0;
end

figure;
imshow(I2);%%%%I2Ϊ�߿�ͼ
 control = 0;
 %%%%%%%%%%%%%%�������
for j=1:1:600
    if(n(j) == 0)
         for i=2:1:959
            if( (I2(j,i) == 0)&&(I2(j,i+1) == 255))
                   if( control == 0 )
                      control = 1;
                   else
                        control = 0;
                   end
                     I3(j,i+960) = 255;
            end

            if(control == 1)
                I3(j,i) = 255;
            end
            
         end  
    end
end
figure;
imshow(I3);%%%%I3Ϊ���ѡ��ͼ

for i=1:1:960
    for j=1:1:600
        if (I3(j,i) == 255)
            I4(j,i)=I1(j,i);
            I4(j,i+960)=I1(j,i+960);
            I4(j,i+2*960)=I1(j,i+2*960);
        end
    end  
end
figure;
imshow(I4);%%%%I4Ϊ��ѡ�е�ͼ       

I5=I1;
for i=1:1:960
    for j=1:1:600
        if (I3(j,i) == 255)
            I5(j,i)=0;
            I5(j,i+960)=0;
            I5(j,i+2*960)=0;
        end
    end  
end
figure;
imshow(I5);%%%%I5Ϊ��ɾѡ�е�ͼ    

figure;
imshow(I1); 
[x,y,button] = ginput(1);
for i=1:1:960
    for j=1:1:600
        if (I3(j,i) == 255)
            I1(j+y,i+x,1)=I4(j,i,1);
            I1(j+y,i+x,2)=I4(j,i,2);
            I1(j+y,i+x,3)=I4(j,i,3);
        end
    end  
end
figure;
imshow(I1);%%%%I1Ϊ����ͼ    
%%%%%%%%%%%%˼����2������ͼʱ ������ ѡ��ͼ���ģ�%%%%%%%%%%%%%%%%%%%%%