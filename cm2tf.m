function [TP,FN,FP,TN] = cm2tf(CM)

numFolds = size(CM,3);

TP = reshape(CM(1,1,:),numFolds,1);
FN = reshape(CM(1,2,:),numFolds,1);
FP = reshape(CM(2,1,:),numFolds,1);
TN = reshape(CM(2,2,:),numFolds,1);