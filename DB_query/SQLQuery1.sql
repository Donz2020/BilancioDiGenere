SELECT
      Ruolo,
	  Genere
      ,COUNT (Cognome_e_Nome) as Numero_Docenti_Unicam
	  ,(COUNT(Cognome_e_Nome)* 100 / (select COUNT(*) From unimol_cineca_merge)) as Percentuale_Docenti_Unicam_Totale
  FROM unimol_cineca_merge
  group by Genere,Ruolo




  SELECT Ruolo,
COUNT(Cognome_e_Nome) as Numero_Docenti_Unicam,
(COUNT(Cognome_e_Nome)* 100 / (select COUNT(*) From unimol_cineca_merge)) as Percentuale_Docenti_Unicam
  FROM unimol_cineca_merge
  GROUP by Ruolo


SELECT 
      Genere
      ,Fascia
      ,COUNT (Cognome_e_Nome) as Cognome_e_Nome
	  ,(COUNT(Cognome_e_Nome)* 100 / (select COUNT(*) From unimol_cineca_merge)) as Percentuale_Docenti_Unicam
  FROM unimol_cineca_merge
  WHERE Fascia IS NOT NULL
  group by Genere,Fascia




  SELECT Ruolo,
  COUNT(Cognome_e_Nome) as Cognome_e_Nome
  FROM unimol_cineca_merge
  GROUP by Ruolo


  SELECT Genere,
count (Cognome_e_nome) as Cognome_e_Nome
FROM unimol_cineca_merge 
GROUP by Genere


SELECT Tornata
      ,Genere
      ,COUNT (Cognome_e_Nome) as Cognome_e_Nome
  FROM unimol_cineca_merge
  Where Ruolo = 'Ordinario' AND Tornata IS NOT NULL
  group by Genere,Tornata


  SELECT Tornata
      ,Genere
      ,Fascia
      ,Ruolo
      ,COUNT (Cognome_e_Nome) as Cognome_e_Nome
  FROM unimol_cineca_merge
  Where Ruolo like 'Ricerca%' AND Tornata IS NOT NULL AND Fascia IS NOT NULL
  group by Genere,Fascia,Tornata,Ruolo


  SELECT Tornata
      ,Genere
      ,COUNT (Cognome_e_Nome) as Cognome_e_Nome
  FROM unimol_cineca_merge
  Where Ruolo = 'Ordinario' AND Tornata IS NOT NULL
  group by Genere,Tornata