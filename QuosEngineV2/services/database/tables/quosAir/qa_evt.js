
const qa_evt = {
   evt_id : {
        table_name : qa_evt,
        column_name : evt_id,
    },
   evt_attribution_id : {
        table_name : qa_evt,
        column_name : evt_attribution_id,
        foreign_table : qa_evt_attribution,
        foreign_key : evt_attribution_id,
    },
   date : {
        table_name : qa_evt,
        column_name : date,
    },
   battery_tension : {
        table_name : qa_evt,
        column_name : battery_tension,
    },
   rssi : {
        table_name : qa_evt,
        column_name : rssi,
    },
   status : {
        table_name : qa_evt,
        column_name : status,
    },
}
module.exports = qa_evt
