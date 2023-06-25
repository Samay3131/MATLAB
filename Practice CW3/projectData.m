function Z = projectData(Xmu,U,K)
    Z = Xmu * U(:,1:K);
end