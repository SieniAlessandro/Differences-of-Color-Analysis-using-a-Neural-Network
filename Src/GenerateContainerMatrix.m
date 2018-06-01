function out = GenerateContainerMatrix(Sections,Max)
    length = Max/Sections;
    out = [];
    for i = 0:length:Max-length
        out = [out; i, i+length];
    end
end