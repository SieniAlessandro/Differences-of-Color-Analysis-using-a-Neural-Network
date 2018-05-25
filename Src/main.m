load('IS_Dataset.mat')

MasterTest = 500;
CopyTest = 10;
NumberFeatures = 42;

[Features,dists] = FeatureMatrix(spectra,NumberFeatures,MasterTest,CopyTest);
opt  = statset('Display','iter');
[fs,history] = sequentialfs(@FeatureNetwork,Features,dists,'cv','none','opt',opt,'nfeatures',10);
FN(Features(:,fs),dists); 
 

