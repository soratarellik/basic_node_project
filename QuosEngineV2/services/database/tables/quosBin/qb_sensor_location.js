
const qb_sensor_location = {
   location_id : {
        table_name : qb_sensor_location,
        column_name : location_id,
    },
   sensor_id : {
        table_name : qb_sensor_location,
        column_name : sensor_id,
        foreign_table : qb_sensor,
        foreign_key : sensor_id,
    },
   latitude : {
        table_name : qb_sensor_location,
        column_name : latitude,
    },
   longitude : {
        table_name : qb_sensor_location,
        column_name : longitude,
    },
   city : {
        table_name : qb_sensor_location,
        column_name : city,
    },
   street : {
        table_name : qb_sensor_location,
        column_name : street,
    },
   country : {
        table_name : qb_sensor_location,
        column_name : country,
    },
}
module.exports = qb_sensor_location
