
const qt_plant_humidity = {
   plant_humidity_id : {
        table_name : qt_plant_humidity,
        column_name : plant_humidity_id,
    },
   plant_id : {
        table_name : qt_plant_humidity,
        column_name : plant_id,
        foreign_table : qt_plant,
        foreign_key : plant_id,
    },
   min_humidity : {
        table_name : qt_plant_humidity,
        column_name : min_humidity,
    },
   max_humidity : {
        table_name : qt_plant_humidity,
        column_name : max_humidity,
    },
}
module.exports = qt_plant_humidity
