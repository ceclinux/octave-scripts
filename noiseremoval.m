% noise removal for grayscale image
function [img] = remove_noise(noisyimg)

if length(size(noisyimg)) ~= 2
    return;
end;

[m n] = size(noisyimg);
img = noisyimg;

for i=2:m-1
    for j=2:n-1
        neighbors = img(i-1:i+1, j-1:j+1);
        img(i, j) = median(neighbors(:));
    end;
end;
end;

im1 = imread('./add_noise.png');
edges = remove_noise(im1);
imwrite(edges, 'remove_noise.png');
