const express = require('express');
const router = express.Router();

router.get('/characters/count', (req, res, next) => { res.send({ message: 'ok' }) }/*getCharactersCount*/);
router.get('/sentences/count', /*getSentencesCount*/);


module.exports = router;
