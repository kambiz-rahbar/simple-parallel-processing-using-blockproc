clc
clear
close all

img = imread('moon.tif');

tic
res1 = my_func2(img);
time1 = toc;

tic
res2 = blockproc(img,[10,10],@my_func2,'UseParallel',true);
time2 = toc;

subplot(1,3,1); imshow(img); title('main image');
subplot(1,3,2); imshow(res1); title(sprintf('direct: %.3f^s',time1))
subplot(1,3,3); imshow(res2); title(sprintf('blockproc: %.3f^s',time2))


