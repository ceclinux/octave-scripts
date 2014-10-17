function [newimg] = img_add(img1, img2)

%如果图像一黑白一彩色就直接忽略
if length(size(img1)) ~= length(size(img2))
    return;
end;
[m1 n1] = size(img1);
[m2 n2] = size(img2);
%如果图像的像素数量不同也忽略
if(m1~=m2)||(n1~=n2)
    return;
end;
newimg = double(img1) + double(img2);
newimg(newimg>255) = 255;
newimg = uint8(newimg);
end;


im1 = imread('./noise.png');
im2 = imread('./ert.jpg');
newimg = img_add(im1, im2);
imwrite(newimg, 'img_add.png');
