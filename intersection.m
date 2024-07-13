

zeta22 = ostozeta(30);
sys = zpk([],[-5 -11 0],1);
rlocus(sys)
zeta = zeta22; % damping ratio
sgrid(zeta,0) % radial line