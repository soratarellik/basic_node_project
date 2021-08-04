
const qa_evt_co2 = {
   co2_id : {
        table_name : qa_evt_co2,
        column_name : co2_id,
    },
   evt_id : {
        table_name : qa_evt_co2,
        column_name : evt_id,
        foreign_table : qa_evt,
        foreign_key : evt_id,
    },
   value : {
        table_name : qa_evt_co2,
        column_name : value,
    },
}
module.exports = qa_evt_co2
