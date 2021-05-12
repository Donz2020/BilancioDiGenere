from sqlalchemy.dialects.postgresql import UUID
from flask import Flask
from flask_sqlalchemy import SQLAlchemy
import uuid
import sys

DBServer = sys.argv[1]#'naschristian.ddns.net:5100'
Username = sys.argv[2]#'sa:Iosonoleggenda1'
DBName = sys.argv[3]#'pentaho'
Driver = 'ODBC Driver 17 for SQL Server'
DbConnString = f'mssql://{Username}@{DBServer}/{DBName}?driver={Driver}'

app = Flask(__name__)

app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
app.config['SQLALCHEMY_DATABASE_URI'] = DbConnString

db = SQLAlchemy(app)

unimolDocenti = db.Table("unimolDocenti",db.metadata, autoload = True, autoload_with = db.engine)

cinecaDocenti = db.Table("cinecaDocenti",db.metadata, autoload = True, autoload_with = db.engine)

class unimol_cineca_merge(db.Model):
    Cognome_e_Nome = db.Column(db.String(100))
    Genere= db.Column(db.String(50))
    Facolta= db.Column(db.String(50))
    Tornata= db.Column(db.Integer)
    Fascia= db.Column(db.Integer)
    Q= db.Column(db.Integer)
    SSD= db.Column(db.String(50))
    Settore= db.Column(db.String(50))
    Inizio= db.Column(db.String(50))
    Fine= db.Column(db.String(50))
    Ateneo= db.Column(db.String(50))
    Ruolo= db.Column(db.String(100))
    Afferenza= db.Column(db.String(150))
    Servizio_prestato_in_altro_ateneo= db.Column(db.String(50))
    UUID = db.Column(UUID(as_uuid=True), primary_key=True, default=uuid.uuid4)

docentiCineca = db.session.query(cinecaDocenti).all()

for docente in docentiCineca:
    x = docente.Cognome_e_Nome.split("\xa0")
    temp = db.session.query(unimolDocenti).filter_by(Cognome=x[0], Nome=x[1]).first()
    if temp is not None:
        merge = unimol_cineca_merge(Cognome_e_Nome=docente.Cognome_e_Nome, Genere=docente.Genere, Facolta=docente.Facolta, Tornata=temp.Tornata,Fascia=temp.Fascia, Q=temp.Q, Inizio=temp.Inizio, Fine=temp.Fine, Ateneo=temp.Ateneo, Ruolo=docente.Fascia, Afferenza=docente.Struttura_di_afferenza, Servizio_prestato_in_altro_ateneo=docente.Servizio_prestato_in_altro_ateneo, SSD=docente.SSD, Settore=docente.SC)
        db.session.add(merge)
    else:
        merge = unimol_cineca_merge(Cognome_e_Nome=docente.Cognome_e_Nome, Genere=docente.Genere, Facolta=docente.Facolta, Ruolo=docente.Fascia, Afferenza=docente.Struttura_di_afferenza, Servizio_prestato_in_altro_ateneo=docente.Servizio_prestato_in_altro_ateneo, SSD=docente.SSD, Settore=docente.SC)
        db.session.add(merge)

db.session.commit()