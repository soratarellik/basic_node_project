
const qp_group = {
   group_id : {
        table_name : qp_group,
        column_name : group_id,
    },
   name : {
        table_name : qp_group,
        column_name : name,
    },
   customer_id : {
        table_name : qp_group,
        column_name : customer_id,
        foreign_table : customer,
        foreign_key : customer_id,
    },
}
module.exports = qp_group
