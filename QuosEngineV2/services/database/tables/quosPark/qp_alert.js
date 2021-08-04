
const qp_alert = {
   alert_id : {
        table_name : qp_alert,
        column_name : alert_id,
    },
   sensor_id : {
        table_name : qp_alert,
        column_name : sensor_id,
        foreign_table : qp_sensor,
        foreign_key : sensor_id,
    },
   date : {
        table_name : qp_alert,
        column_name : date,
    },
   ended_at : {
        table_name : qp_alert,
        column_name : ended_at,
    },
}
module.exports = qp_alert
