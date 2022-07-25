const express = require('express');
const router = express.Router();



// c'est ici qu'il faut developper l'API se referer à la doc 

router.get("/", (req, res, next) => {
    //si tu envoies des données dans les requetes elles se trouveront dans req.query ou req.body selon la requete effectué "query" pour GET,  "body" pour POST
    //req represente la requete
    //res la reponse (voir les methodes dans la doc. La methode que tu vas utiliser vas etre "send" comme dans l'exemple ci dessous)
    // next c'est pour enchainé les fonction comme celle ci les une à la suite des autres.
    const payload = req.query || req.body;
    console.log(payload);


    res.send({ message: "Bonjour Luis" })
});
router.get(/*Url de l'api  , Function */);


module.exports = router;
