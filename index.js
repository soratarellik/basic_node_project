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

async function getWeatherBroadcast(nbrJour , lon , lat ){
    const apiRequest =`http://api.openweathermap.org/data/2.5/forecast/daily?lat=${lat}&lon=${lon}&cnt=${nbrJour}&appid=${WEATHER_API_KEY}`
    console.log(apiRequest)
    try{  
        const weather = await axios.get(apiRequest)
        console.log(weather.data.list);
        const weatherBroadcast = weather.data.list.map(dailyWeather =>{
            const timestamp = dailyWeather.dt*1000
           return { 
               date : moment(timestamp).format("DD/MM/YYYY") , 
               prevision : dailyWeather.weather 
            }
        })
        return weatherBroadcast
    }
    catch(err){console.log(err)}
}



let nbrJour = 3 ;
let lon = 2.48;
let lat = 42.8;

getWeatherBroadcast( nbrJour , lon , lat ).then((weatherResult)=>{
    console.log(weatherResult.map(r=>r.prevision))
})

// 3. RENDU
// Vous effectuerez un push sur le repertoire distant à partir de la branche actuelle . "git push origin [le nom de votre branche]"

            /*     cmd :> git push origin myName     */ 

