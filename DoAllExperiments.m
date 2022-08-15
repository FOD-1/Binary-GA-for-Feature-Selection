function metrics = DoAllExperiments(X, y, opts)
% Trains the model for the number of Experiments

% metrics = zeros(opts.numExperiments,1);

Expacc = zeros(1,opts.numExperiments);
Expspec = zeros(1,opts.numExperiments);
Expsens = zeros(1,opts.numExperiments);

parfor ExpNumber= 1:opts.numExperiments
    
    CM = DoAllFolds(X, y, opts,ExpNumber);
    [TP,FN,FP,TN] = cm2tf(CM);
    Expacc(ExpNumber) = mean(CalculateAccuracy(TP,FN,FP,TN));
    Expspec(ExpNumber) = mean(CalculateSpecificity(FP,TN));
    Expsens(ExpNumber) = mean(CalculateSensitivity(FP,TN));

end % for

metrics.acc = mean(Expacc);
metrics.spec = mean(Expspec);
metrics.sens = mean(Expsens);

end % function