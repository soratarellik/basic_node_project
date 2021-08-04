
const qt_plant_temperature = {
   plant_temperature_id : {
        table_name : qt_plant_temperature,
        column_name : plant_temperature_id,
    },
   plant_id : {
        table_name : qt_plant_temperature,
        column_name : plant_id,
        foreign_table : qt_plant,
        foreign_key : plant_id,
    },
   min_temperature : {
        table_name : qt_plant_temperature,
        column_name : min_temperature,
    },
   max_temperature : {
        table_name : qt_plant_temperature,
        column_name : max_temperature,
    },
}
module.exports = qt_plant_temperature
