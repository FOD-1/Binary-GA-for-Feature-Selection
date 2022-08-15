function [eniyi, maxud, spec, sens] = GAFeatureSelection(X, y, opts)

% Başlangıç sürüsünü oluştur
suru = suruUret(opts);

iter = 1;
while (1)
   
    % Başlangıç sürüsünün uygunluk değerleri hesapla
    ud =  uygunlukHesapla(X, y, suru, opts);
    %Baslangıçtaki en iyi çözüm
    [maxud, maxudInd] = max(ud.acc);
    spec = ud.spec(maxudInd);
    sens = ud.sens(maxudInd);
    eniyi = suru(maxudInd,:);

    fprintf("FeatureSize = %d - (Iter = %d | ACC = %2.4f)\n", opts.NFeatures, iter, maxud);

    if iter >=opts.maxIter || maxud >= 100
        break;
    end

    [anne, baba] = Secim(suru, opts.Nbirey-1, ud.acc, opts.secimYontemi);
    ySuru = Caprazlama(anne, baba, opts);
    ySuru = Mutasyon(ySuru, opts);
    suru = [eniyi; ySuru];
    
    iter = iter + 1;


end% while