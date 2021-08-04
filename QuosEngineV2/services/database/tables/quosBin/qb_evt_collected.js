
const qb_evt_collected = {
   collected_id : {
        table_name : qb_evt_collected,
        column_name : collected_id,
    },
   evt_id : {
        table_name : qb_evt_collected,
        column_name : evt_id,
        foreign_table : qb_evt,
        foreign_key : evt_id,
    },
   value : {
        table_name : qb_evt_collected,
        column_name : value,
    },
}
module.exports = qb_evt_collected
