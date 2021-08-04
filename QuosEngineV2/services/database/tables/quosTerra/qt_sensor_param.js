
const qt_sensor_param = {
   param_id : {
        table_name : qt_sensor_param,
        column_name : param_id,
    },
   sensor_id : {
        table_name : qt_sensor_param,
        column_name : sensor_id,
        foreign_table : qt_sensor,
        foreign_key : sensor_id,
    },
   is_activated : {
        table_name : qt_sensor_param,
        column_name : is_activated,
    },
   substrate_id : {
        table_name : qt_sensor_param,
        column_name : substrate_id,
        foreign_table : qt_substrate,
        foreign_key : substrate_id,
    },
   model_id : {
        table_name : qt_sensor_param,
        column_name : model_id,
        foreign_table : qt_model,
        foreign_key : model_id,
    },
   volume : {
        table_name : qt_sensor_param,
        column_name : volume,
    },
   area : {
        table_name : qt_sensor_param,
        column_name : area,
    },
   depth : {
        table_name : qt_sensor_param,
        column_name : depth,
    },
   number_of_return : {
        table_name : qt_sensor_param,
        column_name : number_of_return,
    },
}
module.exports = qt_sensor_param
