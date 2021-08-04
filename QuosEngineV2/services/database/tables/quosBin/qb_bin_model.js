
const qb_bin_model = {
   model_id : {
        table_name : qb_bin_model,
        column_name : model_id,
    },
   name : {
        table_name : qb_bin_model,
        column_name : name,
    },
   customer_id : {
        table_name : qb_bin_model,
        column_name : customer_id,
        foreign_table : customer,
        foreign_key : customer_id,
    },
   volume : {
        table_name : qb_bin_model,
        column_name : volume,
    },
   height : {
        table_name : qb_bin_model,
        column_name : height,
    },
   distance_to_sensor : {
        table_name : qb_bin_model,
        column_name : distance_to_sensor,
    },
}
module.exports = qb_bin_model
