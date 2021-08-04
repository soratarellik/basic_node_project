
const qa_sensor_analysis = {
   analysis_id : {
        table_name : qa_sensor_analysis,
        column_name : analysis_id,
        foreign_table : qa_analysis,
        foreign_key : analysis_id,
    },
   sensor_id : {
        table_name : qa_sensor_analysis,
        column_name : sensor_id,
        foreign_table : qa_sensor,
        foreign_key : sensor_id,
    },
}
module.exports = qa_sensor_analysis
