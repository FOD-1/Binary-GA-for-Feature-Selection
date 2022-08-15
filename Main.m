tic
clear,clc;
load Healty_Endometrial.mat;

opts.numExperiments = 3;
opts.numFolds = 5;
opts.Classifier = "tree";

opts.secimYontemi = 'tournament';
opts.caprazlamaYontemi = 'uniform';
opts.mutasyonOrani = 0.05;
opts.maxIter = 50;
opts.Ngen = size(X,2);
opts.Nbirey = 50;
numFeatures = size(X,2);

%%
ACC = [];
SPEC = [];
SENS = [];

for i = 1: numFeatures-1

    opts.NFeatures = i;
    [eniyi, maxud, spec, sens] = GAFeatureSelection(X, y, opts);

    ACC= [ACC; maxud];
    SPEC = [SPEC; spec];
    SENS= [SENS; sens];
    writematrix(ACC,"AccuracyTreeEndo.csv");
    writematrix(SPEC,"SpecificityTreeEndo.csv");
    writematrix(SENS,"SensitivityTreeEndo.csv");
end

t1 = toc;
plot(1:234,ACC)

