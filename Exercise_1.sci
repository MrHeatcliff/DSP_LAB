// start with a file
clear
//function
//function for ex1.1
function y = f(x)
    y = x + 1;
endfunction
//function for ex1.2
function z = g(x,y)
    col_x = length(x(1,:));
    row_x = length(x)/col_x;
    col_y = length(y(1,:));
    row_y = length(y)/col_y;
    
    if(col_x <> col_y | row_x <> row_y) then z = %F;
    else 
        z = x.*y;
    end

endfunction
//function for ex1.3
function y = t(number_of_sample)
    x = linspace(0, %pi, number_of_sample);
    for i = 1:10
        if(sin(x(i))>%eps) then y(1,i) = sin(x(i));
            
        else y(1,i) = 0;
        end
        
    end
endfunction
//input
x1 = 1:4;
x2 = 1:4;
y2 = 5:8;
x3 = 10;
//cal


//output
Ex1 = f(x1);
Ex2 = g(x2,y2);
Ex3 = t(10);
disp("Answer of exercise 1:")
disp(Ex1)
disp("Answer of exercise 2:")
disp(Ex2)
disp("Answer of exercise 3:")
disp(Ex3)
//
