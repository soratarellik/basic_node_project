
const qp_analysis = {
   analysis_id : {
        table_name : qp_analysis,
        column_name : analysis_id,
    },
   user_id : {
        table_name : qp_analysis,
        column_name : user_id,
        foreign_table : users,
        foreign_key : user_id,
    },
   customer_id : {
        table_name : qp_analysis,
        column_name : customer_id,
        foreign_table : customer,
        foreign_key : customer_id,
    },
   chart_type_id : {
        table_name : qp_analysis,
        column_name : chart_type_id,
        foreign_table : chart_type,
        foreign_key : chart_type_id,
    },
   target_type_id : {
        table_name : qp_analysis,
        column_name : target_type_id,
        foreign_table : qp_target_type,
        foreign_key : target_type_id,
    },
   analysis_type_id : {
        table_name : qp_analysis,
        column_name : analysis_type_id,
        foreign_table : qp_analysis_type,
        foreign_key : analysis_type_id,
    },
   period_setting_id : {
        table_name : qp_analysis,
        column_name : period_setting_id,
        foreign_table : period_setting,
        foreign_key : period_setting_id,
    },
   granularity_setting_id : {
        table_name : qp_analysis,
        column_name : granularity_setting_id,
        foreign_table : granularity_setting,
        foreign_key : granularity_setting_id,
    },
   park_type_id : {
        table_name : qp_analysis,
        column_name : park_type_id,
        foreign_table : qp_park_type,
        foreign_key : park_type_id,
    },
   authorized_duration : {
        table_name : qp_analysis,
        column_name : authorized_duration,
    },
   origin_page_id : {
        table_name : qp_analysis,
        column_name : origin_page_id,
        foreign_table : origin_page,
        foreign_key : origin_page_id,
    },
   title : {
        table_name : qp_analysis,
        column_name : title,
    },
   all_selected : {
        table_name : qp_analysis,
        column_name : all_selected,
    },
   start_date : {
        table_name : qp_analysis,
        column_name : start_date,
    },
   end_date : {
        table_name : qp_analysis,
        column_name : end_date,
    },
}
module.exports = qp_analysis
