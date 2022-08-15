%--------------------------------------------------------------------------
%function fit = objfunction(X,y,feat,numFolds,numExperiments,mdl_type,Nmembers)
%--------------------------------------------------------------------------
% Output parameter
%--------------------------------------------------------------------------
% fit: Fitness value.
%--------------------------------------------------------------------------
%Input Parameters
%--------------------------------------------------------------------------
%X:feature matrix
%y:label matrix
%feat: selected features.
%numFolds: number of fold used for cross-validation
%numExperiments: the number of times the experiment will be done
%--------------------------------------------------------------------------
%Calculates the fitness value of the selected features.
function fit = objfunction(X,y,opts)

% costacc = zeros(1,opts.Nbirey);
% Calculate the fitness value by using the selected features
metrics = DoAllExperiments(X, y, opts);
% costacc=metrics;
fit.acc = 100.*metrics.acc;
fit.spec = 100.*metrics.spec;
fit.sens = 100.*metrics.sens;
