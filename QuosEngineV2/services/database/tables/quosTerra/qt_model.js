
const qt_model = {
   model_id : {
        table_name : qt_model,
        column_name : model_id,
    },
   name : {
        table_name : qt_model,
        column_name : name,
    },
   volume : {
        table_name : qt_model,
        column_name : volume,
    },
   area : {
        table_name : qt_model,
        column_name : area,
    },
   depth : {
        table_name : qt_model,
        column_name : depth,
    },
   customer_id : {
        table_name : qt_model,
        column_name : customer_id,
        foreign_table : customer,
        foreign_key : customer_id,
    },
}
module.exports = qt_model
