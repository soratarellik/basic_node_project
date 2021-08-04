const {knex} = require("../services/database/database");
const fs = require('fs');
const path = require('path');

// const dbScriptPath = "../services/database/mount_bdd.sql"
const dbScriptPath = path.resolve(__dirname, "../services/database/mount_bdd.sql");
console.log(dbScriptPath)
const execSQL = async ()=>{
    fs.readFile(dbScriptPath , async (err , data)=>{
    if(err) {
        console.log(err);
        process.exit()
    }
    const scriptSQL = data.toString().replace(/--.+/g, '').replace(/[\n\r\t]/g, ' ');
    console.log(scriptSQL);
    await knex.raw(scriptSQL);
    process.exit()
})}

module.exports = execSQL 