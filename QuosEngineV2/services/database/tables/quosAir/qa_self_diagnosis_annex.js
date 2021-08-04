
const qa_self_diagnosis_annex = {
   annex_id : {
        table_name : qa_self_diagnosis_annex,
        column_name : annex_id,
    },
   diagnosis_id : {
        table_name : qa_self_diagnosis_annex,
        column_name : diagnosis_id,
        foreign_table : qa_self_diagnosis,
        foreign_key : diagnosis_id,
    },
   room : {
        table_name : qa_self_diagnosis_annex,
        column_name : room,
    },
   opening_number : {
        table_name : qa_self_diagnosis_annex,
        column_name : opening_number,
    },
   working_opening : {
        table_name : qa_self_diagnosis_annex,
        column_name : working_opening,
    },
   accessible_opening : {
        table_name : qa_self_diagnosis_annex,
        column_name : accessible_opening,
    },
   maniable_opening : {
        table_name : qa_self_diagnosis_annex,
        column_name : maniable_opening,
    },
   working_vent : {
        table_name : qa_self_diagnosis_annex,
        column_name : working_vent,
    },
   clogged_vent : {
        table_name : qa_self_diagnosis_annex,
        column_name : clogged_vent,
    },
   voluntary_clogged_vent : {
        table_name : qa_self_diagnosis_annex,
        column_name : voluntary_clogged_vent,
    },
   furniture_clogged_vent : {
        table_name : qa_self_diagnosis_annex,
        column_name : furniture_clogged_vent,
    },
   other_clogged_vent : {
        table_name : qa_self_diagnosis_annex,
        column_name : other_clogged_vent,
    },
   dirty_vent : {
        table_name : qa_self_diagnosis_annex,
        column_name : dirty_vent,
    },
   other : {
        table_name : qa_self_diagnosis_annex,
        column_name : other,
    },
}
module.exports = qa_self_diagnosis_annex
