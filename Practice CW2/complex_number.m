function number = complex_number(R,I,S)
real = R;
imag = I;
index = S;

if length(real) == length(imag)

    s=struct('real',num2cell(real),'imag',num2cell(imag));

    real_part=[s(index).real];
    real_part_sum = sum(real_part);

    imag_part=[s(index).imag];
    imag_part_sum = sum(imag_part);

    complex_num = real_part_sum + (imag_part_sum).*(-1).^0.5;
else
    disp("Vectors length are not same")
end

disp("The structure of numbers are")
disp(s)
disp("The resulting complex number is")
disp(complex_num)


% R = [1,2,3,4,5,6];
% I = [10,20,30,40,50,60];
% S = [3 4 5];