/****** Script per comando SelectTopNRows da SSMS  ******/
SELECT TOP (1000) 
      [Genere]
      ,[Tornata]
     
  FROM [sys].[dbo].[unimol_cineca_merge]

  where Tornata BETWEEN 2012 AND 2016 AND  Genere = 'M'

  order by Tornata ASC



  order by Cognome_e_Nome ASC




  select distinct (COUNT(Cognome_e_Nome))
  From sys.dbo.unimol_cineca_merge

  where Ruolo = 'Ricercatore' AND Genere = 'F' AND Tornata BETWEEN 2012 AND 2018