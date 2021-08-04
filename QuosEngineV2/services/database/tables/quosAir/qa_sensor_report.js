
const qa_sensor_report = {
   report_id : {
        table_name : qa_sensor_report,
        column_name : report_id,
        foreign_table : qa_report,
        foreign_key : report_id,
    },
   sensor_id : {
        table_name : qa_sensor_report,
        column_name : sensor_id,
        foreign_table : qa_sensor,
        foreign_key : sensor_id,
    },
}
module.exports = qa_sensor_report
