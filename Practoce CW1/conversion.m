% CS 5810  -- Programming for data analysis 
%
%  Assignment 1 | Prof. Alberto Paccanaro
%
% 
% Insert BELOW your function for exercise 3 


function areas = conversion(factor,value)

if factor == 'f' || factor == 'm' || factor == 'F' || factor == 'M'  
    if factor == 'f' || factor == 'F'  % loogic for feet input
    convert = value .* 3.2808 %conversion formula from feet to meters
    fprintf("The Value in meter is %f \n",convert)
    end
    if factor == 'm' || factor == 'M' % loogic for meter input
    convert = value ./ 3.2808 %conversion formula from meters to feet
    fprintf("The Value in feet is %f \n",convert)
    end
else
    fprintf("You have entered the incorrect factor, run the script again")
end


% factor = input('Enter the value for feet  or meter ','s')
% value = input('Enter the value to convert ')
% conversion(factor,value)
