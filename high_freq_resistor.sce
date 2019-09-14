f = 10^4:10^5:10^10
w = 2*%pi*f
mu0 = 4*%pi*10^-7;
l = 2*2.5*10^-2;
a = 2.032*10^-4;


temp = log(2*l/a)/log(%e);
lex = mu0*l*(temp-1)/(2*%pi);


r = 2*10^3;
c = 5*10^-12;
z = lex*%i*w + 1 ./(w*c*%i+1/r)
plot2d("ll", f,abs(z));
