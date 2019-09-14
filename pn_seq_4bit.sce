clc;
clear all;
x=input('Enter the 4-Bit sequence: ');
d=length(x);
N=(2^d)-1;
disp('The Period of PN sequence is: ');
disp(N);
xoring=0;
disp("           x1 x2 x3 x4        xoring");
printf(' Initial    %d  %d  %d  %d       %d \n ',x(1),x(2),x(3),x(4),xoring);
for i=1:N
    printf('Shift %d \n',i);
    xoring(i)=bitxor(x(3),x(4));
    printf('                             %d \n ',xoring(i));
    x(4)=x(3);
    if(x(4)==1)
    dummy(i)=1
    else
    dummy(i)=-1;
    end
    x(3)=x(2);
    x(2)=x(1);
    x(1)=xoring(i);
    printf('            %d  %d  %d  %d \n ',x(1),x(2),x(3),x(4));
    plot2d3(x(4))
end
bar(dummy,0.2,'green');
xlabel ("Time","FontSize",5);
title("15-chip first m-sequence for one T period","FontSize",5);
