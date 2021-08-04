const  fs = require('fs');
const path = require('path');

function createRepositoryIfNotExist(dirPath) {
  if (!fs.existsSync(dirPath)) {
    fs.mkdirSync(dirPath);
  }
}
async function writeClientFile(clientId, section, file, fileName, extension) {
  try {
    const clientPath = path.resolve(__dirname, `../../files/client-${clientId}/`);
    await createRepositoryIfNotExist(clientPath);
    const sectionPath = path.resolve(__dirname, `../../files/client-${clientId}/${section}`);
    await createRepositoryIfNotExist(sectionPath);
    const filePath = path.resolve(__dirname, `../../files/client-${clientId}/${section}/${fileName}.${extension}`);
    fs.writeFile(filePath, file, (err, res) => {
      console.log(err, res)
    })
    return filePath

  } catch (error) {
    console.log(error)
  }
}
async function transfertFileToClientRepository(clientId, section , fileName, extension , currentPath) {
  try {
    await createRepositoryIfNotExist(path.resolve(__dirname, `../../files/client-${clientId}/`));
    await createRepositoryIfNotExist(path.resolve(__dirname, `../../files/client-${clientId}/${section}`));
    const filePath = path.resolve(__dirname, `../../files/client-${clientId}/${section}/${fileName}.${extension}`);
    const sourceFile = path.resolve(__dirname, '../../' , currentPath)
    await fs.rename(sourceFile, filePath,  (err, res) => {
  
      if(err){
        console.log(err)
      }
    })
    return  filePath

  } catch (error) {
    console.log(error)
  }
}

async function deleteFile(filePath) {
  const sourceFile = path.resolve(__dirname, filePath)
  fs.unlink(filePath)
  return filePath
}
function fileExist(filePath) {
  try {
    return fs.existsSync(filePath)
  } catch (err) {
    console.error(err)
  }
}
module.exports = {
  createRepositoryIfNotExist,
  writeClientFile,
  transfertFileToClientRepository,
  deleteFile,
  fileExist
};
