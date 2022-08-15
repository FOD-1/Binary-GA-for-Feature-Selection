function suru = suruUret(opts)
 
suru = zeros(opts.Nbirey, opts.Ngen);
for ind = 1:opts.Nbirey
    z = randperm(opts.Ngen, opts.NFeatures);
    suru(ind, z) = 1;
end
