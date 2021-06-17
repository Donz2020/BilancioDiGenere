SELECT 

Tornata,
Ruolo,
Cognome_e_Nome,
Genere
      
  FROM unimol_cineca_merge
  where Tornata BETWEEN 2012 AND 2016 AND  Genere = 'M'

  order by Cognome_e_Nome ASC