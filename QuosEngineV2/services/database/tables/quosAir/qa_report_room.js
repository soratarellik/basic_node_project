
const qa_report_room = {
   report_id : {
        table_name : qa_report_room,
        column_name : report_id,
        foreign_table : qa_report,
        foreign_key : report_id,
    },
   room_type_id : {
        table_name : qa_report_room,
        column_name : room_type_id,
        foreign_table : qa_room_type,
        foreign_key : room_type_id,
    },
}
module.exports = qa_report_room
