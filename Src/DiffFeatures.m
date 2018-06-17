function out = DiffFeatures(in,Bands)
    Bandwidth = floor(420/Bands);
    in = in';
    out = zeros(1,Bands);
    for i = 1:Bands
        [r,c] = size(in(i*Bandwidth:end));
        if c < Bandwidth
            out(i) = (max(in(i*Bandwidth:end))-min(in(i*Bandwidth:end)))/c;
        else
            out(i) = (max((in(i*Bandwidth:(i+1) * Bandwidth)))-min((in(i*Bandwidth:(i+1) * Bandwidth))))/Bandwidth;
        end
    end
end