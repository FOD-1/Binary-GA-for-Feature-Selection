function foldIndices = CreateAllFoldIndices(numVectors,numFolds,rngSeed)
% Creates training and test indices according to the fold number

if nargin >2
    rng(rngSeed);
end

foldIndices = reshape(randperm(numVectors)', numVectors/numFolds, numFolds);

end