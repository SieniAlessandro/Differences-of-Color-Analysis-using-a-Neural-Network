function out = generateFeatures(in,Bands)
    out = [AvgFeatures(in,Bands),MinFeatures(in,Bands),MaxFeatures(in,Bands)];
end