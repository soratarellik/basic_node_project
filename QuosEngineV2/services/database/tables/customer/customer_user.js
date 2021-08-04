
const customer_user = {
   customer_id : {
        table_name : customer_user,
        column_name : customer_id,
        foreign_table : customer,
        foreign_key : customer_id,
    },
   user_id : {
        table_name : customer_user,
        column_name : user_id,
        foreign_table : users,
        foreign_key : user_id,
    },
}
module.exports = customer_user
