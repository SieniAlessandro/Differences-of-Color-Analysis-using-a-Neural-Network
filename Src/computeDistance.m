function dis = computeDistance(LAB1,LAB2)
     %dis = sqrt((LAB1(1) - LAB2(1))^2 +(LAB1(2) - LAB2(2))^2+(LAB1(3) - LAB2(3))^2);
     dis = norm(LAB1-LAB2);
end
