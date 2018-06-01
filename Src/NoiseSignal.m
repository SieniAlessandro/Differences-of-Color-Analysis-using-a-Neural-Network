function y = NoiseSignal(in,Bands,SNR)
    BandWidth = floor(420/Bands);
    y = in;
    for i = 1:Bands-1
        if(rand < .3)
            y(i*BandWidth:(i+1)*BandWidth) = awgn(in(i*BandWidth:(i+1)*BandWidth),SNR,'measured');
        end
    end
end