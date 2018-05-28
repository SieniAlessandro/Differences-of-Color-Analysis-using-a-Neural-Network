function y = NoiseSignal(in,Bands)
    BandWidth = floor(420/Bands);
    y = in;
    for i = 1:Bands-1
        if(rand < .5)
            y(i*BandWidth:(i+1)*BandWidth) = awgn(in(i*BandWidth:(i+1)*BandWidth),40);
        end
    end
end