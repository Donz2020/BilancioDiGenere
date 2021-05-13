import pandas as pd
import sys

default_url = 'https://service.unimol.it/asn/view.php?tornata=&fascia=&quadrimestre=&settore=&cognome=&nome=&ateneo=camerino&afferenza=&match=contiene&per_page=20&submit=&page='
filePath = sys.argv[1]
fileName = sys.argv[2]

last_table = pd.DataFrame(
    {
        "Cognome": [],
        "Nome": [],
        "Tornata": [],
        "Settore": [],
        "Fascia": [],
        "Q": [],
        "Inizio": [],
        "Fine": [],
        "Ateneo": [],
        "Ruolo": [],
        "SSD": [],
        "Afferenza": [],
        },
    )

for i in range(1,14):
    url = default_url + str(i)
    table = pd.read_html(url)[0]
    if(last_table.empty):
        last_table = table
    else:
        last_table = last_table.append(table, ignore_index=True, verify_integrity=False, sort=False)


last_table.to_excel(f'{filePath}/{fileName}')