
const qb_report_content_type = {
   report_id : {
        table_name : qb_report_content_type,
        column_name : report_id,
        foreign_table : qb_report,
        foreign_key : report_id,
    },
   content_type_id : {
        table_name : qb_report_content_type,
        column_name : content_type_id,
        foreign_table : qb_bin_content_type,
        foreign_key : content_type_id,
    },
}
module.exports = qb_report_content_type
