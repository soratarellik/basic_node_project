
const qs_evt_filling_distance = {
   filling_distance_id : {
        table_name : qs_evt_filling_distance,
        column_name : filling_distance_id,
    },
   evt_id : {
        table_name : qs_evt_filling_distance,
        column_name : evt_id,
        foreign_table : qs_evt,
        foreign_key : evt_id,
    },
   value : {
        table_name : qs_evt_filling_distance,
        column_name : value,
    },
}
module.exports = qs_evt_filling_distance
