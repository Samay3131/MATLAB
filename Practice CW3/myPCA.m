function [S,U] = myPCA(var)

[V,D] = eig(var);
[d,ind] = sort(diag(D),'descend'); %sorting the data in descending order.
S = D(ind,ind);%eigen values
U = V(:,ind); %eigen vector
end