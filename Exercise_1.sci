// start with a file
clear
//function
//function for ex1.1
function y = f(x)
    col = length(x(1,:));
    row = length(x)/col;
    
    for i = 1:row
        for j = 1: col
        y(i,j) = x(i,j)+1;
        
        end
    
    end

endfunction
//function for ex1.2
function z = g(x,y)
    col_x = length(x(1,:));
    row_x = length(x)/col_x;
    col_y = length(y(1,:));
    row_y = length(y)/col_y;
    
    if(col_x <> col_y | row_x <> row_y) then z = %F;
    else
        for i = 1:row_x
            for j = 1:col_x
                z(i,j) = x(i,j) * y(i,j);
                
            end
            
        end
        
    end

endfunction
//function for ex1.3
function y = t(number_of_sample)
    x = linspace(0, %pi, number_of_sample+1);
    y = sin(x);
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
disp(Ex1)
disp(Ex2)
disp(Ex3)
//

