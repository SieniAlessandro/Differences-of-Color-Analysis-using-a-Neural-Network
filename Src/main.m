
load('IS_Dataset.mat')
load('f.mat')
load('d.mat')

MasterTest = 5;
CopyTest = 50;
NumberFeatures = 3;

[Features,dists] = FeatureMatrix(spectra,NumberFeatures,MasterTest,CopyTest);


opt  = statset('Display','iter','useParallel',true);
[fs,history] = sequentialfs(@FeatureNetwork,Features,dists,'cv','none','opt',opt,'nfeatures',10);
FN(Features(:,fs),dists); 


