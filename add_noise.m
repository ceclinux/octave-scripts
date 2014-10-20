% add noise to grayscale image
function [noisyimg] = add_noise(img)

if length(size(img)) ~= 2
    return;
end;

% 产生img大小的随机数矩阵, 并乘以100
noise = rand(size(img)) * 100;
noise(noise<80) = 0;
noisyimg = double(img) + noise;
noisyimg = round(noisyimg);
noisyimg(noisyimg>255)=255;
noisyimg = uint8(noisyimg);
end;

im1 = imread('./ff.jpg');
edges = add_noise(im1);
imwrite(edges, 'add_noise.png');
