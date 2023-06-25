%---------------part 1---------------

%loading smalller set
load('pcadata.mat')
plot(X(:,1),X(:,2),'bo')
axis([0,7,2,8])
hold on 

%normalizing the data by substracting the mean from every culomn.
[Xmu, mu] = subtractMean(X);

%calculating covariance.
var = cov(Xmu);
[S,U] = myPCA(var) ; %U is a eigen vector where each column is a principal component and S contains the corresponding eigen values. 

%adding the means in  the data which were substracted earlier.
x1 =[0 U(1,1)] + mu(1,1); 
y1 =[0 U(2,1)] + mu(1,2);

y2 = [0 U(2,2)] + mu(1,2);
x2 = [0 U(1,2)] + mu(1,1);

%plotting
line(x1,y1 ,'Color','red');
hold on
line(x2, y2,'Color','green');
title('Datapoints and their 2 principle componants')

%projecting the first K eigen  vectors corresponding to the K largest eigenvalues.

K = 1;
Z = projectData(Xmu,U,K);

%projection of the first 3 points in the dataset

fprintf('the projection of the first 3 points are %f,%f,%f',Z(1:3, :))

Xrec = recoverData(Z, U, K, mu);
figure(2)
plot(X(:,1),X(:,2),'bo')
axis([0,7,2,8])
hold on 
plot(Xrec(:,1),Xrec(:,2),'r*')
title('Datapoints and their reconstruction')

%-------part 2--------------%

%loading larger set
load('pcafaces.mat')
figure(3)
displayData(X(1:100, :))

%normalizing the data by substracting the mean from every culomn.
[Xmu1, mu1] = subtractMean(X);

var1 = cov(Xmu1);
[S1,U1] = myPCA(var1); %U1 is a eigen vector where each column is a principal component and S1 contains the corresponding eigen values. 

%projecting the first K eigen  vectors corresponding to the K largest eigenvalues.
K = 200;

Z1 = projectData(Xmu1,U1,K);

Xrec1 = recoverData(Z1, U1, K, mu1);
figure(4)
subplot(1,2,1)
displayData(X(1:100, :))
title('Original Faces')
subplot(1,2,2)
displayData(Xrec1(1:100, :))
title('Recovered Faces')







