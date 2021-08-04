
const qt_evt_humidity = {
   humidity_id : {
        table_name : qt_evt_humidity,
        column_name : humidity_id,
    },
   evt_id : {
        table_name : qt_evt_humidity,
        column_name : evt_id,
        foreign_table : qt_evt,
        foreign_key : evt_id,
    },
   value : {
        table_name : qt_evt_humidity,
        column_name : value,
    },
}
module.exports = qt_evt_humidity
