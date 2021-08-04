
const qt_user_right = {
   user_id : {
        table_name : qt_user_right,
        column_name : user_id,
        foreign_table : users,
        foreign_key : user_id,
    },
   customer_id : {
        table_name : qt_user_right,
        column_name : customer_id,
        foreign_table : customer,
        foreign_key : customer_id,
    },
   report_config : {
        table_name : qt_user_right,
        column_name : report_config,
    },
   analysis_config : {
        table_name : qt_user_right,
        column_name : analysis_config,
    },
   threshold_config : {
        table_name : qt_user_right,
        column_name : threshold_config,
    },
   group_config : {
        table_name : qt_user_right,
        column_name : group_config,
    },
}
module.exports = qt_user_right
