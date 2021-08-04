
const qa_icone = {
   icone_id : {
        table_name : qa_icone,
        column_name : icone_id,
    },
   sensor_id : {
        table_name : qa_icone,
        column_name : sensor_id,
        foreign_table : qa_sensor,
        foreign_key : sensor_id,
    },
   start_date : {
        table_name : qa_icone,
        column_name : start_date,
    },
   end_date : {
        table_name : qa_icone,
        column_name : end_date,
    },
   value : {
        table_name : qa_icone,
        column_name : value,
    },
}
module.exports = qa_icone
