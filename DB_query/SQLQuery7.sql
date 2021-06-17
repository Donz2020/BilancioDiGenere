
SELECT Tornata as time,

COUNT(Cognome_e_Nome) as Cognome_e_Nome,
Genere
  FROM unimol_cineca_merge
  where  Tornata >=2012

  GROUP by Genere,Tornata

  ----------------------------
SELECT Tornata as time,
COUNT(Cognome_e_Nome) as Docenti

      
  FROM unimol_cineca_merge
  where Tornata >=2012 AND Ruolo = 'Ricercatore'

  GROUP by Tornata


  -----------------------------

  SELECT Tornata as time,
COUNT(Cognome_e_Nome) as Docenti,
Genere
      
  FROM unimol_cineca_merge
  where Genere = 'F' AND Tornata >=2012 AND Ruolo = 'Ricercatore'

  GROUP by Tornata,Genere
  ----------------------



  SELECT Tornata as time,
COUNT(Cognome_e_Nome) as Docenti_prima_fascia
  FROM unimol_cineca_merge
  where Tornata >=2012 AND Fascia = 1
  GROUP by Tornata

-------------------------------------

SELECT 
COUNT(Cognome_e_Nome) as Docenti_seconda_fascia_F
FROM unimol_cineca_merge
where Genere = 'F'  AND Fascia = 2

----------------------------------------

SELECT 
COUNT(Cognome_e_Nome) as Docenti_Ricercatori_F
FROM unimol_cineca_merge
where Genere = 'M' 


----------------------------

CREATE VIEW tornateDocenti AS
WITH params AS
(SELECT
COUNT(*) as Docenti_Ricercatori_F,
CAST(Tornata AS date) AS Anno
FROM unimol_cineca_merge
where Genere = 'F')

SELECT SUM(Docenti_Ricercatori_F) from tornateDocenti group




SELECT 
CAST(Tornata AS date) AS Tornata
from unimol_cineca_merge



SELECT
COUNT(*) as Docenti_Ricercatori_F,
CAST(Tornata AS date) AS Anno
FROM unimol_cineca_merge
where Genere = 'F'
group by Tornata


SELECT Tornata,
COUNT(*) as Docenti_Ricercatori_F,
CAST(Tornata AS datetime) as time
FROM unimol_cineca_merge
where Genere = 'F' AND Tornata IS NOT NULL
group by Tornata