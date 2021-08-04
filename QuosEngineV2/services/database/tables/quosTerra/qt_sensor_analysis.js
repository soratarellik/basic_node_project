
const qt_sensor_analysis = {
   analysis_id : {
        table_name : qt_sensor_analysis,
        column_name : analysis_id,
        foreign_table : qt_analysis,
        foreign_key : analysis_id,
    },
   sensor_id : {
        table_name : qt_sensor_analysis,
        column_name : sensor_id,
        foreign_table : qt_sensor,
        foreign_key : sensor_id,
    },
}
module.exports = qt_sensor_analysis
