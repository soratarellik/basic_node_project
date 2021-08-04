
const qs_sensor_analysis = {
   analysis_id : {
        table_name : qs_sensor_analysis,
        column_name : analysis_id,
        foreign_table : qs_analysis,
        foreign_key : analysis_id,
    },
   sensor_id : {
        table_name : qs_sensor_analysis,
        column_name : sensor_id,
        foreign_table : qs_sensor,
        foreign_key : sensor_id,
    },
}
module.exports = qs_sensor_analysis
