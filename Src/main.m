
load('IS_Dataset.mat')


MasterTest = 10;
CopyTest = 60;
NumberFeatures = 15;

[Features,dists] = FeatureMatrix(spectra,NumberFeatures,MasterTest,CopyTest);



opt  = statset('Display','iter','useParallel',true);
[fs,history] = sequentialfs(@FeatureNetwork,Features,dists,'cv','none','opt',opt,'nfeatures',10);
FN(Features(:,fs),dists); 


