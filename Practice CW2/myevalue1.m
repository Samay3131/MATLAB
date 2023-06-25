built_in_e = exp(1);
n =0;

while ((1./built_in_e)-(1-(1./n)).^n>=0.0001)
    n = n+1;
end
approx = (1-(1./n)).^(-n);

fprintf("The approx value of e is %.4f \n",approx);
fprintf("Built in value e is %.4f \n",built_in_e);
fprintf("The value of required n is %d \n",n);

% the programm not seems to terminate