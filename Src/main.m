clc;
%%

load('IS_Dataset.mat')
selectedMastersIdx     = [  23 30 62 102 103 104 105 106 107 ...
                            108 109 129 137 168 244 251 253 ... 
                            330 348 362 426 431 433 486 495  ...
                            492 551 588 557 666 698 700 825  ...
                            830 892 922 928 931 1000 1059 1064 ...
                            1087 1093 1132 1217 1227 1231 ];
                       
MS = spectra(:,selectedMastersIdx);

%%

MasterTest = 250;
CopyTest = 10;
NumberFeatures = 20;
[Features,dists] = FeatureMatrix(spectra,NumberFeatures,MasterTest,CopyTest);
%[Features,dists] = FeatureMatrix(MS,NumberFeatures,size(selectedMastersIdx,2),CopyTest);
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
