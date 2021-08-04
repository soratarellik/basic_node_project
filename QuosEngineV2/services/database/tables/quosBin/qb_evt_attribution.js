
const qb_evt_attribution = {
   evt_attribution_id : {
        table_name : qb_evt_attribution,
        column_name : evt_attribution_id,
    },
   sensor_id : {
        table_name : qb_evt_attribution,
        column_name : sensor_id,
        foreign_table : qb_sensor,
        foreign_key : sensor_id,
    },
}
module.exports = qb_evt_attribution
