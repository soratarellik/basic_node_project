
const qs_evt = {
   evt_id : {
        table_name : qs_evt,
        column_name : evt_id,
    },
   evt_attribution_id : {
        table_name : qs_evt,
        column_name : evt_attribution_id,
        foreign_table : qs_evt_attribution,
        foreign_key : evt_attribution_id,
    },
   date : {
        table_name : qs_evt,
        column_name : date,
    },
   battery_tension : {
        table_name : qs_evt,
        column_name : battery_tension,
    },
   rssi : {
        table_name : qs_evt,
        column_name : rssi,
    },
   status : {
        table_name : qs_evt,
        column_name : status,
    },
}
module.exports = qs_evt
