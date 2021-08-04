
const qt_sensor_group = {
   group_id : {
        table_name : qt_sensor_group,
        column_name : group_id,
        foreign_table : qt_group,
        foreign_key : group_id,
    },
   sensor_id : {
        table_name : qt_sensor_group,
        column_name : sensor_id,
        foreign_table : qt_sensor,
        foreign_key : sensor_id,
    },
}
module.exports = qt_sensor_group
