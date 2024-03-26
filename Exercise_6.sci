//start a file with
clear
//input
xn = [1 2 3 1]
xorigin = 1
hn = [1 2 1 -1]
horigin = 2
// some functions for tasks
function [yn, yorigin] = convolution (xn, xorigin, hn, horigin)
    yn = convol(xn, hn)
    yorigin = xorigin + horigin - 1
endfunction

function draw_plot(xn, xorigin, x_label, y_label, plot_title)
    n = 1:size(xn,"c")
    x = n - xorigin    
    y = xn
    rect = [x(1) - 0.5, min(y)-0.5, x(size(xn,"c"))+0.5, max(y) + 0.5] 
    nax = [0,-1,-1, -1]
    scatter(x, y, , "black", "fill")
    plot2d3(x, y, nax = nax, rect = rect)
    xgrid(color("grey75"), 1, 7)
    if ~exists("x_label","local") then
        x_label = ""
    end
    if ~exists("y_label","local") then
        y_label = ""
    end
    if ~exists("plot_title","local") then
        plot_title = ""
    end
    xlabel(x_label, "fontsize", 4.5, "color", "blue")
    ylabel(y_label, "fontsize", 4.5, "color", "seagreen")
    title(plot_title, "fontsize", 5, "color", "black")
endfunction
//calculate and draw plots
[yn, yorigin] = convolution (xn, xorigin, hn, horigin)
clf 
subplot(2,1,1);
draw_plot(xn,xorigin, "n", "x(n)", "x(n)")
subplot(2,1,2);
draw_plot(hn,horigin, "n", "h(n)", "h(n)")
f1 = scf(1)
clf
draw_plot(yn,yorigin, "n", "y(n)", ["y(n) = x(n)" "$*$" "h(n)"])
