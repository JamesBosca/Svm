function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.


% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

A=[0.01,0.03,0.1,0.3,1,3,10,30];
S = [0.01,0.03,0.1,0.3,1,3,10,30];

error=zeros(length(A),length(S));

for j=1:length(S)
for i=1:length(A)
    
S(j)

  V1=X(:,1);
  V2=X(:,2);
model=svmTrain(X,y,A(i),@(V1, V2) gaussianKernel(V1, V2, S(j)));

predictions=svmPredict(model, Xval);

predictions

error(i,j)=mean(double(predictions ~= yval));


 
F(1,:)=[A(1), S(1), error(1,1)];
F(end+1,:)=[A(i), S(j), error(i,j)];

end

end

F=F(2:end,:);
size(F)
error


[~,I]=min(F(:,3));

I
F
C=F(I,1);
 
sigma=F(I,2);

% =========================================================================

end
