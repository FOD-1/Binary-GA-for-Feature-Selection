function uygunlukDegerleri = uygunlukHesapla(X, y, suru, opts)

for ind = 1:opts.Nbirey
    result = objfunction(X(:,suru(ind,:)==1),y,opts);
    acc(ind) = result.acc;
    spec(ind) = result.spec;
    sens(ind) = result.sens;
end % for

uygunlukDegerleri.acc = acc;
uygunlukDegerleri.spec = spec;
uygunlukDegerleri.sens = sens;

end % function