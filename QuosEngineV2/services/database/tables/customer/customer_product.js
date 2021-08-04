
const customer_product = {
   customer_id : {
        table_name : customer_product,
        column_name : customer_id,
        foreign_table : customer,
        foreign_key : customer_id,
    },
   product_id : {
        table_name : customer_product,
        column_name : product_id,
        foreign_table : quos_product,
        foreign_key : product_id,
    },
}
module.exports = customer_product
