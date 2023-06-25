%load statement for file 1

fid = fopen('RedRidingHood.txt');
F1 = textscan(fid, '%s');
fclose(fid);

s1 =lower(string(F1{1}));

%load statement for file 2
fid = fopen('Cinderella.txt');
F2 = textscan(fid, '%s');
fclose(fid);

s2 =lower(string(F2{1}));

%load statement for file 3
fid = fopen('PrincessPea.txt');
F3 = textscan(fid, '%s');
fclose(fid);

s3 =lower(string(F3{1}));

%load statement for file 4

fid = fopen('CAFA1.txt');
F4 = textscan(fid, '%s');
fclose(fid);

s4 =lower(string(F4{1}));

%load statement for file 5

fid = fopen('CAFA2.txt');
F5 = textscan(fid, '%s');
fclose(fid);

s5 =lower(string(F5{1}));

%load statement for file 6
fid = fopen('CAFA3.txt');
F6 = textscan(fid, '%s');
fclose(fid);

s6 =lower(string(F6{1})); %converting thr string in lower case to avoid case sensityvity for  words.

corpus = unique(cat(1,s1,s2,s3,s4,s5,s6));  %creating corpus of unique words only.

%Term frequency calculation
TF = [];

for i = 1:length(corpus)
    TF(i,1) = sum(strcmpi(corpus(i),s1));
    TF(i,2) = sum(strcmpi(corpus(i),s2));
    TF(i,3) = sum(strcmpi(corpus(i),s3));
    TF(i,4) = sum(strcmpi(corpus(i),s4));
    TF(i,5) = sum(strcmpi(corpus(i),s5));
    TF(i,6) = sum(strcmpi(corpus(i),s6));
    
end

%IDF calculation
idf = zeros(length(corpus),1);

for i = 1:length(corpus)
    idf(i) = log10(6/nnz(TF(i,:))); %calculation for non zero elements.
end

tf_idf =TF .* idf; %calculating TF-IDF.


%calculation for cosine distances. The result of this will be stored in a 6x6 matrix
cos_dist = [];
for i = 1:6
    for j = 1:6
        cos_dist(i,j) = dot(tf_idf(:,i),tf_idf(:,j))./(sqrt(dot(tf_idf(:,i),tf_idf(:,i))).*sqrt(dot(tf_idf(:,j),tf_idf(:,j))));
        cos_dist(i,j) = 1 - cos_dist(i,j);  
    end
end

%plottinf of heatmap.
imagesc(cos_dist);
colormap(gray);
colorbar;
title('Cosine Distance');


