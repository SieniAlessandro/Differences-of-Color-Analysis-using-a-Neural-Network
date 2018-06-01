%%
load('IS_Dataset.mat')


MasterTest = 50;
CopyTest = 30;
NumberFeatures = 5;

[Features,dists] = FeatureMatrix(spectra,NumberFeatures,MasterTest,CopyTest);


%%
opt  = statset('Display','iter','useParallel',true);
[fs,history] = sequentialfs(@FeatureNetwork,Features,dists,'cv','none','opt',opt,'nfeatures',12);
FN(Features(:,fs),dists); 



