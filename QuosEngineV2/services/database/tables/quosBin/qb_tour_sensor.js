
const qb_tour_sensor = {
   tour_id : {
        table_name : qb_tour_sensor,
        column_name : tour_id,
        foreign_table : qb_tour,
        foreign_key : tour_id,
    },
   sensor_id : {
        table_name : qb_tour_sensor,
        column_name : sensor_id,
        foreign_table : qb_sensor,
        foreign_key : sensor_id,
    },
   date : {
        table_name : qb_tour_sensor,
        column_name : date,
    },
}
module.exports = qb_tour_sensor
