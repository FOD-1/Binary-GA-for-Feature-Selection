function SENS = CalculateSensitivity(FP,TN)

SENS =  TN./(TN+FP);

