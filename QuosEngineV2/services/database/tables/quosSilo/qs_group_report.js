
const qs_group_report = {
   report_id : {
        table_name : qs_group_report,
        column_name : report_id,
        foreign_table : qs_report,
        foreign_key : report_id,
    },
   group_id : {
        table_name : qs_group_report,
        column_name : group_id,
        foreign_table : qs_group,
        foreign_key : group_id,
    },
}
module.exports = qs_group_report
