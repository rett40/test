# Étape 1 : Utiliser une image Node.js officielle
FROM node:18

# Étape 2 : Définir le répertoire de travail
WORKDIR /usr/src/app

# Étape 3 : Copier les fichiers package.json et package-lock.json
COPY package*.json ./

# Étape 4 : Installer les dépendances
RUN npm install

# Étape 5 : Copier le reste de l'application
COPY . .

# Étape 6 : Exposer le port
EXPOSE 3000

# Étape 7 : Lancer l'application
CMD ["node", "app.js"]
