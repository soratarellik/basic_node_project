
const qp_report_to_user = {
   report_id : {
        table_name : qp_report_to_user,
        column_name : report_id,
        foreign_table : qp_report,
        foreign_key : report_id,
    },
   user_id : {
        table_name : qp_report_to_user,
        column_name : user_id,
        foreign_table : users,
        foreign_key : user_id,
    },
}
module.exports = qp_report_to_user
