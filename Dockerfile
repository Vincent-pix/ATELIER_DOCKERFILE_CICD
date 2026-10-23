# Dockerfile de l'application Flask - à compléter
#
# 1. Partir d'une image Python 3.12 légère       (FROM)
# 2. Se placer dans le dossier /app              (WORKDIR)
# 3. Copier requirements.txt puis installer les dépendances avec pip  (COPY, RUN)
# 4. Copier le code de l'application (main.py)   (COPY)
# 5. Indiquer le port utilisé par l'application : 4000  (EXPOSE)
# 6. Lancer l'application : python main.py       (CMD)


# Image Python 3.12 légère
FROM python:3.12-slim

# Dossier de travail
WORKDIR /app

# Copier les dépendances
COPY requirements.txt .

# Installer les dépendances sans conserver le cache pip
RUN pip install --no-cache-dir -r requirements.txt

# Copier le code de l'application
COPY main.py .

# Port utilisé par Flask
EXPOSE 4000

# Démarrer l'application
CMD ["python", "main.py"]
