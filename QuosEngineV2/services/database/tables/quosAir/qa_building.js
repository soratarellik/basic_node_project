
const qa_building = {
   building_id : {
        table_name : qa_building,
        column_name : building_id,
    },
   name : {
        table_name : qa_building,
        column_name : name,
    },
   address_id : {
        table_name : qa_building,
        column_name : address_id,
        foreign_table : address,
        foreign_key : address_id,
    },
   customer_id : {
        table_name : qa_building,
        column_name : customer_id,
        foreign_table : customer,
        foreign_key : customer_id,
    },
   floors : {
        table_name : qa_building,
        column_name : floors,
    },
}
module.exports = qa_building
