
const qs_group_analysis = {
   analysis_id : {
        table_name : qs_group_analysis,
        column_name : analysis_id,
        foreign_table : qs_analysis,
        foreign_key : analysis_id,
    },
   group_id : {
        table_name : qs_group_analysis,
        column_name : group_id,
        foreign_table : qs_group,
        foreign_key : group_id,
    },
}
module.exports = qs_group_analysis
