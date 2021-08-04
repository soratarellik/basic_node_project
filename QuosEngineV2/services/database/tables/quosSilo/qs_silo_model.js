
const qs_silo_model = {
   model_id : {
        table_name : qs_silo_model,
        column_name : model_id,
    },
   name : {
        table_name : qs_silo_model,
        column_name : name,
    },
   customer_id : {
        table_name : qs_silo_model,
        column_name : customer_id,
        foreign_table : customer,
        foreign_key : customer_id,
    },
   height : {
        table_name : qs_silo_model,
        column_name : height,
    },
}
module.exports = qs_silo_model
