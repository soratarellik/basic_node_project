
const qa_building_report = {
   report_id : {
        table_name : qa_building_report,
        column_name : report_id,
        foreign_table : qa_report,
        foreign_key : report_id,
    },
   building_id : {
        table_name : qa_building_report,
        column_name : building_id,
        foreign_table : qa_building,
        foreign_key : building_id,
    },
}
module.exports = qa_building_report
