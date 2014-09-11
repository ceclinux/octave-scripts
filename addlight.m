%add luminance of a image
%have wield effect for writing jpg image, png imwrite works well
im = imread('ff.jpg');
lightadd = 20;
[m n] = size(im);
for i=1:m
    for j=1:n
        if((im(i, j)+lightadd)>255)
            im(i, j) = 255;
        else
            im(i, j) += lightadd;
        endif
    end
end
im = uint8(im);
imwrite(im, 'ttt.png');
