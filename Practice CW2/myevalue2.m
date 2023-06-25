built_in_e = exp(1);
n =0;
approx = 0;

i=(built_in_e - approx);
while i >= 0.001
    approx =approx + (1./ factorial(n));
    i=built_in_e - approx;  
    n=n+1;
end

fprintf("The approx value of e is %.4f \n",approx);
fprintf("Built in value e is %.4f \n",built_in_e);
fprintf("The value of required n is %d \n",n);