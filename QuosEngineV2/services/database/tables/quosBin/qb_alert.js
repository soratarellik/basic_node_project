
const qb_alert = {
   alert_id : {
        table_name : qb_alert,
        column_name : alert_id,
    },
   sensor_id : {
        table_name : qb_alert,
        column_name : sensor_id,
        foreign_table : qb_sensor,
        foreign_key : sensor_id,
    },
   data_type_id : {
        table_name : qb_alert,
        column_name : data_type_id,
        foreign_table : qb_data_type,
        foreign_key : data_type_id,
    },
   value : {
        table_name : qb_alert,
        column_name : value,
    },
   date : {
        table_name : qb_alert,
        column_name : date,
    },
   ended_at : {
        table_name : qb_alert,
        column_name : ended_at,
    },
}
module.exports = qb_alert
