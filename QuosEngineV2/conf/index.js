const confDefault = require('./conf.default');
const confDev = require('./conf.dev');
const confStage = require('./conf.stage');
const confProd = require('./conf.prod');
const confShared = require('./conf.shared');
const merge = require('lodash/merge');

module.exports = env => {
let conf;
process.env.NODE_ENV = env.NODE_ENV || 'development';
const mode = process.env.NODE_ENV === 'test' ? 'development' : process.env.NODE_ENV;
if(process.env.NODE_ENV === 'development'){
  process.env.MAPBOX_KEY = confDev.env.MAPBOX_KEY;
  process.env.SERVER_PROTOCOL = confDev.env.SERVER_PROTOCOL;
}
console.log(process.env.NODE_ENV)
switch (process.env.NODE_ENV) {
  case 'shared':
    conf = merge(confDefault, confShared);
    break;
  case 'development':
    conf = merge(confDefault, confDev);
    break;
  case 'stage':
    conf = merge(confDefault, confStage);
    break;
  case 'production':
    conf = merge(confDefault, confProd);
    break;
  default:
    throw Error('process.env.NODE_ENV was set to an unrecognized value');
}

Object.defineProperty(conf, 'mode', { value: mode, writable: false });
Object.defineProperty(conf, 'isProd', { value: mode === 'production', writable: false });
Object.defineProperty(conf, 'isDev', { value: mode === 'development', writable: false });
Object.defineProperty(conf, 'isStage', { value: mode === 'stage', writable: false });
conf.server.outsidePort = conf.server.outsidePort || conf.server.webpackPort;
Object.defineProperty(conf.server, 'appUrl', {
  value: `${conf.server.protocol}://${conf.server.host}${conf.server.outsidePort ? (':' + conf.server.outsidePort) : ''}`,
  writable: false
});

  return conf
};
