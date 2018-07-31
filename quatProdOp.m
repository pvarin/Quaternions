function q_ = quatProdOp(q)
    q_ = eye(4,4)*q(1);
    q_ = q_ + [       0,        -q(2:4)';
               q(2:4), crossMat(q(2:4))];
end