
const qp_alert_mail_history = {
   alert_id : {
        table_name : qp_alert_mail_history,
        column_name : alert_id,
        foreign_table : qp_alert,
        foreign_key : alert_id,
    },
   user_id : {
        table_name : qp_alert_mail_history,
        column_name : user_id,
        foreign_table : users,
        foreign_key : user_id,
    },
   date : {
        table_name : qp_alert_mail_history,
        column_name : date,
    },
}
module.exports = qp_alert_mail_history
