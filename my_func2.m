function [y] = my_func2(x)

if isstruct(x)
    y = imresize(x.data,0.5);
else
    y = imresize(x,0.5);
end

