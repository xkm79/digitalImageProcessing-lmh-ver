%%%%%%%%%%%%%%%%% Ӱ�ӹ���ϵ����ͼ�����γ�ʵ�飺ʵ��2 2*2������˹��Ե��ǿʵ��%%%%%%%%%%%%%%%%%%%%%%%%
% clear;
% I1=imread('QiuShengQuan.jpg');
% I2=rgb2gray(I1);
% I=I2;
% [h w]=size(I2);
% for i=2:1:w-1
%     for j=2:1:h-1
%         I(j,i)=uint8( int16(I2(j,i-1))+int16(I2(j,i+1))+int16(I2(j-1,i))+int16(I2(j+1,i))-4*int16(I2(j,i)) );%%������˹����
%     end  
% end
% figure;
% imshow(I2);
% I3=I;
% figure;
% imshow(I);%%�����Ե���ͼ��
% figure;
% a=I2-I;%��Ե��ǿ
% imshow(a);%%�����Ե���ͼ��
%%%˼���⣺1������������ɫͼ��ı�Ե��ǿ���벢��ʾ  
 
% clear;
% I1=imread('QiuShengQuan.jpg');
% I2=I1;
% I=I2;
% [h,w,c]=size(I2);
% for i=2:1:w-1
%     for j=2:1:h-1
%         for c=1:1:3
%             I(j,i,c)=uint8( int16(I2(j,i-1,c))+int16(I2(j,i+1,c))+int16(I2(j-1,i,c))+int16(I2(j+1,i,c))-4*int16(I2(j,i,c)) );%%������˹����
%         end
%     end
% end
% figure;
% imshow(I2);
% I3=I;
% figure;
% imshow(I);%%�����Ե���ͼ��
% figure;
% a=I2-I;%��Ե��ǿ
% imshow(a);%%�����Ե���ͼ��

%%% 2����PPT���������LOG���ӣ�5*5ģ�棩

% clear;
% I1=imread('QiuShengQuan.jpg');
% I2=rgb2gray(I1);
% I=I2;
% [h,w,c]=size(I2);
% for i=3:1:w-2
%     for j=3:1:h-2
%         I(j,i)=uint8( 8*int16(I2(j,i-1))+8*int16(I2(j,i+1))+8*int16(I2(j-1,i))+8*int16(I2(j+1,i))+24*int16(I2(j,i))-4*int16(I2(j-1,i+2))-4*int16(I2(j-1,i-2))-4*int16(I2(j,i+2))-4*int16(I2(j,i-2))-4*int16(I2(j+1,i+2))-4*int16(I2(j+1,i-2))-4*int16(I2(j-2,i+1))-4*int16(I2(j-2,i-1))-4*int16(I2(j-2,i))-4*int16(I2(j+2,i+1))-4*int16(I2(j+2,i))-4*int16(I2(j+2,i-1))-2*int16(I2(j-2,i+2))-2*int16(I2(j-2,i-2))-2*int16(I2(j+2,i+2))-2*int16(I2(j+2,i-2)));%%������˹����
%     end
% end
% figure;
% imshow(I2);
% I3=I;
% figure;
% imshow(I);%%�����Ե���ͼ��
% figure;
% a=I2-I;%��Ե��ǿ
% imshow(a);%%�����Ե���ͼ��

%%% 3���ܷ��������ߴ��LOG����ģ��

clear;
I1=imread('QiuShengQuan.jpg');
I2=rgb2gray(I1);
I=I2;
[h,w,c]=size(I2);
for i=3:1:w-2
    for j=3:1:h-2
        I(j,i)=uint8( 8*int16(I2(j,i-1))+8*int16(I2(j,i+1))+8*int16(I2(j-1,i))+8*int16(I2(j+1,i))+24*int16(I2(j,i))-4*int16(I2(j-1,i+2))-4*int16(I2(j-1,i-2))-4*int16(I2(j,i+2))-4*int16(I2(j,i-2))-4*int16(I2(j+1,i+2))-4*int16(I2(j+1,i-2))-4*int16(I2(j-2,i+1))-4*int16(I2(j-2,i-1))-4*int16(I2(j-2,i))-4*int16(I2(j+2,i+1))-4*int16(I2(j+2,i))-4*int16(I2(j+2,i-1))-2*int16(I2(j-2,i+2))-2*int16(I2(j-2,i-2))-2*int16(I2(j+2,i+2))-2*int16(I2(j+2,i-2)));%%������˹����
    end
end
figure;
imshow(I2);
I3=I;
figure;
imshow(I);%%�����Ե���ͼ��
figure;
a=I2-I;%��Ե��ǿ
imshow(a);%%�����Ե���ͼ��