function func = mysin(number1,number2)

color = input("Enter the code for colour red =r, blue =b , green = g ",'s');
shape = input("Enter the shape ",'s');

if color == 'r'
    if shape == '*'
        subplot(2,1,1);
        plot(sin(linspace(0,2.*pi,number1)),'r*-');
        grid on
        hold on
        subplot(2,1,2);       
        plot(sin(linspace(0,2.*pi,number2)),'r*-');
        grid on
    else
        subplot(2,1,1);
        plot(sin(linspace(0,2.*pi,number1)),'ro-');
        grid on
        hold on
        subplot(2,1,2);        
        plot(sin(linspace(0,2.*pi,number2)),'ro-');
        grid on
    end
end
if color == 'b'
    if shape == '*'
        subplot(2,1,1);
        plot(sin(linspace(0,2.*pi,number1)),'b*-');
        grid on
        hold on
        subplot(2,1,2);        
        plot(sin(linspace(0,2.*pi,number2)),'b*-');
        grid on
    else
        subplot(2,1,1);
        plot(sin(linspace(0,2.*pi,number1)),'bo-');
        grid on
        hold on
        subplot(2,1,2);        
        plot(sin(linspace(0,2.*pi,number2)),'bo-')
        grid on
    end
end
if color == 'g'
    if shape == '*'
        subplot(2,1,1);
        plot(sin(linspace(0,2.*pi,number1)),'g*-');
        grid on
        hold on
        subplot(2,1,2);
        plot(sin(linspace(0,2.*pi,number2)),'g*-');
        grid on
    else
        subplot(2,1,1);
        plot(sin(linspace(0,2.*pi,number1)),'go-');
        grid on
        hold on
        subplot(2,1,2);
        plot(sin(linspace(0,2.*pi,number2)),'go-');
        grid on
    end
end
end




% 
% number1 = input("Enter first number of points ");
% number2 = input("Enter second number of points ");
% mysin(number1,number2)