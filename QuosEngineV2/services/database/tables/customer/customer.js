
const customer = {
   customer_id : {
        table_name : customer,
        column_name : customer_id,
    },
   name : {
        table_name : customer,
        column_name : name,
    },
   activity : {
        table_name : customer,
        column_name : activity,
    },
   telephone : {
        table_name : customer,
        column_name : telephone,
    },
   address_id : {
        table_name : customer,
        column_name : address_id,
        foreign_table : address,
        foreign_key : address_id,
    },
   contact_last_name : {
        table_name : customer,
        column_name : contact_last_name,
    },
   contact_fisrt_name : {
        table_name : customer,
        column_name : contact_fisrt_name,
    },
   contact_mail : {
        table_name : customer,
        column_name : contact_mail,
    },
   siret : {
        table_name : customer,
        column_name : siret,
    },
}
module.exports = customer
