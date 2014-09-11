%convert a image to grayscale image
im = imread('fight.jpg')
# A(:, l) is the l th column of matrix A
# A(k, :) is the k th row of matrix A
red = double(im(:,:,1))
green = double(im(:,:,2))
blue = double(im(:,:,3))
grey = 11*red/32 + 16*green/32 + 5*blue/32
# convert to unsigned 8-bit integer type
grey = uint8(round(grey))
imwrite(grey, 'grey.jpg')
