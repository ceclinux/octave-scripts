% 也就是说, 找一个点作为界限, 它的上界的方差和下界的方差和最小
function [binimg] = gray2binary(img)

if length(size(img)) ~= 2
    return;
end;

% very large number
minvar = 10000000000;
binimg = img;
img = img(:);
for t = 1:255
    % 把小于大于t的灰度值都筛选出来
    g1 = img(img < t);
    g2 = img(img >= t);
    var1 = std(g1)
    var2 = std(g2);
    if var1+var2 < minvar
        minvar = var1 + var2
        bestt = t;
    end;
end;


binimg(binimg < bestt) = 0;
binimg(binimg >=bestt) = 255;
end;

im2 = imread('./ert.jpg');
newimg = gray2binary(im2);
imwrite(newimg, 'gray2binary.png');
