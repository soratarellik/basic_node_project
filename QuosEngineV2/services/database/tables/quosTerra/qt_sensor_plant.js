
const qt_sensor_plant = {
   sensor_id : {
        table_name : qt_sensor_plant,
        column_name : sensor_id,
        foreign_table : qt_sensor,
        foreign_key : sensor_id,
    },
   plant_id : {
        table_name : qt_sensor_plant,
        column_name : plant_id,
        foreign_table : qt_plant,
        foreign_key : plant_id,
    },
}
module.exports = qt_sensor_plant
