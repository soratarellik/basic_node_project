
const user_token = {
   token_id : {
        table_name : user_token,
        column_name : token_id,
    },
   user_id : {
        table_name : user_token,
        column_name : user_id,
        foreign_table : users,
        foreign_key : user_id,
    },
   reset_password_token : {
        table_name : user_token,
        column_name : reset_password_token,
    },
   reset_password_expiration : {
        table_name : user_token,
        column_name : reset_password_expiration,
    },
   confirmation_account_token : {
        table_name : user_token,
        column_name : confirmation_account_token,
    },
   confirmation_account_expiration : {
        table_name : user_token,
        column_name : confirmation_account_expiration,
    },
   change_email_token : {
        table_name : user_token,
        column_name : change_email_token,
    },
   change_email_expiration : {
        table_name : user_token,
        column_name : change_email_expiration,
    },
}
module.exports = user_token
