
const qp_group_report = {
   report_id : {
        table_name : qp_group_report,
        column_name : report_id,
        foreign_table : qp_report,
        foreign_key : report_id,
    },
   group_id : {
        table_name : qp_group_report,
        column_name : group_id,
        foreign_table : qp_group,
        foreign_key : group_id,
    },
}
module.exports = qp_group_report
