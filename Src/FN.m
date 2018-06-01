function out = FN(x,t)
    hiddelayersize = 30;
    net = fitnet(hiddelayersize);
    xx = x';
    tt = t';
    [net,tr] = train(net,xx,tt);
    y = net(xx);
    out = net
end 
