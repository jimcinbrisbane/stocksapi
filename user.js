const express = require('express'); 
const router = express.Router();
const bcrypt = require('bcrypt');
const saltRounds = 7;
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
const jsonwebtoken = require('jsonwebtoken')


router.use((req,res ,next) => {
    console.log(new Date());
    next();
})

// register account
router.post('/register' , function(req, res, next) {
    // if email or password is empty
    if (typeof req.body.email != 'undefined' &&  typeof req.body.password != 'undefined'){
      console.log(typeof req.body.password)
    let data = {email : req.body.email, password : req.body.password}
          // check if table exist
    knex.schema.hasTable('users').then(function(exists) {
        if (!exists) {
          return knex.schema.createTable('users', function(t) {
            t.increments('id').primary();
            t.string('email');
            t.string('password');
          });
        }
      })
      //create user
      knex.select("email").from("users").where("email", data.email).then(x => {if(x.length === 0){
            bcrypt.hash(data.password, saltRounds, function(err, hash) {
              // hash password and insert in database
    
                knex('users').insert([{email: data.email,password: hash}]).then(res.status(201).json({
                    "success": true,
                    "message": "User created"
                  }))
            });  // if user already exist
        }else{res.status(409).json({
            "error": true,
            "message": "User already exists!"
          })}})


        }else{
        res.status(400).json({
        "error": true,
        "message": "Request body incomplete - email and password needed"
      })

    }
})
// if sent get request not post
router.get('/register' , function(req, res, next) {
    res.status(400).json({
        "error": true,
        "message": "need to be a post request"
      }
)})


router.get('/login' , function(req, res, next) {
    res.status(400).json({
        "error": true,
        "message": "need to be a post request"
      }
)})


router.post('/login' , function(req, res, next) {
    // if email or password is empty
    if (req.body.email != '' || req.body.password != '' || req.body.email != undefined ||req.body.password != undefined){
    let data = {email : req.body.email, password : req.body.password}
          // check if table exist
          knex.schema.hasTable('users').then(function(exists) {
            if (!exists) {
              return knex.schema.createTable('users', function(t) {
                t.increments('id').primary();
                t.string('email');
                t.string('password');
              });
            }
          })
        if (data.email != undefined && data.password != undefined){
            knex.select("email","password").from("users").where("email", data.email).then(x => {if(x.length === 0){
               res.status(401).json({
                "error": true,
                "message": "Incorrect email or password"
              })
            }else{
              // check password
                bcrypt.compare(data.password, x[0].password, function(err, result) {
                // give token
                if (result === true){
                  const secret = '#$uperHer0$quad'
                  const expire = 86400
                  const exp = Date.now()+expire*1000
                  const email = data.email
                  const token = jsonwebtoken.sign({email, exp}, secret)
                    res.json(
                    {
                        "token": token,
                        "token_type": "Bearer",
                        "expires_in": expire
                      })
                }else {
                    res.status(401).json(
                        {
                            "error": true,
                            "message": "Incorrect email or password"
                          })
                        }
                })
            ;
    
    
        }})
}else {
    res.status(400).json(
        {
            "error": true,
            "message": "Request body invalid - email and password are required"
          })
}


}})


module.exports= router;