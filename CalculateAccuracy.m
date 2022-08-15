function ACC = CalculateAccuracy(TP,FN,FP,TN)

ACC =  (TP+TN)./(TP+TN+FP+FN);

