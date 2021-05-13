
  CREATE TABLE unimolDocenti 
  (
   [Cognome] varchar(100) NOT NULL,
   [Nome] varchar(50) NOT NULL,
   Tornata int NOT NULL,
   Settore varchar(50),
   [Fascia] smallint NOT NULL,
   [Q] smallint NOT NULL,
   [Inizio] varchar(50) NOT NULL,
   [Fine] varchar(50),
   [Ateneo] varchar(50) NOT NULL,
   [Ruolo] varchar(100) NOT NULL,
   [SSD] varchar(50) NOT NULL,
   [Afferenza] varchar(150),
   UUID UNIQUEIDENTIFIER PRIMARY KEY default newsequentialid()
  )
  GO


  truncate table unimolDocenti;