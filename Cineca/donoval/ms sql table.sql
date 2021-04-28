
  CREATE TABLE cinecaDocenti 
  (
   [Fascia] varchar(100) NOT NULL,
   [Cognome e Nome] varchar(50) UNIQUE NOT NULL,
   Genere varchar(50) NOT NULL,
   Facoltà varchar(50),
   [S.S.D.] varchar(50) NOT NULL,
   [S.C.] varchar(50) NOT NULL,
   [Struttura di afferenza] varchar(100) NOT NULL,
   [Servizio prestato in altro ateneo] varchar(50),
   UUID UNIQUEIDENTIFIER PRIMARY KEY default newsequentialid()
  )
  GO



