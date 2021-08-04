
const qt_plant = {
   plant_id : {
        table_name : qt_plant,
        column_name : plant_id,
    },
   name : {
        table_name : qt_plant,
        column_name : name,
    },
   customer_id : {
        table_name : qt_plant,
        column_name : customer_id,
        foreign_table : customer,
        foreign_key : customer_id,
    },
}
module.exports = qt_plant
