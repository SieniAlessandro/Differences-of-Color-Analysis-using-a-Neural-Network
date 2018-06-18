clc;
%%

load('IS_Dataset.mat')
selectedMastersIdx     = [  23 30 62  129 137 168 244 251 253 ... 
                            330 348 362 426 431 433 486 495  ...
                            492 551 588 557 666 698 700 825  ...
                            830 892 922 928 931 1000 1059 1064 ...
                            1087 1093 1132 1217 1227 1231 ...
                             8 243 340 505 708 900 1110 ...
                            102 932 965 1164 ];
                       
MS = spectra(:,selectedMastersIdx);

%%

MasterTest = 250;
CopyTest = 10;
NumberFeatures = 20;
[Features,dists] = FeatureMatrix(MS,NumberFeatures,size(selectedMastersIdx,2),CopyTest,false);

%%

temp = [Features,dists];
temp = temp(randperm(size(temp, 1)), :);
Features = temp(:,1:size(temp,2)-1);
dists = temp(:,size(temp,2));

%%

opt  = statset('Display','iter','useParallel',true);
[fs,history] = sequentialfs(@FeatureNetwork,Features,dists,'cv','none','opt',opt,'nfeatures',12);

%%

FN(Features(:,fs),dists); 

