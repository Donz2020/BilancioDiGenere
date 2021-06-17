SELECT count(Cognome_e_Nome) as Cognome_e_Nome,
      Genere
      ,Tornata
FROM unimol_cineca_merge
WHERE Tornata = '2018' 

group by Genere,Tornata