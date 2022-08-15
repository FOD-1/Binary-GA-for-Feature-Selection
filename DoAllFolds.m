function CM = DoAllFolds(X, y,opts,ExpNumber)
% Trains the model for the number of folds

numVectors = size(X,1);
numFolds = opts.numFolds;
Classifier = opts.Classifier;
rngSeed = ExpNumber;

AllFoldIndices = CreateAllFoldIndices(numVectors,numFolds,rngSeed);

CM = zeros(2,2,numFolds);

parfor foldNumber= 1:numFolds

    [TrainIndices, TestIndices] = CreateOneFoldIndices(AllFoldIndices,foldNumber);
    confmat = DoOneFold(X, y, TrainIndices,TestIndices,Classifier);
    CM(:,:,foldNumber) = confmat;

end
