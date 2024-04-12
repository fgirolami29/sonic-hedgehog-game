# Usa un'immagine di base che includa Node.js
FROM node:alpine

RUN mkdir -p /app
# Copia il resto del codice sorgente nel container
COPY ./app /app
# Imposta la directory di lavoro all'interno del container
WORKDIR /app

RUN apk add --no-cache git


RUN npm install -g webpack webpack-cli 
# Installa le dipendenze
RUN npm install


#RUN npm install webpack webpack-cli webpack-dev-server --save-dev

            

# Esponi la porta 3000 per il webpack-dev-server
EXPOSE 3000
# Avvia il webpack-dev-server quando il container viene avviato
CMD ["npm", "run" ,"dev"]

