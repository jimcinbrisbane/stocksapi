const express = require('express'); 
const router = express.Router();
const jwt = require('jsonwebtoken')

// database connect
const knex = require('knex')({
    client: 'mysql',
    connection: {
      host : '127.0.0.1',
      user: 'root',
      port: '8889',
      password: 'root',
      database : 'webcomputing'
    }
  });

router.use((req,res ,next) => {
    console.log(new Date());
    next();
})

//display everything
router.get('/symbols', function(req  , res, next) {
    if (Object.keys(req.query).length !== 0){ // if industry was mentioned
      if (req.query.industry != undefined)  {
      let industry = req.query.industry
        const notF = {
            "error": true,
            "message": "Industry sector not found"
          }
          
        return knex('stocks').select('name','symbol','industry').distinct('symbol').where('industry', 'like', `%${industry}%`).then(data => {if (data.length == 0){res.status(404).json(notF)}else{res.status(200).json(data)}})
    }
   return res.status(400).json({
    "error": true,
    "message": "Invalid query parameter: only 'industry' is permitted"
  })
}else{
  return knex('stocks').select('name','symbol','industry').distinct('symbol').then(data => res.status(200).json(data))

}});

//search my symbol
router.get('/:symbol', function(req, res, next) {
    if (req.query.from != undefined && req.query.to != undefined){
        console.log(req.query.from)
        return res.status(400).json({
            "error": true,
            "message": "Date parameters only available on authenticated route /stocks/authed"
          })
    }
   
    if (req.params.symbol !== undefined){
        return knex('stocks')
        .first()
        .where({
             symbol: req.params.symbol,
           }).then(data => data?res.status(200).json(data):res.status(404).json({"error": true,"message": "No entry for symbol in stocks database"}))
}else{
    return res.status(404).json({
        "error": true,
        "message": "No entry for symbol in stocks database"
      }
      )
}
});

// jwt is authed
router.get('/authed/:symbol',function(req,res,next){
  if (req.headers.authorization && req.headers.authorization.split(" ").length === 2){ //check token
    token = req.headers.authorization.split(" ")[1]
    console.log(token)
    const secret = '#$uperHer0$quad'

    try {
      const decode = jwt.verify(token, secret)
      if (decode.exp < Date.now()){
        console.log("token expired")
        return res.status(403).json( {
          "error": true,
          "message": "token expired"
        })
      }
      if (req.query.from != undefined && req.query.to != undefined){   //if both from and to is defined
        return knex('stocks')
        .where({
             symbol: req.params.symbol,
           })
           .whereBetween('timestamp', [req.query.from, req.query.to])
           .then(data => data?res.status(200).json(data):res.status(404).json({"error": true,  "message": "No entries available for query symbol for supplied date range"}));
    }

    if (req.query.from != undefined && req.query.to == undefined){     // if only from
      return knex('stocks')
      .where({
           symbol: req.params.symbol,
         })
         .whereBetween('timestamp', [req.query.from, new Date().toJSON()])
         .then(data => data?res.status(200).json(data):res.status(404).json({"error": true,  "message": "No entries available for query symbol for supplied date range"}));
  
    }
    if (req.query.from == undefined && req.query.to != undefined){   // if only to
      console.log(req.query.to ,'TO')
      return knex('stocks')
      .where({
           symbol: req.params.symbol,
         })
         .whereBetween('timestamp', [new Date("2000-01-01").toJSON(), req.query.to])
         .then(data => data?res.status(200).json(data):res.status(404).json({"error": true,  "message": "No entries available for query symbol for supplied date range"}));
  
    }
    
    
    
    if (req.params.symbol !== undefined){   // if symbol is not defined
        return knex('stocks')
        .where({
             symbol: req.params.symbol,
           }).then(data => data?res.status(200).json(data):res.status(404).json({"error": true,  "message": "No entries available for query symbol for supplied date range"}))
    }else{
    return res.status(400).json(    
      {"error": true,"message": "Parameters allowed are 'from' and 'to', example: /stocks/authed/AAL?from=2020-03-15"}
      )
    }

      } catch (e) {   // if unable to decode

        return res.status(403).json( {
          "error": true,
          "message": "token invalid"
        })

            }
    }
    
else {return res.status(403).json( {    // if no header
  "error": true,
  "message": "Authorization header not found"
})
}}

)
module.exports= router;
