
const qp_report_park_type = {
   report_id : {
        table_name : qp_report_park_type,
        column_name : report_id,
        foreign_table : qp_report,
        foreign_key : report_id,
    },
   park_type_id : {
        table_name : qp_report_park_type,
        column_name : park_type_id,
        foreign_table : qp_park_type,
        foreign_key : park_type_id,
    },
}
module.exports = qp_report_park_type
