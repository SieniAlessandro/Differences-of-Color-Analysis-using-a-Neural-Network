function perf = FeatureNetwork(x,t)
    hiddelayersize = 15;
    net = fitnet(hiddelayersize);
    net.trainParam.showWindow = 0;
    xx = x';
    tt = t';
    [net,tr] = train(net,xx,tt);
    y = net(xx);
    perf = perform(net,tt,y);
end 
