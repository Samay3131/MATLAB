function word = wordscount(num,word)
n = num;
w = lower(word);
fid = fopen('RedRidingHood.txt');
C = textscan(fid, '%s');
fclose(fid);
s =lower(string(C{1}));
[cnt,str] = groupcounts(s);
[max_n, max_i] = maxk(cnt,n);

a = {max_n,str(max_i)};
disp("The a cell array containing the n most frequent words in the text")
celldisp(a)


word_c = length(find(ismember(s,w)));               
fprintf("The number of times the word : %s- appears in the text is :  %d",w,word_c);



% num = input("Enter the value of n ");
% word = input("Enter the word to find ",'s');
% wordscount(num,word)
