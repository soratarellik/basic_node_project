
const qb_sensor_analysis = {
   analysis_id : {
        table_name : qb_sensor_analysis,
        column_name : analysis_id,
        foreign_table : qb_analysis,
        foreign_key : analysis_id,
    },
   sensor_id : {
        table_name : qb_sensor_analysis,
        column_name : sensor_id,
        foreign_table : qb_sensor,
        foreign_key : sensor_id,
    },
}
module.exports = qb_sensor_analysis
