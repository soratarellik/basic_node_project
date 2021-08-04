
const qp_tour_sensor = {
   tour_id : {
        table_name : qp_tour_sensor,
        column_name : tour_id,
        foreign_table : qp_tour,
        foreign_key : tour_id,
    },
   sensor_id : {
        table_name : qp_tour_sensor,
        column_name : sensor_id,
        foreign_table : qp_sensor,
        foreign_key : sensor_id,
    },
   date : {
        table_name : qp_tour_sensor,
        column_name : date,
    },
}
module.exports = qp_tour_sensor
