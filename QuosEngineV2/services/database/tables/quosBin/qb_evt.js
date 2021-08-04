
const qb_evt = {
   evt_id : {
        table_name : qb_evt,
        column_name : evt_id,
    },
   evt_attribution_id : {
        table_name : qb_evt,
        column_name : evt_attribution_id,
        foreign_table : qb_evt_attribution,
        foreign_key : evt_attribution_id,
    },
   date : {
        table_name : qb_evt,
        column_name : date,
    },
   battery_tension : {
        table_name : qb_evt,
        column_name : battery_tension,
    },
   rssi : {
        table_name : qb_evt,
        column_name : rssi,
    },
   status : {
        table_name : qb_evt,
        column_name : status,
    },
}
module.exports = qb_evt
