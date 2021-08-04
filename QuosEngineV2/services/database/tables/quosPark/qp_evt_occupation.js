
const qp_evt_occupation = {
   occupation_id : {
        table_name : qp_evt_occupation,
        column_name : occupation_id,
    },
   evt_id : {
        table_name : qp_evt_occupation,
        column_name : evt_id,
        foreign_table : qp_evt,
        foreign_key : evt_id,
    },
   value : {
        table_name : qp_evt_occupation,
        column_name : value,
    },
}
module.exports = qp_evt_occupation
