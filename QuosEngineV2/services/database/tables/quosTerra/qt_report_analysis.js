
const qt_report_analysis = {
   report_id : {
        table_name : qt_report_analysis,
        column_name : report_id,
        foreign_table : qt_report,
        foreign_key : report_id,
    },
   analysis_type_id : {
        table_name : qt_report_analysis,
        column_name : analysis_type_id,
        foreign_table : qt_analysis_type,
        foreign_key : analysis_type_id,
    },
}
module.exports = qt_report_analysis
