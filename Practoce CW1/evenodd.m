% CS 5810  -- Programming for data analysis 
%
%  Assignment 1 | Prof. Alberto Paccanaro
%
% 
% Insert BELOW your function for exercise 4 

function number = evenodd(n)
v = randi([0,30],1,n)
odd_index_elements = v(1:2:n) %Finding out the odd position elements
numbers = odd_index_elements(rem(odd_index_elements,2)==0) % cheking if the elements are even
fprintf(numbers)

%Input from users
% n = input('Enter the value of n','d')
% evenodd(n)


