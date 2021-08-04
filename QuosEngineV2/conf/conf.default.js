module.exports = {
  server: {
    apiBasePath: '/api-v1'
  },
  cronServer: {
    apiBasePath: '/cron-manager'
  },
  webpack: {
    port: 8080
  },
  auth: {
    saltRounds: 10
  },
  knex: {
    client: 'pg',
    connection: {
      // multipleStatements: true
    },
    pool: { min: 2, max: 10 }
  },
  nodemailer: {
    port: 25,
    host: '192.168.203.122',
    secure: false,
    ignoreTLS: true
  },
  graylog: {
    host: 'cencham124.quos.local',
    port: 12201
  }
};
