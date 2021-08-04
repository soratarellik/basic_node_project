
const qt_group_report = {
   report_id : {
        table_name : qt_group_report,
        column_name : report_id,
        foreign_table : qt_report,
        foreign_key : report_id,
    },
   group_id : {
        table_name : qt_group_report,
        column_name : group_id,
        foreign_table : qt_group,
        foreign_key : group_id,
    },
}
module.exports = qt_group_report
