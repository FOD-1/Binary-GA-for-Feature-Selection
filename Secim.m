function [anne baba] = Secim(suru, Nab, uygunlukDegerleri, secimYontemi)
% Genetik Algoritma ile kelime bulma uygulamas�na ait altprogram.
% Burada bir sonraki nesilin bireylerini olu�turacak olan
% anne ve baba bireyler se�ilir.
% �ki farkl� se�me y�ntemi kullan�labilir:
%
% 'roulette'    : �nceki neslin bireylerinin her birine uygunluk 
%                 de�erleri ile orant�l� se�ilme olas�l�klar� verilir.
%                 Bu olas�l�klara uygun �ekilde anne belirlenir. Anne
%                 olarak se�ilen birey pop�lasyondan ��kar�larak se�ilme
%                 olas�l�klar� yeniden hesaplan�r. Bundan sonra baba
%                 belirlenir.
%                
% 'tournament'  : �nceki neslin bireyleri aras�ndan rastgele say�da 
%                 birey i�eren bir alt grup belirlenir. Bu alt grubun en
%                 y�ksek uygunluk de�erine sahip iki bireyi anne ve baba
%                 olarak belirlenir.
%
% Mehmet Emin Y�KSEL, Kas�m-2017.
 

switch lower(secimYontemi)
    case 'roulette'
        [anne baba] = SecimRoulette(suru, Nab, uygunlukDegerleri);
    case 'tournament'
        [anne baba] = SecimTournament(suru, Nab, uygunlukDegerleri);
end %switch

end %function
