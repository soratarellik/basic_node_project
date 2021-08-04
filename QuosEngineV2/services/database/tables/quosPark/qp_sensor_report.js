
const qp_sensor_report = {
   report_id : {
        table_name : qp_sensor_report,
        column_name : report_id,
        foreign_table : qp_report,
        foreign_key : report_id,
    },
   sensor_id : {
        table_name : qp_sensor_report,
        column_name : sensor_id,
        foreign_table : qp_sensor,
        foreign_key : sensor_id,
    },
}
module.exports = qp_sensor_report
