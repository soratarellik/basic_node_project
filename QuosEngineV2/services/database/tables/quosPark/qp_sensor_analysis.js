
const qp_sensor_analysis = {
   analysis_id : {
        table_name : qp_sensor_analysis,
        column_name : analysis_id,
        foreign_table : qp_analysis,
        foreign_key : analysis_id,
    },
   sensor_id : {
        table_name : qp_sensor_analysis,
        column_name : sensor_id,
        foreign_table : qp_sensor,
        foreign_key : sensor_id,
    },
}
module.exports = qp_sensor_analysis
