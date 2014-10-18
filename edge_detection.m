%edge detection
function [edges] = edge_detection(img)

if length(size(img)) ~= 2
    return;
end;

[m, n] = size(img);
edges = uint8(zeros(m, n));
threshold = 30;

for i=2:m-1
    for j=2:n-1
        if  abs(img(i, j)-img(i-1, j-1)) > threshold
            edges(i, j) = 255;
        end;
        if abs(img(i, j) - img(i-1, j)) > threshold
            edges(i, j) = 255;
        end;
        if abs(img(i, j) - img(i, j-1)) > threshold
            edges(i, j) = 255;
        end;
    end;
end;
end;

im1 = imread('./ff.jpg');
edges = edge_detection(im1);
imwrite(edges, 'edge_detection.png');
