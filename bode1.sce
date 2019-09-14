s=%s
num = 2*(1+2*s)*(1+0.05*s)
den=s*(((s^2)/6400)+1)*(1+0.25*s)
g=syslin('c',num,den)
bode(g)
show_margins(g)
[gm,fp]=g_margin(g)
[ph,fg]=p_margin(g)
pm=180+ph
