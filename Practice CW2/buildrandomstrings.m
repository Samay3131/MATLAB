function word = buildrandomstrings(n)

str = char(randi([int32('a'), int32('z')],1,abs(n)));
c = 0;
for i = 1:length(str)
    if n >0
        fprintf(str(1:i));
        fprintf(" ");
    else
        fprintf(str(1:length(str)-c));
        fprintf(" ");
        c=c+1;
        

    end
    
end
% n = input("Enter an int");
% buildrandomstrings(n)