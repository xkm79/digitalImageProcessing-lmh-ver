
%%%%%%%%%%%%%%%%% Ӱ�ӹ���ϵ����ͼ����γ�ʵ�飺ʵ��4 ͼ��Ķ�ȡ����ʾʵ��%%%%%%%%%%%%%%%%%%%%%%%%
% info = dicominfo('3b_mpr_pr_hf_vfh.6.dcm');
% I = dicomread(info);
% imshow(I,'DisplayRange',[]);

%%%%%%%˼���⣺����������ʵ�ֵ���������������������һ��ͼƬ��������GUI��

%%��untitled5������м���

%%%%%%%����˼���⣺�ϲ�ͼ��Ŀռ�����ʾ���ο�help�ڵ�����ʾ��

clear;
figure;
numImage=30;
allImage=zeros(512,512,numImage);
for i=1:1:numImage
    info=dicominfo("3b_mpr_pr_hf_vfh."+i+".dcm");
    allImage(:,:,i)=dicomread(info);
end
colormap gray;
p=patch(isosurface(allImage,0.5));
set(p,'FaceColor','flat','EdgeColor','none');
axis([1 512 1 512 1 30])
xlabel('x��');
ylabel('y��');
zlabel('DICOMͼ����');
light;
lighting gouraud;
view(3);


