 FAIL  ./integration.test.js (17.135s)
  stock symbols
    with invalid query parameter
      ✕ should return status code 400 (6ms)
      ✕ should return status text - Bad Request (4ms)
      ✕ should contain message property (56ms)
    with false industry
      ✓ should return status code 404
      ✓ should return status text - Not Found (1ms)
      ✓ should contain message property
    with no parameter
      ✓ should return status code 200
      ✓ should return status OK
      ✓ should contain correct first name property (1ms)
      ✓ should contain correct first symbol property
      ✓ should contain correct first industry property
    with valid query parameter
      ✕ should return status code 200 (1ms)
      ✕ should return status OK (1ms)
      ✕ should contain correct first name property
      ✕ should contain correct first symbol property (1ms)
      ✕ should contain correct first industry property
  specific stocks
    with invalid query parameters
      ✓ should return status code 400
      ✓ should return status text - Bad Request
      ✓ should contain message property
    with unknown stock symbol
      ✓ should return status code 404 (1ms)
      ✓ should return status text - Not Found
      ✓ should contain message property
    with a correctly formatted parameter
      ✓ should return status code 200 (1ms)
      ✓ should return status OK
      ✓ should contain correct name property (1ms)
      ✓ should contain correct symbol property
      ✓ should contain correct industry property
      ✓ should contain correct timestamp property (1ms)
      ✓ should contain correct open property
      ✓ should contain correct high property (1ms)
      ✓ should contain correct low property (1ms)
      ✓ should contain correct close property
      ✓ should contain correct volumes property (1ms)
  user
    registration
      with missing email
        ✓ should return status code 400
        ✓ should return status text - Bad Request (1ms)
        ✓ should contain message property
      with missing password
        ✓ should return status code 400 (1ms)
        ✓ should return status text - Bad Request
        ✓ should contain message property
      with missing email and password
        ✓ should return status code 400
        ✓ should return status text - Bad Request
        ✓ should contain message property
      with valid email and password
        ✕ should return status code 201 (1ms)
        ✕ should return status text - Created (1ms)
        ✓ should contain message property
  login
    with missing email
      ✕ should return status code 400 (1ms)
      ✕ should return status text - Created (1ms)
      ✕ should contain message property
    with missing password
      ✕ should return status code 400 (1ms)
      ✕ should return status text - Created (1ms)
      ✕ should contain message property
    with non-existing user (email)
      ✕ should return status code 401 (2ms)
      ✕ should return status text - Created (1ms)
      ✕ should contain message property (1ms)
    with invalid password
      ✓ should return status code 401
      ✓ should return status text - Created
      ✓ should contain message property (1ms)
    with valid email and password
      ✓ should return status code 200
      ✓ should return status text - OK (1ms)
      ✓ should contain token property
      ✓ should contain token_type property
      ✕ should contain expires_in property (1ms)
      ✓ should contain correct token_type
      ✕ should contain correct expires_in (1ms)
  authorised route
    with invalid paramaters/data format
      ✕ should return status code 400 (2ms)
      ✕ should return status text - Bad Request (1ms)
      ✕ should contain message property (15ms)
    with no authorisation header
      ✓ should return status code 403 (1ms)
      ✓ should return status text - Forbidden
      ✓ should contain message property
    with out of bounds dates
      ✕ should return status code 404 (1ms)
      ✕ should return status text - Not Found
      ✕ should contain message property (1ms)
    with correctly formated query and authorization header
      ✓ should return status code 200 (1ms)
      ✓ should return status text - OK
      ✓ should contain correct -to- date
      ✓ should contain correct -to- symbol
      ✓ should contain correct -to- name property (1ms)
      ✓ should contain correct -to- industry property
      ✓ should contain correct -to- open property
      ✓ should contain correct -to- high property
      ✓ should contain correct -to- low property (1ms)
      ✓ should contain correct -to- close property
      ✓ should contain correct -to- volumes property
      ✓ should contain correct -from- date (1ms)
      ✓ should contain correct -from- symbol
      ✓ should contain correct -from- name property (1ms)
      ✓ should contain correct -from- industry property
      ✓ should contain correct -from- open property
      ✓ should contain correct -from- high property (1ms)
      ✓ should contain correct -from- low property (1ms)
      ✓ should contain correct -from- close property
      ✓ should contain correct -from- volumes property

  ● stock symbols › with invalid query parameter › should return status code 400

    expect(received).toBe(expected) // Object.is equality

    Expected: 400
    Received: 200

      34 |     })
      35 | 
    > 36 |     test('should return status code 400', () => expect(response.status).toBe(400))
         |                                                                         ^
      37 |     test('should return status text - Bad Request', () => expect(response.statusText).toBe('Bad Request'))
      38 |     test('should contain message property', () => expect(response.data).toHaveProperty('message'))
      39 |   })

      at Object.toBe (integration.test.js:36:73)

  ● stock symbols › with invalid query parameter › should return status text - Bad Request

    expect(received).toBe(expected) // Object.is equality

    Expected: "Bad Request"
    Received: "OK"

      35 | 
      36 |     test('should return status code 400', () => expect(response.status).toBe(400))
    > 37 |     test('should return status text - Bad Request', () => expect(response.statusText).toBe('Bad Request'))
         |                                                                                       ^
      38 |     test('should contain message property', () => expect(response.data).toHaveProperty('message'))
      39 |   })
      40 | 

      at Object.toBe (integration.test.js:37:87)

  ● stock symbols › with invalid query parameter › should contain message property

    expect(received).toHaveProperty(path)

    Expected path: "message"
    Received path: []

    Received value: [[Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object]]

      36 |     test('should return status code 400', () => expect(response.status).toBe(400))
      37 |     test('should return status text - Bad Request', () => expect(response.statusText).toBe('Bad Request'))
    > 38 |     test('should contain message property', () => expect(response.data).toHaveProperty('message'))
         |                                                                         ^
      39 |   })
      40 | 
      41 |   describe('with false industry', () => {

      at Object.toHaveProperty (integration.test.js:38:73)

  ● stock symbols › with valid query parameter › should return status code 200

    expect(received).toBe(expected) // Object.is equality

    Expected: 200
    Received: 404

      73 |     })
      74 | 
    > 75 |     test('should return status code 200', () => expect(response.status).toBe(200))
         |                                                                         ^
      76 |     test('should return status OK', () => expect(response.statusText).toBe('OK'))
      77 |     test('should contain correct first name property', () => expect(response.data[0].name).toBe("American Airlines Group"))
      78 |     test('should contain correct first symbol property', () => expect(response.data[0].symbol).toBe("AAL"))

      at Object.toBe (integration.test.js:75:73)

  ● stock symbols › with valid query parameter › should return status OK

    expect(received).toBe(expected) // Object.is equality

    Expected: "OK"
    Received: "Not Found"

      74 | 
      75 |     test('should return status code 200', () => expect(response.status).toBe(200))
    > 76 |     test('should return status OK', () => expect(response.statusText).toBe('OK'))
         |                                                                       ^
      77 |     test('should contain correct first name property', () => expect(response.data[0].name).toBe("American Airlines Group"))
      78 |     test('should contain correct first symbol property', () => expect(response.data[0].symbol).toBe("AAL"))
      79 |     test('should contain correct first industry property', () => expect(response.data[0].industry).toBe("Industrials"))

      at Object.toBe (integration.test.js:76:71)

  ● stock symbols › with valid query parameter › should contain correct first name property

    TypeError: Cannot read property 'name' of undefined

      75 |     test('should return status code 200', () => expect(response.status).toBe(200))
      76 |     test('should return status OK', () => expect(response.statusText).toBe('OK'))
    > 77 |     test('should contain correct first name property', () => expect(response.data[0].name).toBe("American Airlines Group"))
         |                                                                                      ^
      78 |     test('should contain correct first symbol property', () => expect(response.data[0].symbol).toBe("AAL"))
      79 |     test('should contain correct first industry property', () => expect(response.data[0].industry).toBe("Industrials"))
      80 | 

      at Object.name (integration.test.js:77:86)

  ● stock symbols › with valid query parameter › should contain correct first symbol property

    TypeError: Cannot read property 'symbol' of undefined

      76 |     test('should return status OK', () => expect(response.statusText).toBe('OK'))
      77 |     test('should contain correct first name property', () => expect(response.data[0].name).toBe("American Airlines Group"))
    > 78 |     test('should contain correct first symbol property', () => expect(response.data[0].symbol).toBe("AAL"))
         |                                                                                        ^
      79 |     test('should contain correct first industry property', () => expect(response.data[0].industry).toBe("Industrials"))
      80 | 
      81 |   })

      at Object.symbol (integration.test.js:78:88)

  ● stock symbols › with valid query parameter › should contain correct first industry property

    TypeError: Cannot read property 'industry' of undefined

      77 |     test('should contain correct first name property', () => expect(response.data[0].name).toBe("American Airlines Group"))
      78 |     test('should contain correct first symbol property', () => expect(response.data[0].symbol).toBe("AAL"))
    > 79 |     test('should contain correct first industry property', () => expect(response.data[0].industry).toBe("Industrials"))
         |                                                                                          ^
      80 | 
      81 |   })
      82 | 

      at Object.industry (integration.test.js:79:90)

  ● user › registration › with valid email and password › should return status code 201

    expect(received).toBe(expected) // Object.is equality

    Expected: 201
    Received: 200

      169 |       })
      170 | 
    > 171 |       test('should return status code 201', () => expect(response.status).toBe(201))
          |                                                                           ^
      172 |       test('should return status text - Created', () => expect(response.statusText).toBe('Created'))
      173 |       test('should contain message property', () => expect(response.data).toHaveProperty('message'))
      174 |     })

      at Object.toBe (integration.test.js:171:75)

  ● user › registration › with valid email and password › should return status text - Created

    expect(received).toBe(expected) // Object.is equality

    Expected: "Created"
    Received: "OK"

      170 | 
      171 |       test('should return status code 201', () => expect(response.status).toBe(201))
    > 172 |       test('should return status text - Created', () => expect(response.statusText).toBe('Created'))
          |                                                                                     ^
      173 |       test('should contain message property', () => expect(response.data).toHaveProperty('message'))
      174 |     })
      175 |   })

      at Object.toBe (integration.test.js:172:85)

  ● login › with missing email › should return status code 400

    Timeout - Async callback was not invoked within the 5000ms timeout specified by jest.setTimeout.Error: Timeout - Async callback was not invoked within the 5000ms timeout specified by jest.setTimeout.

      at mapper (node_modules/jest/node_modules/jest-jasmine2/build/queueRunner.js:25:45)

  ● login › with missing email › should return status code 400

    expect(received).toBe(expected) // Object.is equality

    Expected: 400
    Received: 200

      182 |       return response = request.resolve ? request.resolve : request.reject.response
      183 |     })
    > 184 |     test('should return status code 400', () => expect(response.status).toBe(400))
          |                                                                         ^
      185 |     test('should return status text - Created', () => expect(response.statusText).toBe('Bad Request'))
      186 |     test('should contain message property', () => expect(response.data).toHaveProperty('message'))
      187 |   })

      at Object.toBe (integration.test.js:184:73)

  ● login › with missing email › should return status text - Created

    Timeout - Async callback was not invoked within the 5000ms timeout specified by jest.setTimeout.Error: Timeout - Async callback was not invoked within the 5000ms timeout specified by jest.setTimeout.

      at mapper (node_modules/jest/node_modules/jest-jasmine2/build/queueRunner.js:25:45)

  ● login › with missing email › should return status text - Created

    expect(received).toBe(expected) // Object.is equality

    Expected: "Bad Request"
    Received: "OK"

      183 |     })
      184 |     test('should return status code 400', () => expect(response.status).toBe(400))
    > 185 |     test('should return status text - Created', () => expect(response.statusText).toBe('Bad Request'))
          |                                                                                   ^
      186 |     test('should contain message property', () => expect(response.data).toHaveProperty('message'))
      187 |   })
      188 | 

      at Object.toBe (integration.test.js:185:83)

  ● login › with missing email › should contain message property

    Timeout - Async callback was not invoked within the 5000ms timeout specified by jest.setTimeout.Error: Timeout - Async callback was not invoked within the 5000ms timeout specified by jest.setTimeout.

      at mapper (node_modules/jest/node_modules/jest-jasmine2/build/queueRunner.js:25:45)

  ● login › with missing password › should return status code 400

    Timeout - Async callback was not invoked within the 5000ms timeout specified by jest.setTimeout.Error: Timeout - Async callback was not invoked within the 5000ms timeout specified by jest.setTimeout.

      at mapper (node_modules/jest/node_modules/jest-jasmine2/build/queueRunner.js:25:45)

  ● login › with missing password › should return status code 400

    expect(received).toBe(expected) // Object.is equality

    Expected: 400
    Received: 200

      192 |       return response = request.resolve ? request.resolve : request.reject.response
      193 |     })
    > 194 |     test('should return status code 400', () => expect(response.status).toBe(400))
          |                                                                         ^
      195 |     test('should return status text - Created', () => expect(response.statusText).toBe('Bad Request'))
      196 |     test('should contain message property', () => expect(response.data).toHaveProperty('message'))
      197 |   })

      at Object.toBe (integration.test.js:194:73)

  ● login › with missing password › should return status text - Created

    Timeout - Async callback was not invoked within the 5000ms timeout specified by jest.setTimeout.Error: Timeout - Async callback was not invoked within the 5000ms timeout specified by jest.setTimeout.

      at mapper (node_modules/jest/node_modules/jest-jasmine2/build/queueRunner.js:25:45)

  ● login › with missing password › should return status text - Created

    expect(received).toBe(expected) // Object.is equality

    Expected: "Bad Request"
    Received: "OK"

      193 |     })
      194 |     test('should return status code 400', () => expect(response.status).toBe(400))
    > 195 |     test('should return status text - Created', () => expect(response.statusText).toBe('Bad Request'))
          |                                                                                   ^
      196 |     test('should contain message property', () => expect(response.data).toHaveProperty('message'))
      197 |   })
      198 | 

      at Object.toBe (integration.test.js:195:83)

  ● login › with missing password › should contain message property

    Timeout - Async callback was not invoked within the 5000ms timeout specified by jest.setTimeout.Error: Timeout - Async callback was not invoked within the 5000ms timeout specified by jest.setTimeout.

      at mapper (node_modules/jest/node_modules/jest-jasmine2/build/queueRunner.js:25:45)

  ● login › with non-existing user (email) › should return status code 401

    Timeout - Async callback was not invoked within the 5000ms timeout specified by jest.setTimeout.Error: Timeout - Async callback was not invoked within the 5000ms timeout specified by jest.setTimeout.

      at mapper (node_modules/jest/node_modules/jest-jasmine2/build/queueRunner.js:25:45)

  ● login › with non-existing user (email) › should return status code 401

    expect(received).toBe(expected) // Object.is equality

    Expected: 401
    Received: 200

      203 |     })
      204 | 
    > 205 |     test('should return status code 401', () => expect(response.status).toBe(401))
          |                                                                         ^
      206 |     test('should return status text - Created', () => expect(response.statusText).toBe('Unauthorized'))
      207 |     test('should contain message property', () => expect(response.data).toHaveProperty('message'))
      208 |   })

      at Object.toBe (integration.test.js:205:73)

  ● login › with non-existing user (email) › should return status text - Created

    Timeout - Async callback was not invoked within the 5000ms timeout specified by jest.setTimeout.Error: Timeout - Async callback was not invoked within the 5000ms timeout specified by jest.setTimeout.

      at mapper (node_modules/jest/node_modules/jest-jasmine2/build/queueRunner.js:25:45)

  ● login › with non-existing user (email) › should return status text - Created

    expect(received).toBe(expected) // Object.is equality

    Expected: "Unauthorized"
    Received: "OK"

      204 | 
      205 |     test('should return status code 401', () => expect(response.status).toBe(401))
    > 206 |     test('should return status text - Created', () => expect(response.statusText).toBe('Unauthorized'))
          |                                                                                   ^
      207 |     test('should contain message property', () => expect(response.data).toHaveProperty('message'))
      208 |   })
      209 | 

      at Object.toBe (integration.test.js:206:83)

  ● login › with non-existing user (email) › should contain message property

    Timeout - Async callback was not invoked within the 5000ms timeout specified by jest.setTimeout.Error: Timeout - Async callback was not invoked within the 5000ms timeout specified by jest.setTimeout.

      at mapper (node_modules/jest/node_modules/jest-jasmine2/build/queueRunner.js:25:45)

  ● login › with valid email and password › should contain expires_in property

    expect(received).toHaveProperty(path)

    Expected path: "expires_in"
    Received path: []

    Received value: {"expires": 86400, "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Ijc1MzMyMzUxLTRjM2ItNDYxOC1hZmQ5LTc3NGY3Zjk0MGEzMUBmYWtlLWVtYWlsLmNvbSIsImV4cCI6MTU5MTg0NzA3MjQ4NywiaWF0IjoxNTkxNzYwNjcyfQ.5itzpMcph0b5eK-U7JWNuLGORGrQB1cJT-EwdWnhtQI", "token_type": "Bearer"}

      229 |     test('should contain token property', () => expect(response.data).toHaveProperty('token'))
      230 |     test('should contain token_type property', () => expect(response.data).toHaveProperty('token_type'))
    > 231 |     test('should contain expires_in property', () => expect(response.data).toHaveProperty('expires_in'))
          |                                                                            ^
      232 |     test('should contain correct token_type', () => expect(response.data.token_type).toBe(`Bearer`))
      233 |     test('should contain correct expires_in', () => expect(response.data.expires_in).toBe(86400))
      234 |   })

      at Object.toHaveProperty (integration.test.js:231:76)

  ● login › with valid email and password › should contain correct expires_in

    expect(received).toBe(expected) // Object.is equality

    Expected: 86400
    Received: undefined

      231 |     test('should contain expires_in property', () => expect(response.data).toHaveProperty('expires_in'))
      232 |     test('should contain correct token_type', () => expect(response.data.token_type).toBe(`Bearer`))
    > 233 |     test('should contain correct expires_in', () => expect(response.data.expires_in).toBe(86400))
          |                                                                                      ^
      234 |   })
      235 | })
      236 | 

      at Object.toBe (integration.test.js:233:86)

  ● authorised route › with invalid paramaters/data format › should return status code 400

    expect(received).toBe(expected) // Object.is equality

    Expected: 400
    Received: 200

      250 |     })
      251 | 
    > 252 |     test('should return status code 400', () => expect(response.status).toBe(400))
          |                                                                         ^
      253 |     test('should return status text - Bad Request', () => expect(response.statusText).toBe('Bad Request'))
      254 |     test('should contain message property', () => expect(response.data).toHaveProperty('message'))
      255 |   })

      at Object.toBe (integration.test.js:252:73)

  ● authorised route › with invalid paramaters/data format › should return status text - Bad Request

    expect(received).toBe(expected) // Object.is equality

    Expected: "Bad Request"
    Received: "OK"

      251 | 
      252 |     test('should return status code 400', () => expect(response.status).toBe(400))
    > 253 |     test('should return status text - Bad Request', () => expect(response.statusText).toBe('Bad Request'))
          |                                                                                       ^
      254 |     test('should contain message property', () => expect(response.data).toHaveProperty('message'))
      255 |   })
      256 | 

      at Object.toBe (integration.test.js:253:87)

  ● authorised route › with invalid paramaters/data format › should contain message property

    expect(received).toHaveProperty(path)

    Expected path: "message"
    Received path: []

    Received value: [[Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object], [Object]]

      252 |     test('should return status code 400', () => expect(response.status).toBe(400))
      253 |     test('should return status text - Bad Request', () => expect(response.statusText).toBe('Bad Request'))
    > 254 |     test('should contain message property', () => expect(response.data).toHaveProperty('message'))
          |                                                                         ^
      255 |   })
      256 | 
      257 |   describe('with no authorisation header', () => {

      at Object.toHaveProperty (integration.test.js:254:73)

  ● authorised route › with out of bounds dates › should return status code 404

    expect(received).toBe(expected) // Object.is equality

    Expected: 404
    Received: 200

      273 |     })
      274 | 
    > 275 |     test('should return status code 404', () => expect(response.status).toBe(404))
          |                                                                         ^
      276 |     test('should return status text - Not Found', () => expect(response.statusText).toBe('Not Found'))
      277 |     test('should contain message property', () => expect(response.data).toHaveProperty('message'))
      278 |   })

      at Object.toBe (integration.test.js:275:73)

  ● authorised route › with out of bounds dates › should return status text - Not Found

    expect(received).toBe(expected) // Object.is equality

    Expected: "Not Found"
    Received: "OK"

      274 | 
      275 |     test('should return status code 404', () => expect(response.status).toBe(404))
    > 276 |     test('should return status text - Not Found', () => expect(response.statusText).toBe('Not Found'))
          |                                                                                     ^
      277 |     test('should contain message property', () => expect(response.data).toHaveProperty('message'))
      278 |   })
      279 | 

      at Object.toBe (integration.test.js:276:85)

  ● authorised route › with out of bounds dates › should contain message property

    expect(received).toHaveProperty(path)

    Expected path: "message"
    Received path: []

    Received value: []

      275 |     test('should return status code 404', () => expect(response.status).toBe(404))
      276 |     test('should return status text - Not Found', () => expect(response.statusText).toBe('Not Found'))
    > 277 |     test('should contain message property', () => expect(response.data).toHaveProperty('message'))
          |                                                                         ^
      278 |   })
      279 | 
      280 |   describe('with correctly formated query and authorization header', () => {

      at Object.toHaveProperty (integration.test.js:277:73)

Test Suites: 1 failed, 1 total
Tests:       27 failed, 66 passed, 93 total
Snapshots:   0 total
Time:        20.344s
Ran all test suites.
jest-html-reporter >> Report generated (report.html)
Jest did not exit one second after the test run has completed.

This usually means that there are asynchronous operations that weren't stopped in your tests. Consider running Jest with `--detectOpenHandles` to troubleshoot this issue.
