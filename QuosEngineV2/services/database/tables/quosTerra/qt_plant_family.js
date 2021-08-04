
const qt_plant_family = {
   plant_family_id : {
        table_name : qt_plant_family,
        column_name : plant_family_id,
    },
   language_id : {
        table_name : qt_plant_family,
        column_name : language_id,
        foreign_table : qt_language,
        foreign_key : language_id,
    },
   name : {
        table_name : qt_plant_family,
        column_name : name,
    },
   root_size : {
        table_name : qt_plant_family,
        column_name : root_size,
    },
}
module.exports = qt_plant_family
