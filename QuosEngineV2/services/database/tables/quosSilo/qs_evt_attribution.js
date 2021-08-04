
const qs_evt_attribution = {
   evt_attribution_id : {
        table_name : qs_evt_attribution,
        column_name : evt_attribution_id,
    },
   sensor_id : {
        table_name : qs_evt_attribution,
        column_name : sensor_id,
        foreign_table : qs_sensor,
        foreign_key : sensor_id,
    },
}
module.exports = qs_evt_attribution
