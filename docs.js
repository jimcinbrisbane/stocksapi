const express = require('express')
const router =  express.Router();
const YAML = require('yamljs');
const swaggerDocument = YAML.load('./swagger.yaml')
const swaggerUI = require('swagger-ui-express')

//swagger
router.use('/', swaggerUI.serve,swaggerUI.setup(swaggerDocument))

module.exports = router;