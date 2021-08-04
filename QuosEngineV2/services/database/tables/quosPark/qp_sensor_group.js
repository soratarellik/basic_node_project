
const qp_sensor_group = {
   group_id : {
        table_name : qp_sensor_group,
        column_name : group_id,
        foreign_table : qp_group,
        foreign_key : group_id,
    },
   sensor_id : {
        table_name : qp_sensor_group,
        column_name : sensor_id,
        foreign_table : qp_sensor,
        foreign_key : sensor_id,
    },
}
module.exports = qp_sensor_group
