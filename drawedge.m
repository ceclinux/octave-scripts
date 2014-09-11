%edge detection
im = imread('ff.jpg');
threshold = 30;
[m n] = size(im);
for i=1:m-1
    for j=1:n-1
        %the absolute value should bigger than threshold
        if(abs(im(i, j)-im(i, j+1))>threshold||abs(im(i, j)-im(i+1, j))>threshold)
            %white
            im(i, j) = 255;
        else
            %black
            im(i, j) = 0;
        endif
    end
end
imwrite(im, 'm.jpg')
