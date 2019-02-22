import sqlite3

# variable globale
DATABASE="./db.sqlite"

def query_db(query, args=(), one=False):
    # connecteur à la base de données
    db = sqlite3.connect(DATABASE)
    # sqlite de retourner les résultats dans un dictionnaire
    db.row_factory = sqlite3.Row
    # exécute ma requete args permet de faire passer des arguments a la requete
    cur = db.execute(query, args)
    # retourne tous les resultats
    row = cur.fetchall()
    # on ferme la connexion
    cur.close()

    # si one = True on fait ce qui a devant le if sinon row
    return (row[0] if row else None) if one else row