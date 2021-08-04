
const user_address_preference = {
   user_id : {
        table_name : user_address_preference,
        column_name : user_id,
        foreign_table : users,
        foreign_key : user_id,
    },
   customer_id : {
        table_name : user_address_preference,
        column_name : customer_id,
        foreign_table : customer,
        foreign_key : customer_id,
    },
   address_id : {
        table_name : user_address_preference,
        column_name : address_id,
        foreign_table : address,
        foreign_key : address_id,
    },
}
module.exports = user_address_preference
