
const qb_group_analysis = {
   analysis_id : {
        table_name : qb_group_analysis,
        column_name : analysis_id,
        foreign_table : qb_analysis,
        foreign_key : analysis_id,
    },
   group_id : {
        table_name : qb_group_analysis,
        column_name : group_id,
        foreign_table : qb_group,
        foreign_key : group_id,
    },
}
module.exports = qb_group_analysis
