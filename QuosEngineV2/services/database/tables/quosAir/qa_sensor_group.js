
const qa_sensor_group = {
   group_id : {
        table_name : qa_sensor_group,
        column_name : group_id,
        foreign_table : qa_group,
        foreign_key : group_id,
    },
   sensor_id : {
        table_name : qa_sensor_group,
        column_name : sensor_id,
        foreign_table : qa_sensor,
        foreign_key : sensor_id,
    },
}
module.exports = qa_sensor_group
