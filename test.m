s=tf('s');
zeta=ostozeta(20.5);
Gs12=1/((s)*(s+8)*(s+25));
Gs13=(s+9.5305)/((s)*(s+8)*(s+25));
rlocus(Gs12,Gs13)
sgrid(zeta,0)