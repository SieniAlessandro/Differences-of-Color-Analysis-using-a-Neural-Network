function out = AreaFeatures(in,Bands)
    Bandwidth = floor(420/Bands);
    in = in';
    out = zeros(1,Bands);
    for i = 1:Bands
        [r,c] = size(in(i*Bandwidth:end));
        if c < Bandwidth
            out(i) = trapz(in(i*Bandwidth:end));
        else
            out(i) = trapz(in(i*Bandwidth:(i+1) * Bandwidth));
        end
    end
end