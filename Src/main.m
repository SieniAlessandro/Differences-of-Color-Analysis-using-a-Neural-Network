load('IS_Dataset.mat')

Segnali = [];
Segnali = [Segnali;spectra(:,1)'];
dists = [];


% for i = 1:5
%     Segnali = [Segnali;NoiseSignal(spectra(:,1),42)'];
% end
% 
% plotSignals(Segnali);


[Features,dists] = FeatureMatrix(spectra,82,200,5);


opt  = statset('Display','iter');
[fs,history] = sequentialfs(@FeatureNetwork,Features,dists,'cv','none','opt',opt,'nfeature',10);
%plot(noisedSignal(:,2)-spectra(:,2))

[Features,dists] = FeatureMatrix(spectra,82,200,5);

FN(Features(:,fs),dists);

%image(disp)


