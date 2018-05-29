function perf = FeatureNetwork(x,t)
    hiddelayersize = 10;
    net = fitnet(hiddelayersize);
    net.TrainParam.ShowWindow = 0;
    xx = x';
    tt = t';
    [net,tr] = train(net,xx,tt);
    y = net(xx);
    perf = perform(net,tt,y);
end 
