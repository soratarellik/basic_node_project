const {knex} = require("../services/database/database");
const fs = require('fs');

const dbScriptPath = "../services/database/drop_bdd.sql"

const execSQL = () => {
    fs.readFile(dbScriptPath , async (err , data)=>{
        const scriptSQL = data.toString().replace(/--.+/g, '').replace(/[\n\r\t]/g, ' ');
        console.log(scriptSQL);
        await knex.raw(scriptSQL);
        process.exit()
    })
}

module.exports = execSQL