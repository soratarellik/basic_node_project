const queryBuilder = require('knex/lib/query/querybuilder');
const conf = require('../../conf')(process.env);
const subscriber = require('pg-listen')(conf.knex.connection);
const EventEmitter = require('events').EventEmitter;

const CONST = require("../../constants/CONST");
const SchemaInspector = require('knex-schema-inspector');




class DbEventEmitter extends EventEmitter {
  constructor () {
    super();
    process.on('exit', subscriber.close);
    subscriber.connect();
    subscriber.listenTo(CONST.db.DB_NOTIFICATIONS);
    subscriber.notifications.on(CONST.db.DB_NOTIFICATIONS, (payload) => {
      this.emit(`${payload.tableName}__${payload.operation}`, payload.data);
    });
  }
}
const dbEventEmitter = new DbEventEmitter();

// adding an improved "where" (called "whereCustom") to knex which changes the way arrays are handled:
// knex('myTable').whereCustom({a: 1, b: ['foo', 'bar']}) gets translated to: knex('myTable').where({a: 1}).whereIn('b', ['foo', 'bar'])
queryBuilder.prototype.whereCustom = function whereCustom (obj) {
  const whereClause = JSON.parse(JSON.stringify(obj));
  for (let prop in whereClause) {
    if (whereClause[prop] instanceof Array) {
      if (whereClause[prop].length > 1) {
        this.whereIn(prop, whereClause[prop]);
        delete whereClause[prop];
      } else if (whereClause[prop].length === 1) {
        whereClause[prop] = whereClause[prop][0];
      } else { // empty array
        delete whereClause[prop];
      }
    }
  }
  if (Object.keys(whereClause).length) {
    return this.where(whereClause);
  }
  return this;
};

const knex = require('knex')(conf.knex);

const inspector = SchemaInspector.default(knex);

 
// adds upsert capability, but careful, all rows from data to be inserted must have the same properties/columns !
knex.upsert = (tableName, conflictColumn, data, trx) => {
  const knexInstance = trx || knex;
  const firstData = data[0] ? data[0] : data;
  return knexInstance.raw(`${knexInstance(tableName).insert(data).toQuery()} ON CONFLICT (${conflictColumn}) DO UPDATE SET
    ${Object.getOwnPropertyNames(firstData).map((field) => `${field}=EXCLUDED.${field}`).join(', ')}`);
};

module.exports = {
  knex,
  dbEventEmitter,
  inspector,
  CONST
};
