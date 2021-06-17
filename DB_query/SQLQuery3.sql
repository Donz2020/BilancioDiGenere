SELECT Inizio as time,
Ruolo,
COUNT(Cognome_e_Nome),
COUNT(Genere)
      
  FROM unimol_cineca_merge
  where Genere = 'M' AND Inizio >= 2012-01-01

  GROUP by Ruolo,Genere,Inizio