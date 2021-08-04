
const user_product = {
   user_id : {
        table_name : user_product,
        column_name : user_id,
        foreign_table : users,
        foreign_key : user_id,
    },
   customer_id : {
        table_name : user_product,
        column_name : customer_id,
        foreign_table : customer,
        foreign_key : customer_id,
    },
   product_id : {
        table_name : user_product,
        column_name : product_id,
        foreign_table : quos_product,
        foreign_key : product_id,
    },
}
module.exports = user_product
