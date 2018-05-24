function y = NoiseSignal(in)  
    y = in;
    for i = 1:20
        if(rand < .6)
            y(i*20:(i+1)*20) = awgn(in(i*20:(i+1)*20),20,'measured');
        end
    end
end