
const qt_sensor_report = {
   report_id : {
        table_name : qt_sensor_report,
        column_name : report_id,
        foreign_table : qt_report,
        foreign_key : report_id,
    },
   sensor_id : {
        table_name : qt_sensor_report,
        column_name : sensor_id,
        foreign_table : qt_sensor,
        foreign_key : sensor_id,
    },
}
module.exports = qt_sensor_report
