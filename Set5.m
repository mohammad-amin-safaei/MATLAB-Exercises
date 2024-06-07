a=0;
b=2;
x=(a+b)/2;
fx=exp(x)*cos(x)-x^2;
while abs(fx)>10^-10

    fb=exp(b)*cos(b)-b^2;
    if fx*fb<0
        a=x;
    elseif fx*fb>0
        b=x;
    else
        break
    end
    x=(a+b)/2;
    fx=exp(x)*cos(x)-x^2;
end
disp(x)


%%%%%%%%%%%%%%%%%
function y=f1(x)
y=exp(x).*cos(x)-x.^2

x=linspace(0,10,100)
figure
plot(x,f1(x),'r');
grid on
%%%%%%%%%%%%%%%

