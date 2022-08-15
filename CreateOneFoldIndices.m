function [TrainIndices, TestIndices] = CreateOneFoldIndices(foldIndices,foldNumber)
% Creates training and test indices according to the fold number

TestIndices = foldIndices(:, foldNumber);
TrainIndices = foldIndices(:, [1:foldNumber-1  foldNumber+1:end]);

end
