
const qb_alert_mail_history = {
   alert_id : {
        table_name : qb_alert_mail_history,
        column_name : alert_id,
        foreign_table : qb_alert,
        foreign_key : alert_id,
    },
   user_id : {
        table_name : qb_alert_mail_history,
        column_name : user_id,
        foreign_table : users,
        foreign_key : user_id,
    },
   date : {
        table_name : qb_alert_mail_history,
        column_name : date,
    },
}
module.exports = qb_alert_mail_history
