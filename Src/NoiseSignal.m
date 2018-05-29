function y = NoiseSignal(in,Bands)
    BandWidth = floor(420/Bands);
    SNR = randi([10,50]);
    y = in;
    for i = 1:Bands-1
        if(rand < .5)
            y(i*BandWidth:(i+1)*BandWidth) = awgn(in(i*BandWidth:(i+1)*BandWidth),SNR);
        end
    end
end