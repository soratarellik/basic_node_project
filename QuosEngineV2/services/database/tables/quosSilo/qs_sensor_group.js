
const qs_sensor_group = {
   group_id : {
        table_name : qs_sensor_group,
        column_name : group_id,
        foreign_table : qs_group,
        foreign_key : group_id,
    },
   sensor_id : {
        table_name : qs_sensor_group,
        column_name : sensor_id,
        foreign_table : qs_sensor,
        foreign_key : sensor_id,
    },
}
module.exports = qs_sensor_group
