
const qa_self_diagnosis_investigated_room = {
   investigated_room_id : {
        table_name : qa_self_diagnosis_investigated_room,
        column_name : investigated_room_id,
    },
   diagnosis_id : {
        table_name : qa_self_diagnosis_investigated_room,
        column_name : diagnosis_id,
        foreign_table : qa_self_diagnosis,
        foreign_key : diagnosis_id,
    },
   location : {
        table_name : qa_self_diagnosis_investigated_room,
        column_name : location,
    },
   room_max_theoritical_staff : {
        table_name : qa_self_diagnosis_investigated_room,
        column_name : room_max_theoritical_staff,
    },
}
module.exports = qa_self_diagnosis_investigated_room
