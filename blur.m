m = 1;
F = ones(2*m + 1, 2*m+1);
f = F(:);
%F =

   %1   1   1
   %1   1   1
   %1   1   1

%f =

   %1
   %1
   %1
   %1
   %1
   %1
   %1
   %1
   %1
f = f/sum(f);
img = imread('ert.jpg');
img = double(img);
[s t] = size(img);
newimg = zeros(s, t);
for i=1+m:s-m
    for j=1+m:t-m
        neighbors = img(i-m:i+m, j-m:j+m);
        %矩阵的转置, 矩阵的相乘
        newimg(i, j) = uint8(f' * neighbors(:))
    end
end

newimg = round(newimg);
newimg = uint8(newimg);
imwrite(newimg, 'newimg.png');
