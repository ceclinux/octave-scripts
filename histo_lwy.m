%Another version of histogram of grayscale image
function [h] = cal_histo(img)
if length(size(img)) ~= 2
    return;
end;
h = zeros(256, 1);

img = img(:);
for i = 1:256
    h(i) = sum(img == i-1);
end;
end;

im1 = imread('./ert.jpg');
h = cal_histo(im1);
plot(h)
