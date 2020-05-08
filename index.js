const axios = require('axios');
const moment = require('moment');
const WEATHER_API_KEY = "10e295f3e3f3b5cdde7ea86fc5c6d5b2"
var http = require('http');


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

function getDataWeather(latitude,longitude,nbJour,apiKey) {
    return new Promise((resolve, reject) => {
        axios.get('http://api.openweathermap.org/data/2.5/forecast/daily?lat=35&lon=139&cnt=10&appid=10e295f3e3f3b5cdde7ea86fc5c6d5b2')
            .then(response => {
                resolve(response);
            }).catch(e => {
                reject(e);
            })
    });
};

function convertKelvinToCelsius(kelvin) {
    if(kelvin < (0)){
        return 'below absolute zero (0 K)'
    } else {
        return Math.round(1000*(kelvin-273.15))/1000;
    }
}

async function getWeatherBroadcast(latitude,longitude,nbJour) {

    let object = {
        city:{
           id:1851632,
           name:"Shuzenji",
           coord:{
              lon:138.9333,
              lat:34.9667
           },
           country:"JP",
           population:0,
           timezone:32400
        },
        cod:"200",
        message:2.947128,
        cnt:1,
        list:[
           {
              dt:1588903200,
              sunrise:1588880781,
              sunset:1588930478,
              temp:{
                 day:290.01,
                 min:287.68,
                 max:290.01,
                 night:287.68,
                 eve:290.01,
                 morn:290.01
              },
              feels_like:{
                 day:288.13,
                 night:285.58,
                 eve:288.13,
                 morn:288.13
              },
              pressure:1019,
              humidity:65,
              weather:[
                 {
                    id:803,
                    main:"Clouds",
                    description:"broken clouds",
                    icon:"04n"
                 }
              ],
              speed:2.84,
              deg:234,
              clouds:66
           }
        ]
     };

    object = await getDataWeather(latitude,longitude,nbJour,WEATHER_API_KEY);

    

    const daysWeather = object.list;
    const today = new Date();
    const result = [];
    for (let i = 0; i < daysWeather.length; i++) {

        const dateW = new Date();
        const weather = {
            date: moment(dateW).format("DD/MM/YYYY"),
            prevision: "Temperature moyenne :" + convertKelvinToCelsius(daysWeather[i].temp.day) + ", Temperature min:" + convertKelvinToCelsius(daysWeather[i].temp.min) + ", Temperature max:" + convertKelvinToCelsius(daysWeather[i].temp.max) + ", Humidité : " +  daysWeather[i].humidity + ", Météo : " + daysWeather[i].weather[0].main + ""
        }
        result.push(weather)
    }

    return result
}



http.createServer(function (req, res) {
    res.writeHead(200, {'Content-Type': 'text/html'});
    res.write("The date and time are currently: ");

    getWeatherBroadcast(35,139,10);

    res.end();
  }).listen(8080); 


// 3. RENDU
// Vous effectuerez un push sur le repertoire distant à partir de la branche actuelle . "git push origin [le nom de votre branche]"

