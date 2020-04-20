import axios from 'axios';
import moment from 'moment';
const WEATHER_API_KEY = "10e295f3e3f3b5cdde7ea86fc5c6d5b2"



// Test d'aptitude JavaScript société QUOS \\


// 1. creer une branche GIT a votre nom a partir de la branche master
// 1.1 se placer sur la nouvelle branche dernierement créé . 

// 2. EXERCICE
// Le but de l'exercice est de creer une fonction nommé getWeatherBroadcast() permettant de recuperer la meteo sur les prochains jours
// cette fonction retournera un tableau d'objet de la forme [{date : "xx/xx/xxxx" , prevision : "blabla"}, {...} , {...}]

// la fonction devra avoir en arguments d'entrées le nombre de jours de previsions , et une position geographique sous la forme d'un couple longitude , latitude 
// en vous aidant de la documentation de L'API que vous trouverez à l'url suivante https://openweathermap.org/api ,vous aurez une heure pour realiser cette fonction . 
// ensuite vous effectuerais un push sur le repertoire distant à partir de la branche actuelle . 