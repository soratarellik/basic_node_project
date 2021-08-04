
const qb_sensor_report = {
   report_id : {
        table_name : qb_sensor_report,
        column_name : report_id,
        foreign_table : qb_report,
        foreign_key : report_id,
    },
   sensor_id : {
        table_name : qb_sensor_report,
        column_name : sensor_id,
        foreign_table : qb_sensor,
        foreign_key : sensor_id,
    },
}
module.exports = qb_sensor_report
