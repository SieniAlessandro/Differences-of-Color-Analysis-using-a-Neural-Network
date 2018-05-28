load('IS_Dataset.mat')

MasterTest = 3;
CopyTest = 30;
NumberFeatures = 10;

[Features,dists] = FeatureMatrix(spectra,NumberFeatures,MasterTest,CopyTest);

opt  = statset('Display','iter','useParallel',true);
[fs,history] = sequentialfs(@FeatureNetwork,Features,dists,'cv','none','opt',opt,'nfeatures',10);
[Features,dists] = FeatureMatrix(spectra,NumberFeatures,MasterTest,CopyTest);
%FeatureNetwork(Features(:,fs),dists); 
 

