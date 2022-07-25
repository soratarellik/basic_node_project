const express = require('express');
const http = require('http');
const { normalizePort } = require('./expressHelper');
const app = express();
const port = normalizePort(8888);
const server = http.createServer(app);

const textRouter = require('./router/textRouter')

// Test d'aptitude JavaScript société QUOS \\

// 1. INSTALLATION
// 1.1 Creer une branche GIT a votre nom a partir de la branche master

/*     cmd :> git branch myName     */

// 1.1 Se placer sur la nouvelle branche dernierement créé . 

/*     cmd :> git checkout myName     */

// 1.2 Lancer l'installation des packages avec la commande "npm install"

/*     cmd :> npm install     */



//CONFIGURATION
app.set('port', port); //défini le port d'écoute du serveur ici 8888
app.use(express.json()); // permet à express de lire et envoyer du JSON 



// TEXT API 
app.use('/text', textRouter); // base de l'API racine /text les sous URL sont a develloper dans le fichier ./router/textRouter.js



server.listen(port);


module.exports = app;