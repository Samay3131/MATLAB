function temp = mytemperature(n1,n2)

num1 = n1;
num2 = n2;
if num1<num2
    f = n1:n2;
    temp=tempreature(f);
else
    f = n2:n1;
    temp=tempreature(f);

end



