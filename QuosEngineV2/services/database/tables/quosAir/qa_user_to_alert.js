
const qa_user_to_alert = {
   sensor_id : {
        table_name : qa_user_to_alert,
        column_name : sensor_id,
        foreign_table : qa_sensor,
        foreign_key : sensor_id,
    },
   user_id : {
        table_name : qa_user_to_alert,
        column_name : user_id,
        foreign_table : users,
        foreign_key : user_id,
    },
   data_type_id : {
        table_name : qa_user_to_alert,
        column_name : data_type_id,
        foreign_table : qa_data_type,
        foreign_key : data_type_id,
    },
}
module.exports = qa_user_to_alert
