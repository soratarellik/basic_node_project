const axios = require('axios');
const moment = require('moment');
const WEATHER_API_KEY = "10e295f3e3f3b5cdde7ea86fc5c6d5b2"



// Test d'aptitude JavaScript société QUOS \\

// 1. INSTALLATION
// 1.1 Creer une branche GIT a votre nom a partir de la branche master

            /*     cmd :> git branch myName     */ 


// 1.1 Se placer sur la nouvelle branche dernierement créé . 
            
            /*     cmd :> git checkout myName     */ 

// 1.2 Lancer l'installation des packages avec la commande "npm install"

            /*     cmd :> npm install     */ 


// 2. EXERCICE

// Le but de l'exercice est de creer une fonction nommé getWeatherBroadcast() permettant de recuperer la meteo sur les prochains jours .
// La fonction devra avoir en arguments d'entrées le nombre de jours de previsions , et une position geographique sous la forme d'un couple longitude , latitude ,
// et retournera un tableau d'objet de la forme [ { date : "xx/xx/xxxx" , prevision : "blabla" } , {...} , {...} ]  .
// En vous aidant de la documentation de L'API que vous trouverez à l'url suivante https://openweathermap.org/api ,vous aurez une heure pour realiser cette fonction . 

// 3. RENDU
// Vous effectuerez un push sur le repertoire distant à partir de la branche actuelle . "git push origin [le nom de votre branche]"


function getWeatherBroadcast(nb_jours, position){
	var cpt;
	cpt = 0;
	while (cpt < nb_jours){

	}
	return array;
}

var request = new XMLHttpRequest();

request.open('GET', 'http://api.openweathermap.org/data/2.5/forecast?id=524901&APPID={'+WEATHER_API_KEY+'}', true);
request.onload = function () {
  // Begin accessing JSON data here
  var data = JSON.parse(this.response);

  if (request.status >= 200 && request.status < 400) {
    data.forEach((weather) => {
      console.log(weather);
    })
  } else {
    console.log('error');
  }
}

request.send();


//Récupérer les informations de la météo via l'API
//Traitement des données et pour le nb_jours de prévision, afficher le tableau de retour demandé
