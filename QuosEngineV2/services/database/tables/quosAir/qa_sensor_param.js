
const qa_sensor_param = {
   param_id : {
        table_name : qa_sensor_param,
        column_name : param_id,
    },
   sensor_id : {
        table_name : qa_sensor_param,
        column_name : sensor_id,
        foreign_table : qa_sensor,
        foreign_key : sensor_id,
    },
   is_activated : {
        table_name : qa_sensor_param,
        column_name : is_activated,
    },
   number_of_return : {
        table_name : qa_sensor_param,
        column_name : number_of_return,
    },
   alert_activated : {
        table_name : qa_sensor_param,
        column_name : alert_activated,
    },
   led_activated : {
        table_name : qa_sensor_param,
        column_name : led_activated,
    },
}
module.exports = qa_sensor_param
