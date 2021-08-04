
const qt_evt_attribution = {
   evt_attribution_id : {
        table_name : qt_evt_attribution,
        column_name : evt_attribution_id,
    },
   sensor_id : {
        table_name : qt_evt_attribution,
        column_name : sensor_id,
        foreign_table : qt_sensor,
        foreign_key : sensor_id,
    },
}
module.exports = qt_evt_attribution
