
// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

//""""Study of Convolution of two continuous time domain signals...
//...x1(t)=1 for t>=1 and t<=10...
//...x2(t)=1 for t>=2 and t<=10""""
clc;

t = 0:0.1:15;//Defining the length of time ''t''
l = max(size(t));//Finding the length of time
x1 = 1 .*(t>=1 & t<=10);//Defining the signal x1(t)
l1 = max(size(x1));//Finding the length of signal x1(t)
x2 = 1 .*(t>=2 & t<=10);//Defining the signal x2(t)
l2 = max(size(x2));//Finding the length of signal x2(t)
x3 = conv(x1,x2);//Finding the convolution of x1(t) & x2(t)
l3 = max(size(x3));//Finding the length of signal x3(t)
t1 = 0:l3-1;//Defining the length of time ''t1''
subplot(3,1,1);//Plot x1(t) versus t
plot(t,x1);
title("Signal x1(t)");
xlabel("t");
ylabel("x1(t)");
subplot(3,1,2);//Plot x2(t) versus t
plot(t,x2);
title("Signal x2(t)");
xlabel("t");
ylabel("x2(t)");
subplot(3,1,3);//Plot x3(t) versus t1
plot(t1,x3);
title("Signal x3(t)");
xlabel("t1");
ylabel("x3(t1)");
