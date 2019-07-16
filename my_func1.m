function [y] = my_func1(x)

lap = [0 1 0;
    1 -4 1;
    0 1 0];

if isstruct(x)
    y = conv2(x.data,lap,'same');
else
    y = conv2(x,lap,'same');
end

