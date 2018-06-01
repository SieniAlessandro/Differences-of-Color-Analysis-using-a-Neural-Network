function [out dist] = FeatureMatrix(spectra,Bands,Masters,Copies)
    out = [];
    dist = [];
    Sections = 10;
    SectionsMatrix = GenerateContainerMatrix(Sections,5);
    pos = 0;
    Error = 10/Sections;
    spectra = spectra(:,randsample(1269,Masters));
    for i = 1:Masters
        for j = 1:Copies
            SNR = 50;
            noisedSignal = NoiseSignal(spectra(:,i),42,SNR);  
            d = computeDistance(toLAB(spectra(:,i)),toLAB(noisedSignal));
            k = mod(pos,Sections)+1;
            while(d < SectionsMatrix(k,1) || d > SectionsMatrix(k,2))
                 if(d < SectionsMatrix(k,1))
                    SNR = SNR - 1;
                 else
                     SNR = SNR + 1;
                 end
                 noisedSignal = NoiseSignal(spectra(:,i),42,SNR);
                 d = computeDistance(toLAB(spectra(:,i)),toLAB(noisedSignal));
                 %%fprintf("%d \t [%d,%d]\n",d,SectionsMatrix(k,1),SectionsMatrix(k,2));
            end
            clc;
            fprintf("NUOVO %i %i\n",i,j);
            out = [out; generateFeatures(Normalizza(spectra(:,i)),Bands),generateFeatures(Normalizza(noisedSignal),Bands)];
            dist = [dist;d];
            pos = pos + 1;
        end
    end
end
