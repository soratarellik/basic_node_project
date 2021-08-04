
const qb_user_to_alert = {
   user_id : {
        table_name : qb_user_to_alert,
        column_name : user_id,
        foreign_table : users,
        foreign_key : user_id,
    },
   sensor_id : {
        table_name : qb_user_to_alert,
        column_name : sensor_id,
        foreign_table : qb_sensor,
        foreign_key : sensor_id,
    },
   data_type_id : {
        table_name : qb_user_to_alert,
        column_name : data_type_id,
        foreign_table : qb_data_type,
        foreign_key : data_type_id,
    },
}
module.exports = qb_user_to_alert
