function [anne, baba] = SecimRoulette(suru, Nab, uygunlukDegerleri)


Ngen = size(suru,2);
anne = zeros(Nab, Ngen);
baba = zeros(Nab, Ngen);

for i=1:Nab
    
    %Anneyi belirle
    udNormalize = uygunlukDegerleri / sum(uygunlukDegerleri);
    udArtimsal = cumsum(udNormalize); %Cumulatif sum
    anneInd = 1 + sum(rand >= udArtimsal);
    anne(i,:) = suru(anneInd,:);
    
    %Babayi belirlemek icin anneyi suruden cikar
    suru(anneInd,:) = [];
    uygunlukDegerleri(anneInd) = [];
    
    %Babayi belirle
    udNormalize = uygunlukDegerleri / sum(uygunlukDegerleri);
    udArtimsal = cumsum(udNormalize); %Cumulatif sum
    babaInd = 1 + sum(rand >= udArtimsal);
    baba(i,:) = suru(babaInd,:);
    
end %for

end %function
    