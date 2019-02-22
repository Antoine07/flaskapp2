# Installation

```bash
# virtualisation
# sous Mac et Linux
source env/bin/activate

# Dans cmder pour Windows
.\\Scripts\\activate.bat

# installation de flask dans l'environement
pip install flask

# dépendances du projet
pip list > requirements.txt

# Windows
set FLASK_APP=run.py
set FLASK_ENV=development

# Mac ou Linux
export FLASK_APP=run.py
export FLASK_ENV=development

# Lancer Flask
flask run

```

## Désactivation du virtualisation

```bash

# Mac ou Linux
deactivate

# Dans cmder pour Windows
.\\Scripts\\deactivate.bat

# Suppression du dossier d'environement
rm -rf env

# Pour désactiver l'environement
deactivate

# Dans cmder pour Windows
.\\Scripts\\deactivate.bat

```