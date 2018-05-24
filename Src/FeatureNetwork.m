function perf = FeatureNetwork(x,t)
    hiddelayersize = 5;
    net = fitnet(hiddelayersize);
    xx = x';
    tt = t';
    [net,tr] = train(net,xx,tt);
    y = net(xx);
    perf = perform(net,tt,y);
end 
