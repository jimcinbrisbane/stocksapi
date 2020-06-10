// `SELECT volumes,symbol FROM stocks WHERE symbol='A'`
const express = require('express')
const app = express()
const helmet = require('helmet')
const cors  = require('cors');  
const port = 3000
app.use(helmet());
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({extended: false})); 
var indexRouter =  require('./index');
var docRouter =  require('./docs');
var userRouter =  require('./user');


function logOriginalUrl(req, res, next) {
    console.log('Request URL:', req.originalUrl)
    next()
}
function logMethod(req ,res, next) {
    console.log('Request Type:', req.method)
    next()
}

var logStuff= [logOriginalUrl, logMethod]


//routes
app.use('/stocks', logStuff, indexRouter);
app.use('/user', logStuff, userRouter);
app.use('/',logStuff, docRouter);



app.listen(port, () => console.log(`Example app listening at http://localhost:${port}`))