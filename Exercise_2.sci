//start a file with
clear
//input
xn = [1 2 -1 3 2]
xorigin = 3
k = 2
// some functions for tasks
function [yn, yorigin] = advance(xn, xorigin, k)
//condition for input
    if k > 0 then
        yorigin = xorigin + k
        if yorigin > size(xn) then
            // add more zero vectors if overflow
            yn = cat(2, xn, zeros(1:(yorigin - size(xn,"c"))))
        else
            // no overflow, y is same as x
            yn = xn
        end
        
    else
        yn = 0
        yorigin = -1
        halt('ERROR: Enter k > 0 or using the delay function')
    end
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
[yn, yorigin] = advance(xn, xorigin, k)
clf 
subplot(2,1,1);
draw_plot(xn, xorigin, x_label = "n", y_label = "x(n)", plot_title = "x(n)")
subplot(2,1,2)
draw_plot(yn, yorigin, x_label = "n", y_label = "y(n)", plot_title = "y(n) = x(n+k), k = "+string(k))
