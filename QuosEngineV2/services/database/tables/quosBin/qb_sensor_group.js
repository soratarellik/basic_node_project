
const qb_sensor_group = {
   group_id : {
        table_name : qb_sensor_group,
        column_name : group_id,
        foreign_table : qb_group,
        foreign_key : group_id,
    },
   sensor_id : {
        table_name : qb_sensor_group,
        column_name : sensor_id,
        foreign_table : qb_sensor,
        foreign_key : sensor_id,
    },
}
module.exports = qb_sensor_group
