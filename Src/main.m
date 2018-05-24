load('IS_Dataset.mat')

[Features,dists] = FeatureMatrix(spectra,42,300,5);


opt  = statset('Display','iter','UseParallel',true);
[fs,history] = sequentialfs(@FeatureNetwork,Features,dists,'cv','none','opt',opt,'nfeature',15);
%plot(noisedSignal(:,2)-spectra(:,2))
%image(disp)


