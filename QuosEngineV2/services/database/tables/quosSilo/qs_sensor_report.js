
const qs_sensor_report = {
   report_id : {
        table_name : qs_sensor_report,
        column_name : report_id,
        foreign_table : qs_report,
        foreign_key : report_id,
    },
   sensor_id : {
        table_name : qs_sensor_report,
        column_name : sensor_id,
        foreign_table : qs_sensor,
        foreign_key : sensor_id,
    },
}
module.exports = qs_sensor_report
