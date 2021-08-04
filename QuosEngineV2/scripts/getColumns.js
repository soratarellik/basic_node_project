const {knex, inspector} = require("../services/database/database");
const fs = require('fs');
const path = require('path');
const UserTables = require("../services/database/tables/userTables");
const qaTables = require("../services/database/tables/qaTables");
const customerTables = require("../services/database/tables/customerTables");
const sharedTables = require("../services/database/tables/sharedTables");
const { createRepositoryIfNotExist } = require("../tools/fileUtils");
const { argv } = require("process");

const columnsPath = `../services/database/tables/columns/`
// const columnsUserPath = "../services/database/tables/columns/user/";
// const columnsQuosAirPath = "../services/database/tables/columns/quosAir/";
// const columnsSharedPath = "../services/database/tables/columns/shared/";
// const columnsCustomerPath = "../services/database/tables/columns/customer/";

const slash = process.platform === "win32" ? "\\" : "/";
const setRepository = async (repoName) => {
    const columnPath = path.resolve(__dirname, `${columnsPath}${repoName}`);
    await createRepositoryIfNotExist(columnPath);
    return columnPath+slash;
}



const makeUserColumnFile = async () => {
    const path = await setRepository("user");
    const columns = Object.values(UserTables).map( (table)=>{
        return knex.table(table).columnInfo();
    });
    Promise.all(columns).then(
        (columns)=>{     
            console.log(columns);
            columns.forEach((col , i ) => {
                let tableName = Object.values(UserTables)[i];
                let inter =  Object.keys(col).map(c => `${c} : "${c}"` );
                let data =  
`const ${tableName} = {
    ${inter.join(",\n\t")}
}`                  
                console.log(path)
                fs.writeFile( path+tableName+'.js' , data, {flag : "w+"}, (err)=>{
                    // console.log(err);
                } ); 
            });
        },
         (err)=>{console.log(err);}
     );
}
const makeQuosAirColumnFile = async () => {
    const path = await setRepository("quosAir");

    const columns = Object.values(qaTables).map( (table)=>{
        return knex.table(table).columnInfo();
    });
    Promise.all(columns).then(
        (columns)=>{     
            columns.forEach((col , i ) => {
                let tableName = Object.values(qaTables)[i];
                let inter =  Object.keys(col).map(c => `${c} : "${c}"` );
                let data =  
`const ${tableName} = {
    ${inter.join(",\n\t")}
}`              
                console.log(path)
                fs.writeFile( path+tableName+'.js' , data, {flag : "w+"}, (err)=>{
                    // console.log(err);
                } ); 
            });
        },
         (err)=>{console.log(err);}
     );
}
const makeSharedColumnFile = async () => {
    const path = await setRepository("shared");
    const columns = Object.values(sharedTables).map( (table)=>{
        return knex.table(table).columnInfo();
    });
    Promise.all(columns).then(
        (columns)=>{     
            columns.forEach((col , i ) => {
                let tableName = Object.values(UserTables)[i];
                let inter =  Object.keys(col).map(c => `${c} : "${c}"` );
                let data =  
`const ${tableName} = {
    ${inter.join(",\n\t")}
}`
                fs.writeFile( path+tableName+'.js' , data, {flag : "w+"}, (err)=>{
                    console.log(err);
                } ); 
            });
        },
         (err)=>{console.log(err);}
     );
}
const makeCustomerColumnFile = async () => {
    const path = await setRepository("customer");
    console.log(customerTables);
    const columns = Object.values(customerTables).map( (table)=>{
        return knex.table(table).columnInfo();
    });
    
    Promise.all(columns).then(
        (columns)=>{     
            console.log(columns);
            columns.forEach((col , i ) => {
                let tableName = Object.values(customerTables)[i];
                let inter =  Object.keys(col).map(c => `${c} : "${c}"` );
                let data =  
`const ${tableName} = {
    ${inter.join(",\n\t")}
}`
                fs.writeFile( path+tableName+'.js' , data, {flag : "w+"}, (err)=>{
                    console.log(err);
                } ); 
            });
        },
         (err)=>{console.log(err);}
     );
}

const inspect = async (table)=>{
    console.log("get info of" , table);
    const res =  await inspector.columnInfo(table)
    return res;
}

const options = async (arg)=>{
    console.log(arg)
    if(arg[2] === "user"){
        makeUserColumnFile();
    }else if(arg[2] === "customer"){
        makeCustomerColumnFile();
    }else if(arg[2] === "quosair"){
        makeQuosAirColumnFile();
    }else if(arg[2] === "shared"){
        makeSharedColumnFile();
    }else if(arg[2] === "inspect"){
        if(argv[3]){
            const columns = await inspect(arg[3]);
            console.log(columns);
            const foreignKeys = columns.find((column)=>{
                return column.foreign_key_table !== null
            })
            console.log(foreignKeys);
        }
    }
}

options(argv);

module.exports = {
    makeUserColumnFile,
    makeCustomerColumnFile,
    makeQuosAirColumnFile,
    makeSharedColumnFile
}