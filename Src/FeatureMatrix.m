function [out dist] = FeatureMatrix(spectra,Bands,Masters,Copies)
    out = [];
    dist = [];
    spectra = spectra(:,randsample(1269,Masters));
    for i = 1:Masters
        for j = 1:Copies
            noisedSignal = NoiseSignal(spectra(:,i),42);
            out = [out; generateFeatures(spectra(:,i),Bands),generateFeatures(noisedSignal,Bands)];
            dist = [dist;computeDistance(toLAB(spectra(:,i)),toLAB(noisedSignal))];
        end
    end
end
