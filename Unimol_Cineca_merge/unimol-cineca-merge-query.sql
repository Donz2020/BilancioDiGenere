
    CREATE TABLE unimol_cineca_merge
  (
   [Cognome_e_Nome] varchar(100) NOT NULL,
   [Genere] varchar(50) NOT NULL,
   Tornata int,
   Settore varchar(50),
   [Fascia] smallint,
   [Q] smallint,
   [Inizio] varchar(50),
   [Fine] varchar(50),
   [Ateneo] varchar(50),
   [Facolta] varchar(50),
   [Ruolo] varchar(100) NOT NULL,
   [SSD] varchar(50) NOT NULL,
   [Afferenza] varchar(150),
   [Servizio_prestato_in_altro_ateneo] varchar(50),
   UUID UNIQUEIDENTIFIER PRIMARY KEY default newsequentialid()
  )
  GO

