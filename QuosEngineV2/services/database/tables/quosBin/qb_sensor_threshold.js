
const qb_sensor_threshold = {
   threshold_id : {
        table_name : qb_sensor_threshold,
        column_name : threshold_id,
    },
   sensor_id : {
        table_name : qb_sensor_threshold,
        column_name : sensor_id,
        foreign_table : qb_sensor,
        foreign_key : sensor_id,
    },
   data_type_id : {
        table_name : qb_sensor_threshold,
        column_name : data_type_id,
        foreign_table : qb_data_type,
        foreign_key : data_type_id,
    },
   updated_at : {
        table_name : qb_sensor_threshold,
        column_name : updated_at,
    },
   max_threshold : {
        table_name : qb_sensor_threshold,
        column_name : max_threshold,
    },
   max_comfort : {
        table_name : qb_sensor_threshold,
        column_name : max_comfort,
    },
}
module.exports = qb_sensor_threshold
