function vr = quatRot(q,v)
    qv = [0;v];
    vr = quatProd(quatProd(q,qv),quatConj(q));
    vr = vr(2:4);
end