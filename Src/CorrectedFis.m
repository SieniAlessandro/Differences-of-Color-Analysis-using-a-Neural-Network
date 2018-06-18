function out = CorrectedFis(master,distance)
    fis = readfis('FIS');
    Lab = toLAB(master);
    lch = lab2lch(Lab);
    out = evalfis([lch distance],fis);
end 