
const qa_user_right = {
   user_id : {
        table_name : qa_user_right,
        column_name : user_id,
        foreign_table : users,
        foreign_key : user_id,
    },
   customer_id : {
        table_name : qa_user_right,
        column_name : customer_id,
        foreign_table : customer,
        foreign_key : customer_id,
    },
   qai_option : {
        table_name : qa_user_right,
        column_name : qai_option,
    },
   report_config : {
        table_name : qa_user_right,
        column_name : report_config,
    },
   analysis_config : {
        table_name : qa_user_right,
        column_name : analysis_config,
    },
   threshold_config : {
        table_name : qa_user_right,
        column_name : threshold_config,
    },
   guidance_config : {
        table_name : qa_user_right,
        column_name : guidance_config,
    },
   group_config : {
        table_name : qa_user_right,
        column_name : group_config,
    },
   self_diagnosis : {
        table_name : qa_user_right,
        column_name : self_diagnosis,
    },
}
module.exports = qa_user_right
