
const users = {
   user_id : {
        table_name : users,
        column_name : user_id,
    },
   last_name : {
        table_name : users,
        column_name : last_name,
    },
   first_name : {
        table_name : users,
        column_name : first_name,
    },
   mail : {
        table_name : users,
        column_name : mail,
    },
   password : {
        table_name : users,
        column_name : password,
    },
   current_customer_id : {
        table_name : users,
        column_name : current_customer_id,
        foreign_table : customer,
        foreign_key : customer_id,
    },
}
module.exports = users
