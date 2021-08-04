
const qa_sensor_location = {
   location_id : {
        table_name : qa_sensor_location,
        column_name : location_id,
    },
   sensor_id : {
        table_name : qa_sensor_location,
        column_name : sensor_id,
        foreign_table : qa_sensor,
        foreign_key : sensor_id,
    },
   name : {
        table_name : qa_sensor_location,
        column_name : name,
    },
   room_type_id : {
        table_name : qa_sensor_location,
        column_name : room_type_id,
        foreign_table : qa_room_type,
        foreign_key : room_type_id,
    },
   building_id : {
        table_name : qa_sensor_location,
        column_name : building_id,
        foreign_table : qa_building,
        foreign_key : building_id,
    },
   floor : {
        table_name : qa_sensor_location,
        column_name : floor,
    },
   latitude : {
        table_name : qa_sensor_location,
        column_name : latitude,
    },
   longitude : {
        table_name : qa_sensor_location,
        column_name : longitude,
    },
}
module.exports = qa_sensor_location
