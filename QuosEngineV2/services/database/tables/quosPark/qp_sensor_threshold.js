
const qp_sensor_threshold = {
   threshold_id : {
        table_name : qp_sensor_threshold,
        column_name : threshold_id,
    },
   sensor_id : {
        table_name : qp_sensor_threshold,
        column_name : sensor_id,
        foreign_table : qp_sensor,
        foreign_key : sensor_id,
    },
   data_type_id : {
        table_name : qp_sensor_threshold,
        column_name : data_type_id,
        foreign_table : qp_data_type,
        foreign_key : data_type_id,
    },
   updated_at : {
        table_name : qp_sensor_threshold,
        column_name : updated_at,
    },
   max_threshold : {
        table_name : qp_sensor_threshold,
        column_name : max_threshold,
    },
   max_comfort : {
        table_name : qp_sensor_threshold,
        column_name : max_comfort,
    },
}
module.exports = qp_sensor_threshold
