% Extra function for q6
function temp1 = tempreature(f)
    
    temp = [];
    temp(:,1)=f;
    c = (f-32).*(5/9);
    temp(:,2) = c;
    temp1 = temp;

disp("The first column contains temp in F and the second contains the temp in C ");
disp(temp);