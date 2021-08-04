
const qt_group_analysis = {
   analysis_id : {
        table_name : qt_group_analysis,
        column_name : analysis_id,
        foreign_table : qt_analysis,
        foreign_key : analysis_id,
    },
   group_id : {
        table_name : qt_group_analysis,
        column_name : group_id,
        foreign_table : qt_group,
        foreign_key : group_id,
    },
}
module.exports = qt_group_analysis
