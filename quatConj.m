function q_ = quatConj(q)
    q_ = q;
    q_(2:4) = -q(2:4);
end