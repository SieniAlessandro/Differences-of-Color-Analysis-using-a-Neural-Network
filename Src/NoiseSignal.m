function y = NoiseSignal(in,Bands)
    BandWidth = floor(420/Bands);
    y = in;
    for i = 1:Bands-1
        if(rand < .7)
            y(i*BandWidth:(i+1)*BandWidth) = awgn(in(i*BandWidth:(i+1)*BandWidth),20);
        end
    end
end