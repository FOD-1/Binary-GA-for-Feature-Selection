function [anne, baba] = SecimTournament(suru, Nab, uygunlukDegerleri)


[Nbirey, Ngen] = size(suru);
anne = zeros(Nab, Ngen);
baba = zeros(Nab, Ngen);

for i=1:Nab
    
    %Alt suruyu belirle
    Ngrup = 2 + floor( rand * (Nab-1) ); % 2 <= Ngrup <= Nab
    grupInd = randperm(Nbirey);
    grupInd = grupInd(1:Ngrup);
    altSuru = suru(grupInd,:);
    altUD = uygunlukDegerleri(grupInd);
    
    %Alt surunun en iyi iki bireyini belirle
    [altUD, ind] = sort(altUD, 'descend');
    anne(i,:) = altSuru(ind(1),:);
    baba(i,:) = altSuru(ind(2),:);
        
end %for

% anne = logical(anne);
% baba = logical(baba);

end %function
    