% CS 5810  -- Programming for data analysis 
%
%  Assignment 1 | Prof. Alberto Paccanaro
%
% 
% Insert BELOW your code for exercises 1, 5, 6
% NOTE THAT the templates for functions for exercises 2, 3 and 4 are provided in separate files.
%


%% ================== Exercise 1 ==================

load 'salesfigs.dat'
division1 = salesfigs(1,:)
division2 = salesfigs(2,:)
Quarter = [1:4]
Quarter = Quarter(1:4)
figure(1)
plot(Quarter,division1,'o',Quarter,division2,'*') %plotting for both the divisions.
axis([1,4,1.2,3]) %marking the axis




%% ================== Exercise 5 ==================


x = randi([20,35],1000)
y = randi([20,35],1000)
figure(2)
plot(x,y,'r*')
grid on
hold on %holding on the current plot for the next plots.
me = mean([3,5]) %calculating the mean
x = 1.*randn(1000)+ me
y = 1.*randn(1000)+ me
figure(2)
plot(x,y,'b*')
axis([-10,40,-5,40])



%% ================== Exercise 6 ==================


x = randn(3,10000)
positive = x(:,all(x>=0,1))
vec =  normc(positive) %making the verctor unit length.
figure(3)
p=plot3(vec(1,:),vec(2,:),vec(3,:),'r*')
grid on
rotate(p,[1 0 0],90) %rotating to get the desired output.


