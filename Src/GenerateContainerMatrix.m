function out = GenerateContainerMatrix(Sections)
    length = 4/Sections;
    out = [];
    for i = 0:length:4-length
        out = [out; i, i+length];
    end
end