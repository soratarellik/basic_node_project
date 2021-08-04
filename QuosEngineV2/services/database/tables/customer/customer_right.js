
const customer_right = {
   right_id : {
        table_name : customer_right,
        column_name : right_id,
    },
   customer_id : {
        table_name : customer_right,
        column_name : customer_id,
        foreign_table : customer,
        foreign_key : customer_id,
    },
   max_user : {
        table_name : customer_right,
        column_name : max_user,
    },
   max_admin : {
        table_name : customer_right,
        column_name : max_admin,
    },
   subscription_id : {
        table_name : customer_right,
        column_name : subscription_id,
        foreign_table : subscription,
        foreign_key : subscription_id,
    },
}
module.exports = customer_right
