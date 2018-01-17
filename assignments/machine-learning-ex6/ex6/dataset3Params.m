function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

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

%size(X)
%size(y)
%size(Xval)
%size(yval)
%211     2
%211     1
%200     2
%200     1

%model= svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma));
x1 = X(:,1);
x2 = X(:,2);



%tmp = [];
%values = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];
%for ic=1:8
%  for is=1:8
%    cTmp = values(ic);
%    sTmp = values(is);
%    model= svmTrain(X, y, cTmp, @(x1, x2) gaussianKernel(x1, x2, sTmp));
%    tmpTmp = double(svmPredict(model, Xval));
%    result =mean(tmpTmp ~= yval);
%    tmp = [tmp; cTmp sTmp result];
%  end
%end
%tmp
%[least leastIndex] = min(tmp(:,3));
%tmp(leastIndex,:)

C= 1;
sigma = 0.1;

%C =  3
%sigma =  0.30000%

%Training ......................................................................
%...............................................................................
%.......................................................................... Done!%

%ans =  0.075000




% =========================================================================

end
