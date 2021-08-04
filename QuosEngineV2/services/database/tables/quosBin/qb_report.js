
const qb_report = {
   report_id : {
        table_name : qb_report,
        column_name : report_id,
    },
   customer_id : {
        table_name : qb_report,
        column_name : customer_id,
        foreign_table : customer,
        foreign_key : customer_id,
    },
   target_type_id : {
        table_name : qb_report,
        column_name : target_type_id,
        foreign_table : qb_target_type,
        foreign_key : target_type_id,
    },
   content_type_id : {
        table_name : qb_report,
        column_name : content_type_id,
        foreign_table : qb_bin_content_type,
        foreign_key : content_type_id,
    },
   period_setting_id : {
        table_name : qb_report,
        column_name : period_setting_id,
        foreign_table : period_setting,
        foreign_key : period_setting_id,
    },
   dispatch : {
        table_name : qb_report,
        column_name : dispatch,
    },
   all_selected : {
        table_name : qb_report,
        column_name : all_selected,
    },
   title : {
        table_name : qb_report,
        column_name : title,
    },
}
module.exports = qb_report
