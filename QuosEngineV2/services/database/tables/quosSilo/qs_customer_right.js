
const qs_customer_right = {
   right_id : {
        table_name : qs_customer_right,
        column_name : right_id,
    },
   customer_id : {
        table_name : qs_customer_right,
        column_name : customer_id,
        foreign_table : customer,
        foreign_key : customer_id,
    },
   guidance : {
        table_name : qs_customer_right,
        column_name : guidance,
    },
}
module.exports = qs_customer_right
