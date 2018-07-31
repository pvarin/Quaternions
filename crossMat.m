function C = crossMat(v)
    C = zeros(3,3);
    C(1,2) = -v(3); C(2,1) =  v(3);
    C(1,3) =  v(2); C(3,1) = -v(2);
    C(2,3) = -v(1); C(3,2) =  v(1);
end