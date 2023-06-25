% WRITE YOU CODE HERE

function [Xmu,mu] = subtractMean(X)

Xmu = X -mean(X); %returning the normalised data
mu = mean(X,1) ; %returning mean for each column.

end