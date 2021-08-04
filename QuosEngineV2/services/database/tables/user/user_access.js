
const user_access = {
   user_id : {
        table_name : user_access,
        column_name : user_id,
        foreign_table : users,
        foreign_key : user_id,
    },
   customer_id : {
        table_name : user_access,
        column_name : customer_id,
        foreign_table : customer,
        foreign_key : customer_id,
    },
   mobile_access : {
        table_name : user_access,
        column_name : mobile_access,
    },
   web_access : {
        table_name : user_access,
        column_name : web_access,
    },
   last_mobile_connection : {
        table_name : user_access,
        column_name : last_mobile_connection,
    },
   last_web_connection : {
        table_name : user_access,
        column_name : last_web_connection,
    },
}
module.exports = user_access
