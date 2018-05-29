function [out dist] = FeatureMatrix(spectra,Bands,Masters,Copies)
    out = [];
    dist = [];
    Sections = Copies;
    SectionsMatrix = GenerateContainerMatrix(Sections);
    pos = 0;
    spectra = spectra(:,randsample(1269,Masters));
    for i = 1:Masters
        for j = 1:Copies
            noisedSignal = NoiseSignal(spectra(:,i),42);  
            d = computeDistance(toLAB(spectra(:,i)),toLAB(noisedSignal));
            k = mod(pos,Sections)+1;
            while(d < SectionsMatrix(k,1) | d > SectionsMatrix(k,2))
                 noisedSignal = NoiseSignal(spectra(:,i),42);
                 d = computeDistance(toLAB(spectra(:,i)),toLAB(noisedSignal));
                 fprintf("%d \t [%d,%d]\n",d,SectionsMatrix(k,1),SectionsMatrix(k,2));
            end
            clc;
            fprintf("NUOVO\n");
            out = [out; generateFeatures(spectra(:,i),Bands),generateFeatures(noisedSignal,Bands)];
            dist = [dist;d];
            pos = pos + 1;
        end
    end
end
