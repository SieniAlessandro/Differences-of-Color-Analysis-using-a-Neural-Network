function plotSignal(signals)

    wl = 380:1:800;
    [r,c] = size(signals);
    subplot(2,3,1);
    signals(1,:)
    plot(wl,signals(1,:));
    title("Master");
for i = 2:r
    subplot(2,3,i);
    plot(wl,signals(i,:));
    title("Copy");
end

end