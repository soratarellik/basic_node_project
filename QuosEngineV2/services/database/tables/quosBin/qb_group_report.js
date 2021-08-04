
const qb_group_report = {
   report_id : {
        table_name : qb_group_report,
        column_name : report_id,
        foreign_table : qb_report,
        foreign_key : report_id,
    },
   group_id : {
        table_name : qb_group_report,
        column_name : group_id,
        foreign_table : qb_group,
        foreign_key : group_id,
    },
}
module.exports = qb_group_report
