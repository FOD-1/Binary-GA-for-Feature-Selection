function [anne baba] = Secim(suru, Nab, uygunlukDegerleri, secimYontemi)
% Genetik Algoritma ile kelime bulma uygulamasına ait altprogram.
% Burada bir sonraki nesilin bireylerini oluşturacak olan
% anne ve baba bireyler seçilir.
% İki farklı seçme yöntemi kullanılabilir:
%
% 'roulette'    : Önceki neslin bireylerinin her birine uygunluk 
%                 değerleri ile orantılı seçilme olasılıkları verilir.
%                 Bu olasılıklara uygun şekilde anne belirlenir. Anne
%                 olarak seçilen birey popülasyondan çıkarılarak seçilme
%                 olasılıkları yeniden hesaplanır. Bundan sonra baba
%                 belirlenir.
%                
% 'tournament'  : Önceki neslin bireyleri arasından rastgele sayıda 
%                 birey içeren bir alt grup belirlenir. Bu alt grubun en
%                 yüksek uygunluk değerine sahip iki bireyi anne ve baba
%                 olarak belirlenir.
%
% Mehmet Emin YÜKSEL, Kasım-2017.
 

switch lower(secimYontemi)
    case 'roulette'
        [anne baba] = SecimRoulette(suru, Nab, uygunlukDegerleri);
    case 'tournament'
        [anne baba] = SecimTournament(suru, Nab, uygunlukDegerleri);
end %switch

end %function
