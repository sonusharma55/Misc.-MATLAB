fcut = 5;//hz
n = 7;//Filter order
hc1 = analpf(n,'cheb1',[0.1 0],fcut*2*%pi);
hc2 = analpf(n,'cheb2',[0 0.1],fcut*2*%pi);
he = analpf(n,'ellip',[0.1 0.1],fcut*2*%pi);
hb = analpf(n,'butt',[0 0],fcut*2*%pi);
hc1.dt='c';
hc2.dt='c';
he.dt='c';
hb.dt='c';
clf();
[fr, hf] = repfreq(hc1,0,15);
plot(fr,abs(hf),'b')
[fr,hf]=repfreq(hc2,0,15);
plot(fr,abs(hf),'g')
[fr,hf]=repfreq(he,0,15);
plot(fr,abs(hf),'r')
[fr,hf]=repfreq(hb,0,15);
plot(fr,abs(hf),'c')
legend(["Chebyshev I","Chebyshev II","Elliptic","Butterworth"]);
xgrid()
xlabel("Frequency(Hz)")
ylabel("Gain")
title("Analog filters of order 7")
