module.exports = {
  server: {
    port: 8000,
    protocol: 'http',
    host: 'localhost',
    webpackPort: 8080
  },
  knex: {
    connection: {
      host: 'localhost',
      user: 'postgres',
      password: 'postgres',
      database: 'quoslive'
    },
    debug: false
  },
  auth: {
    jwtSecret: 'notSoImportantSecretBecauseThisIsADevServer'
  },
  env: {
    NODE_ENV: 'development',
    MAPBOX_KEY: 'pk.eyJ1IjoiZ2x1Y3J5IiwiYSI6ImNqdGJudm5rdjBocWE0M3BmZHlxbmp3MXoifQ.nN5DiDoQHYDvxCPzyWcrSw',
    SERVER_PROTOCOL: 'http'
  },
  nodemailer: {
    port: 25,
    host: '192.168.203.122',
    secure: false,
    ignoreTLS: true
  },
  mqtt: {
    host: '192.168.203.114',
    port: 1883,
    channel: {
      quosAir: 'qa_dl',
      quosBin: 'qb_dl',
      quosPark: 'qp_dl'
    }
  }

};
