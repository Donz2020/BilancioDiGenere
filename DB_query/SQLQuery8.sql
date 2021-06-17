SELECT Tornata as time,
COUNT(Cognome_e_Nome) as Docenti,
Genere
      
  FROM unimol_cineca_merge
  where Genere = 'F' AND Tornata >=2012 AND Ruolo = 'Ricercatore'

  GROUP by Tornata,Genere