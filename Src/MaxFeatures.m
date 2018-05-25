function out = MaxFeatures(in,Bands)
    Bandwidth = floor(420/Bands);
    out = [];
    in = in';
    out = zeros(1,Bands);
    for i = 1:Bands
        [r,c] = size(in(i*Bandwidth:end));
        if c < Bandwidth
            out(i) = max(in(i*Bandwidth:end));
        else
            out(i) = max(in(i*Bandwidth:(i+1) * Bandwidth));
        end
    end
end