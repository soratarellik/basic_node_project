
const qa_evt_temperature = {
   temperature_id : {
        table_name : qa_evt_temperature,
        column_name : temperature_id,
    },
   evt_id : {
        table_name : qa_evt_temperature,
        column_name : evt_id,
        foreign_table : qa_evt,
        foreign_key : evt_id,
    },
   value : {
        table_name : qa_evt_temperature,
        column_name : value,
    },
}
module.exports = qa_evt_temperature
