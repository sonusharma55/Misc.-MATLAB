s=%s
num = 4
den=s*(s^2+16*s+4)
g=syslin('c',num,den)
bode(g)
show_margins(g)
[gm,fp]=g_margin(g)
[ph,fg]=p_margin(g)
pm=180+ph
