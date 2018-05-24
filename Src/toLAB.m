function lab = toLAB(spec)

    MasterColorWl = 380:1:800;
    xyz = roo2xyz(spec','D65/2',MasterColorWl);
    lab = xyz2lab(xyz);
    
end 