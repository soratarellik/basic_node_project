
const qb_tour = {
   tour_id : {
        table_name : qb_tour,
        column_name : tour_id,
    },
   start_date : {
        table_name : qb_tour,
        column_name : start_date,
    },
   end_date : {
        table_name : qb_tour,
        column_name : end_date,
    },
   user_id : {
        table_name : qb_tour,
        column_name : user_id,
        foreign_table : users,
        foreign_key : user_id,
    },
   customer_id : {
        table_name : qb_tour,
        column_name : customer_id,
        foreign_table : customer,
        foreign_key : customer_id,
    },
}
module.exports = qb_tour
