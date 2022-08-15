function val = DoOneFold(X, y, TrainIndices,TestIndices,Classifier)
% Trains the model with the selected train and test indices

XTest = X(TestIndices,:);
yTest = y(TestIndices);

XTrain = X(TrainIndices(:),:);
yTrain = y(TrainIndices(:));

switch lower(Classifier)

    case 'knn'
        mdl = fitcknn(XTrain, yTrain, 'NumNeighbors',3);
        yTest_mdl = predict(mdl, XTest);

    case 'svm'
        mdl = fitcsvm(XTrain, yTrain);
        yTest_mdl = predict(mdl, XTest);
    case 'ensemble'
        mdl = fitcensemble(XTrain, yTrain);
        yTest_mdl = predict(mdl, XTest);
    case 'tree'
        mdl = fitctree(XTrain, yTrain);
        yTest_mdl = predict(mdl, XTest);

    otherwise
        error('DoOneFold --> Unknown Classifier!');

end % Switch

val= confusionmat(yTest_mdl,yTest');
% loss = crossentropy(yTest_mdl,yTest');
