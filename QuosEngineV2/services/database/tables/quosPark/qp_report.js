
const qp_report = {
   report_id : {
        table_name : qp_report,
        column_name : report_id,
    },
   customer_id : {
        table_name : qp_report,
        column_name : customer_id,
        foreign_table : customer,
        foreign_key : customer_id,
    },
   target_type_id : {
        table_name : qp_report,
        column_name : target_type_id,
        foreign_table : qp_target_type,
        foreign_key : target_type_id,
    },
   period_setting_id : {
        table_name : qp_report,
        column_name : period_setting_id,
        foreign_table : period_setting,
        foreign_key : period_setting_id,
    },
   title : {
        table_name : qp_report,
        column_name : title,
    },
   all_selected : {
        table_name : qp_report,
        column_name : all_selected,
    },
   dispatch : {
        table_name : qp_report,
        column_name : dispatch,
    },
}
module.exports = qp_report
