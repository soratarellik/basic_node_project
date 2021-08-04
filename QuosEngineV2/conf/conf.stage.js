module.exports = {
  server: {
    port: 5050,
    protocol: 'http',
    host: process.env.SERVER_HOST,  
    webpackPort: 5000,
  },
  cronServer: {
    port: 9001,
    protocol: 'http',
    host: 'localhost',
    webpackPort: 9091
  },
  knex: {
    connection: {
      host: '192.168.203.129',
      user: 'quoslive-stage',
      password: 'v4957p8bl516mr1zeoo8rn47si5iyp3ao62qgostpz7l0fveb0zxi2545zhkrrek',
      database: 'quoslive-stage'
    },
    debug : false
  },
  auth: {
    jwtSecret: 'notSoImportantSecretBecauseThisIsAStageServer'
  },
  env : {
    NODE_ENV : 'stage',
  },
  nodemailer: {
    port : process.env.MAILER_PORT , 
    host : process.env.MAILER_HOST , 
    secure : false,
    ignoreTLS : true,
   },
   mqtt : { 
     host: '192.168.203.114', 
     port: 1883 ,
     channel : {
       quosAir : 'qa_dl',
       quosBin : 'qb_dl',
       quosPark : 'qp_dl',
     }
    }
};
