function [newimg] = img_com(img)
newimg = uint8(255) - img;
end

im1 = imread('./ert.jpg');
newimg = img_com(im1);
imwrite(newimg, 'img_com.png');
