
const qb_sensor_date = {
   date_id : {
        table_name : qb_sensor_date,
        column_name : date_id,
    },
   sensor_id : {
        table_name : qb_sensor_date,
        column_name : sensor_id,
        foreign_table : qb_sensor,
        foreign_key : sensor_id,
    },
   installation_date : {
        table_name : qb_sensor_date,
        column_name : installation_date,
    },
   desactivation_date : {
        table_name : qb_sensor_date,
        column_name : desactivation_date,
    },
   lost_communication_date : {
        table_name : qb_sensor_date,
        column_name : lost_communication_date,
    },
}
module.exports = qb_sensor_date
