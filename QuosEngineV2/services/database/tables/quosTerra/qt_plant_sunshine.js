
const qt_plant_sunshine = {
   plant_sunshine_id : {
        table_name : qt_plant_sunshine,
        column_name : plant_sunshine_id,
    },
   plant_id : {
        table_name : qt_plant_sunshine,
        column_name : plant_id,
        foreign_table : qt_plant,
        foreign_key : plant_id,
    },
   min_sunshine : {
        table_name : qt_plant_sunshine,
        column_name : min_sunshine,
    },
   max_sunshine : {
        table_name : qt_plant_sunshine,
        column_name : max_sunshine,
    },
}
module.exports = qt_plant_sunshine
