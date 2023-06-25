% WRITE YOU CODE HERE 
function area1 = myplotarea(filename,n)
points = readmatrix(filename);
x = [points(:,2)]; %extracing column for x
y = [points(:,4)]; %extracing column for y
if length(x)< n
    disp("Error enter a valid value") %eooro message
else
    x_point=x(1:n);
    y_point=y(1:n);
    area(x_point,y_point,FaceColor="blue")
    xlabel('x')
    ylabel('y')
    title(n,'data points')

end

%myplotarea('pointsEx1.txt',4)