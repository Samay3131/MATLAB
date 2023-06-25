function traingle = calctrianglearea(points)
rem = mod(length(points),3);
t_points=points(1:length(points)-rem,:);

X = t_points(:,1);
Y = t_points(:,2);
area = [];
count = 1;
e = 1;


for i = 3:3:length(X)
    x = X(e:i);
    y = Y(e:i);
    a = ((x(1) - x(2)).^2 + (y(1)-y(2)).^2).^0.5;
    b = ((y(2) - y(3)).^2 + (y(2)-y(3)).^2).^0.5;
    c = ((y(1) - y(3)).^2 + (y(1)-y(3)).^2).^0.5;
 
    
    s = (a+b+c)./2;

    area(count) = (s.*((s-a).*(s-b).*(s-c))).^0.5;
    count = count+1;    
    e = e+3;
end
traingle = area;
disp("Area of the traingles are")
disp(area)

disp("The number of traingles for which the arrea is calculates are")
disp(count-1)

if rem ~=0
    rem_points = points(end-(rem-1):end,:);
    disp("The remaning points are")
    disp(rem_points)
end
end


% 
% n = input("Enter the number of points");
% points = randn(n,2);
% area = calctrianglearea(points);

