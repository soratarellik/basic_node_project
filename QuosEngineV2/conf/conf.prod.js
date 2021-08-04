module.exports = {
  server: {
    port: 8000,
    protocol: process.env.SERVER_PROTOCOL,
    host: process.env.SERVER_HOST,
    webpackPort: process.env.PORT_HTTPS,
    outsidePort: process.env.PORT_HTTPS
  },
  cronServer: {
    port: 8443,
    protocol: 'http',
    host: 'localhost',
    webpackPort: 9090
  },
  knex: {
    connection: {
      host: "192.168.203.111",
      user: "quosadmin",
      password: "QUO$_TRBZF45452",
      database: "QUOS"
    },
    debug: false
  },
  auth: {
    jwtSecret: process.env.AUTH_JWT_SECRET
  },
  env: {
    NODE_ENV: 'production'
  },
  nodemailer: {
    port: process.env.MAILER_PORT,
    host: process.env.MAILER_HOST,
    secure: false,
    ignoreTLS: true
  },
  mqtt: {
    host: process.env.MQTT_HOST,
    port: process.env.MQTT_PORT,
    channel: process.env.MQTT_CHANNEL
  }
};
