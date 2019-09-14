clc;
n=0:20; %Defining length of discrete time
l=length(n) %Finding length of discrete time
x1 = 1.*(n>=1 & n<=10); %Defining first sequence x1(n)
l1 = length(x1) %Finding length of sequence x1(n)
x2 = 1.*(n>=2 & n<=10); %Defining first sequence x2(n)
l2 = length(x2) %Finding length of sequence x2(n)
x3 = conv(x1,x2); %Finding convolution of sequences x1(n) & x2(n)
l3 = length(x3) %Finding the length of sequence x3(n)
n1=0:l3-1; %Defining the length of discrete time for...
%...sequence x3(n)
subplot(3,1,1); %Plot 'x1(n)' versus 'n'
stem(n,x1);
title('Signal x1(n)');
xlabel('n');
ylabel('x1(n)');
subplot(3,1,2); %Plot 'x2(n)' versus 'n'
stem(n,x2);
title('Signal x2(n)');
xlabel('n');
ylabel('x2(n)');
subplot(3,1,3); %Plot 'x3(n)' versus 'n1'
stem(n1,x3);
title('Signal x3(n)');
xlabel('n1');
ylabel('x3(n1)');