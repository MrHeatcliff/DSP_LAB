//start a file with
clear


// draw one curve in one plot
function y=f(x)
    y=(x^2+2*x)*exp(-x)
endfunction 
x=linspace(-2,5,50); 
plot(x,f)

// draw two curve in two plot
function y=g(x) 
    y=sin(x/2) 
endfunction 
x=linspace(-2,5,50);
clf
plot(x,f,"r",x,g,"g")


