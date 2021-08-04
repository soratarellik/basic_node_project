
const qa_alert = {
   alert_id : {
        table_name : qa_alert,
        column_name : alert_id,
    },
   sensor_id : {
        table_name : qa_alert,
        column_name : sensor_id,
        foreign_table : qa_sensor,
        foreign_key : sensor_id,
    },
   data_type_id : {
        table_name : qa_alert,
        column_name : data_type_id,
        foreign_table : qa_data_type,
        foreign_key : data_type_id,
    },
   value : {
        table_name : qa_alert,
        column_name : value,
    },
   date : {
        table_name : qa_alert,
        column_name : date,
    },
   ended_at : {
        table_name : qa_alert,
        column_name : ended_at,
    },
}
module.exports = qa_alert
