# Verwende das offizielle Node.js 18 Alpine-Image
FROM node:18-alpine

# Setze das Arbeitsverzeichnis im Container
WORKDIR /app

# Kopiere die package.json und package-lock.json
COPY package*.json ./

# Installiere die Abhängigkeiten
RUN npm install

# Kopiere den Rest des Anwendungscodes
COPY . .

# Exponiere den Port 3000
EXPOSE 3000

# Starte die Anwendung im Entwicklungsmodus
CMD ["npm", "run", "dev"]
