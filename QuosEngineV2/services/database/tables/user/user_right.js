
const user_right = {
   user_id : {
        table_name : user_right,
        column_name : user_id,
        foreign_table : users,
        foreign_key : user_id,
    },
   customer_id : {
        table_name : user_right,
        column_name : customer_id,
        foreign_table : customer,
        foreign_key : customer_id,
    },
   role_id : {
        table_name : user_right,
        column_name : role_id,
        foreign_table : role,
        foreign_key : role_id,
    },
   user_creation : {
        table_name : user_right,
        column_name : user_creation,
    },
   sensor_activation : {
        table_name : user_right,
        column_name : sensor_activation,
    },
}
module.exports = user_right
