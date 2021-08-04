const {knex, inspector} = require("../services/database/database");
const fs = require('fs');
const path = require('path');
const { createRepositoryIfNotExist } = require("../tools/fileUtils");
const { argv } = require("process");

const columnsPath = `../services/database/tables/`
// const columnsUserPath = "../services/database/tables/columns/user/";
// const columnsQuosAirPath = "../services/database/tables/columns/quosAir/";
// const columnsSharedPath = "../services/database/tables/columns/shared/";
// const columnsCustomerPath = "../services/database/tables/columns/customer/";

const slash = process.platform === "win32" ? "\\" : "/";
const setRepository = (repoName = '') => {
    const columnPath = path.resolve(__dirname, `${columnsPath}${repoName}`);
    return columnPath+slash;
}
const defaultContent = (table_name) => {
    const content = 
`
const ${table_name} = {
#content
}
module.exports = ${table_name}
`;
    return content;
}
const resetRepositories = (path = columnsPath) => {
    fs.rmdirSync(path, { recursive: true });
    createRepositoryIfNotExist(path)
}
const manageRepertory =  (table_name)=>{
    let path;
    
    if(/^qp/.test(table_name)){
        path =  setRepository("quosPark");
    }
    else if(/^qa/.test(table_name)){
        path =  setRepository("quosAir");
    }
    else if(/^qs/.test(table_name)){
        path =  setRepository("quosSilo");
    }
    else if(/^qb/.test(table_name)){
        path =  setRepository("quosBin");
    }
    else if(/^qt/.test(table_name)){
        path =  setRepository("quosTerra");
    }
    else if(/^user/.test(table_name)){
        path =  setRepository("user");
    }
    else if(/^customer/.test(table_name)){
        path =  setRepository("customer");
    }else{
        path =  setRepository('shared')
    }
    return path;
}

const makeFiles = async ()=>{
    resetRepositories();
    const tables = await inspector.tables();
    const columnInfo = tables.map(async table=>{
        return await inspector.columnInfo(table);
    });
    Promise.all(columnInfo).then(
        (tables)=>{
            tables.map(async columns=> {
                const table_name = columns[0].table;
                const template = defaultContent(table_name);
                const path = manageRepertory(table_name);
                console.log(path)
                createRepositoryIfNotExist(path);
                const text =  columns.map(column=>{
         
                    let data
                    if(column.foreign_key_table){
                        data = 
`   ${column.name} : {
        table_name : ${column.table},
        column_name : ${column.name},
        foreign_table : ${column.foreign_key_table},
        foreign_key : ${column.foreign_key_column},
    },`
                    }else{
                        data = 
`   ${column.name} : {
        table_name : ${column.table},
        column_name : ${column.name},
    },` 
                    }
                    
                    return data
                })
                const data = template.replace('#content' , text.join('\n'))
                fs.writeFile( path+table_name+'.js' , data, {flag : "w+"}, (err)=>{
                    if(err) console.log(err);
                } ); 
                console.log(data);
            })
            
        },
        (err)=>{console.log(err);}
    )
    



    // if(argv[3]){
    //     const columns = await inspect(arg[3]);
    //     console.log(columns);
    //     const foreignKeys = columns.find((column)=>{
    //         return column.foreign_key_table !== null
    //     })
    //     console.log(foreignKeys);
    // }
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
    makeFiles()
}

// options(argv);
makeFiles();

module.exports = {
    makeUserColumnFile,
    makeCustomerColumnFile,
    makeQuosAirColumnFile,
    makeSharedColumnFile,
    makeFiles
}