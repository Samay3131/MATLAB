function word = uniqueword(str)

global cnt;

if isempty(cnt)
    cnt = 1;
end
if cnt <=5
    fprintf(strcat(str,num2str(cnt)))
    cnt =cnt+1;
else
    fprintf("5 words have already been created")
    clear all
end

% str = input("Enter a string",'s')
% uniqueword(str)