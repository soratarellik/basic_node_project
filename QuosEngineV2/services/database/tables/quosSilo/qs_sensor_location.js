
const qs_sensor_location = {
   location_id : {
        table_name : qs_sensor_location,
        column_name : location_id,
    },
   sensor_id : {
        table_name : qs_sensor_location,
        column_name : sensor_id,
        foreign_table : qs_sensor,
        foreign_key : sensor_id,
    },
   longitude : {
        table_name : qs_sensor_location,
        column_name : longitude,
    },
   latitude : {
        table_name : qs_sensor_location,
        column_name : latitude,
    },
   city : {
        table_name : qs_sensor_location,
        column_name : city,
    },
   street : {
        table_name : qs_sensor_location,
        column_name : street,
    },
   country : {
        table_name : qs_sensor_location,
        column_name : country,
    },
}
module.exports = qs_sensor_location
