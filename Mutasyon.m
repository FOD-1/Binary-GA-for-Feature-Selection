function suru = Mutasyon(suru, opts)

for ind = 1:size(suru,1)
    birey = suru(ind,:);
    birey1 = find(birey==1);
%     birey0 = find(birey==0);
    for k = birey1
        birey0 = find(birey==0);
        if rand <opts.mutasyonOrani
            nbirey0 = numel(birey0);
            r = randperm(nbirey0);
            birey(k)=0;
            birey(birey0(r(1))) =1;
        end
    end
    suru(ind,:) = birey;

end
% %Giri� s�r�s�nde hangi genlerin mutasyon olaca��n� belirle.
% ind = find(rand( size(suru) ) <= Pmut);
% 
% %Rastgele genlerden olu�an yeni bir s�r� �ret
% [Nbirey, Ngen] = size(suru);
% yeniSuru = suruUret(Nbirey, Ngen);  
% 
% %Ba�lang��ta giri� s�r�s�n� aynen ��k��a al
% mutSuru = suru;
% 
% %��k�� s�r�s�nde belirlenen genleri rastgele genlerle de�i�tir.
% mutSuru(ind) = yeniSuru(ind);
% 
% end %function
% 
% 
