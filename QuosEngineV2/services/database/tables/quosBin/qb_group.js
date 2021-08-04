
const qb_group = {
   group_id : {
        table_name : qb_group,
        column_name : group_id,
    },
   name : {
        table_name : qb_group,
        column_name : name,
    },
   customer_id : {
        table_name : qb_group,
        column_name : customer_id,
        foreign_table : customer,
        foreign_key : customer_id,
    },
}
module.exports = qb_group
