function suru = CaprazlamaUniform(anne, baba, opts)

Nyavru = size(anne,1);
suru = zeros(size(anne));

for i = 1:Nyavru
    yavru = or(anne(i,:),baba(i,:));
    YavruBir = find(yavru==1);
    nYavruBir = numel(YavruBir);
    YavruBirKarisik = YavruBir( randperm(nYavruBir) );
    yavru( YavruBirKarisik(1:end-opts.NFeatures) ) = 0;
    suru(i,:) = yavru;
end

end % function