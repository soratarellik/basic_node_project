
const qt_sensor_location = {
   location_id : {
        table_name : qt_sensor_location,
        column_name : location_id,
    },
   city : {
        table_name : qt_sensor_location,
        column_name : city,
    },
   street : {
        table_name : qt_sensor_location,
        column_name : street,
    },
   latitude : {
        table_name : qt_sensor_location,
        column_name : latitude,
    },
   longitude : {
        table_name : qt_sensor_location,
        column_name : longitude,
    },
   sensor_id : {
        table_name : qt_sensor_location,
        column_name : sensor_id,
        foreign_table : qt_sensor,
        foreign_key : sensor_id,
    },
}
module.exports = qt_sensor_location
