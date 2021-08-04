
const qa_group_report = {
   report_id : {
        table_name : qa_group_report,
        column_name : report_id,
        foreign_table : qa_report,
        foreign_key : report_id,
    },
   group_id : {
        table_name : qa_group_report,
        column_name : group_id,
        foreign_table : qa_group,
        foreign_key : group_id,
    },
}
module.exports = qa_group_report
