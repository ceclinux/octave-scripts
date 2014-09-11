%draw the histogram of the grayscale image
im = imread('ff.jpg')
%the size of im is m*n resolution
[m, n] = size(im)
%fill the matrix with 256 rows and 1 column
h = zeros(256, 1)
for i = 1:m
    for j = 1:n
        c = im(i, j)
        h(c+1) = h(c+1)+1
    end
end
plot( h)
