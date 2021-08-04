
const qa_building_analysis = {
   analysis_id : {
        table_name : qa_building_analysis,
        column_name : analysis_id,
        foreign_table : qa_analysis,
        foreign_key : analysis_id,
    },
   building_id : {
        table_name : qa_building_analysis,
        column_name : building_id,
        foreign_table : qa_building,
        foreign_key : building_id,
    },
}
module.exports = qa_building_analysis
