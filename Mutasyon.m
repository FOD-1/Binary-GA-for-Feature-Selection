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
% %Giriş sürüsünde hangi genlerin mutasyon olacağını belirle.
% ind = find(rand( size(suru) ) <= Pmut);
% 
% %Rastgele genlerden oluşan yeni bir sürü üret
% [Nbirey, Ngen] = size(suru);
% yeniSuru = suruUret(Nbirey, Ngen);  
% 
% %Başlangıçta giriş sürüsünü aynen çıkışa al
% mutSuru = suru;
% 
% %Çıkış sürüsünde belirlenen genleri rastgele genlerle değiştir.
% mutSuru(ind) = yeniSuru(ind);
% 
% end %function
% 
% 
