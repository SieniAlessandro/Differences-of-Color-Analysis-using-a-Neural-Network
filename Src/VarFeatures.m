function out = StdFeatures(in,Bands)
    Bandwidth = floor(420/Bands);
    in = in';
    out = zeros(1,Bands);
    for i = 1:Bands
        [r,c] = size(in(i*Bandwidth:end));
        if c < Bandwidth
            out(i) = var(in(i*Bandwidth:end));
        else
            out(i) = var(in(i*Bandwidth:(i+1) * Bandwidth));
        end
    end
end