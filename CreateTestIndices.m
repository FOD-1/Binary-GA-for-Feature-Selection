function [TrainIndices, TestIndices] = CreateTestIndices(numVectors,numFolds)

% Creates training and test indices according to the fold number
    %rng("default")
    % Randomluğu düzeltme
%     numVectors = size(X,1);
%     testIndices = reshape(randperm(numVectors)', numVectors/opts.numFolds, opts.numFolds);
%     TestIndices = testIndices(:, opts.numFolds);
%     TrainIndices = testIndices(:, [1:opts.numFolds-1  opts.numFolds+1:end]);

    testIndices = reshape(randperm(numVectors)', numVectors/numFolds, numFolds);
    TestIndices = testIndices(:, numFolds);
    TrainIndices = testIndices(:, [1:numFolds-1  numFolds+1:end]);
end
