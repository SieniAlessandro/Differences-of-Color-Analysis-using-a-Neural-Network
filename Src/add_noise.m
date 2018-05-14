function out = add_noise(x)
if ~isvector(x)
    disp("The input must be a vector")
end
    out = sum(x) / length(x);
end