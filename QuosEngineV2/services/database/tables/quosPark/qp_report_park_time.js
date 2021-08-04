
const qp_report_park_time = {
   report_id : {
        table_name : qp_report_park_time,
        column_name : report_id,
        foreign_table : qp_report,
        foreign_key : report_id,
    },
   authorized_duration : {
        table_name : qp_report_park_time,
        column_name : authorized_duration,
    },
}
module.exports = qp_report_park_time
