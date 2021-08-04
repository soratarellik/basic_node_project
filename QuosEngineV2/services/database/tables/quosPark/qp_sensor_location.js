
const qp_sensor_location = {
   location_id : {
        table_name : qp_sensor_location,
        column_name : location_id,
    },
   sensor_id : {
        table_name : qp_sensor_location,
        column_name : sensor_id,
        foreign_table : qp_sensor,
        foreign_key : sensor_id,
    },
   street : {
        table_name : qp_sensor_location,
        column_name : street,
    },
   city : {
        table_name : qp_sensor_location,
        column_name : city,
    },
   latitude : {
        table_name : qp_sensor_location,
        column_name : latitude,
    },
   longitude : {
        table_name : qp_sensor_location,
        column_name : longitude,
    },
}
module.exports = qp_sensor_location
