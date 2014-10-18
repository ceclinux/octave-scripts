function [h] = cal_histo(img)
if length(size(img)) ~= 2
    return;
end;
h = zeros(256, 1);

img = img(:);
for i = 1:256
    % img == i, 即列出图像所有像素与i的相等与否表, 再加起来即可
    h(i) = sum(img == i-1);
end;
end;

%histogram comparison for two grayscale image
function [similarity] = compare_img(img1, img2)

if (length(size(img1)) ~= 2) || (length(size(img2)) ~= 2)
    return;
end;
h1= cal_histo(img1);
h2= cal_histo(img2);
similarity = (h1'*h2)/(sqrt(h1'*h1)*sqrt(h2'*h2));
end;

im1 = imread('./ff.jpg');
im2 = imread('./ert.jpg');
similarity = compare_img(im1, im2);
