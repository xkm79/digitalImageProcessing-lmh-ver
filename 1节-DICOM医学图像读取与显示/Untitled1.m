
%%%%%%%%%%%%%%%%% 影视工程系数字图像处理课程实验：实验4 图像的读取和显示实例%%%%%%%%%%%%%%%%%%%%%%%%
% info = dicominfo('3b_mpr_pr_hf_vfh.6.dcm');
% I = dicomread(info);
% imshow(I,'DisplayRange',[]);

%%%%%%%思考题：请制作程序实现点击鼠标或键盘任意键可浏览下一张图片（可以用GUI）

%%打开untitled5点击运行即可

%%%%%%%附加思考题：断层图像的空间体显示（参考help内的体显示）

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
xlabel('x轴');
ylabel('y轴');
zlabel('DICOM图像编号');
light;
lighting gouraud;
view(3);


