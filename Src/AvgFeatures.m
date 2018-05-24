function out = AvgFeatures(in,Bands)
    Bandwidth = floor(420/Bands);
    out = [];
    for i = 1:Bands-1
        out(i) = mean(in(i*Bandwidth:(i+1) * Bandwidth));
    end
end