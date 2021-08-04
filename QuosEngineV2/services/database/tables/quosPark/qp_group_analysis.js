
const qp_group_analysis = {
   analysis_id : {
        table_name : qp_group_analysis,
        column_name : analysis_id,
        foreign_table : qp_analysis,
        foreign_key : analysis_id,
    },
   group_id : {
        table_name : qp_group_analysis,
        column_name : group_id,
        foreign_table : qp_group,
        foreign_key : group_id,
    },
}
module.exports = qp_group_analysis
