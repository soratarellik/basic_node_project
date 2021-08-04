
const qp_sensor_param = {
   param_id : {
        table_name : qp_sensor_param,
        column_name : param_id,
    },
   sensor_id : {
        table_name : qp_sensor_param,
        column_name : sensor_id,
        foreign_table : qp_sensor,
        foreign_key : sensor_id,
    },
   is_activated : {
        table_name : qp_sensor_param,
        column_name : is_activated,
    },
   park_type_id : {
        table_name : qp_sensor_param,
        column_name : park_type_id,
        foreign_table : qp_park_type,
        foreign_key : park_type_id,
    },
   payment_condition_id : {
        table_name : qp_sensor_param,
        column_name : payment_condition_id,
        foreign_table : qp_payment_condition,
        foreign_key : payment_condition_id,
    },
   rechargeable : {
        table_name : qp_sensor_param,
        column_name : rechargeable,
    },
   number_of_return : {
        table_name : qp_sensor_param,
        column_name : number_of_return,
    },
   maintenance_password : {
        table_name : qp_sensor_param,
        column_name : maintenance_password,
    },
   rf_password : {
        table_name : qp_sensor_param,
        column_name : rf_password,
    },
}
module.exports = qp_sensor_param
