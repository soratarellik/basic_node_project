
const qa_customer_right = {
   right_id : {
        table_name : qa_customer_right,
        column_name : right_id,
    },
   customer_id : {
        table_name : qa_customer_right,
        column_name : customer_id,
        foreign_table : customer,
        foreign_key : customer_id,
    },
   qai_option : {
        table_name : qa_customer_right,
        column_name : qai_option,
    },
   guidance : {
        table_name : qa_customer_right,
        column_name : guidance,
    },
   self_diagnosis : {
        table_name : qa_customer_right,
        column_name : self_diagnosis,
    },
}
module.exports = qa_customer_right
