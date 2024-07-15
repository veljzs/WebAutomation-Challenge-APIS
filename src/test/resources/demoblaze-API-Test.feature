Feature: Signup y Login API Tests

  Background:
    * url 'https://api.demoblaze.com'

  Scenario: Crear un nuevo usuario
    Given path 'signup'
    And request { username: 'usuario654882', password: 'password123' } #Cambiar a datos de un nuevo usuario
    And header Content-Type = 'application/json'
    And header Origin = 'https://www.demoblaze.com'
    And header User-Agent = 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36'
    When method post
    Then status 200
    * def responseBody = response
    * print responseBody
    * if (responseBody == '') karate.log('User created successfully')
    * if (responseBody.errorMessage) karate.fail('User already exists: ' + responseBody.errorMessage)

  Scenario: Intentar crear un usuario ya existente
    Given path 'signup'
    And request { username: 'usuario654882', password: 'password123' }
    And header Content-Type = 'application/json'
    And header Origin = 'https://www.demoblaze.com'
    And header User-Agent = 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36'
    When method post
    Then status 200
    * def responseBody = response
    * print responseBody
    * match responseBody.errorMessage == "This user already exist."

  Scenario: Usuario y password correcto en login
    Given path 'login'
    And request { "username": "usuario654882", "password": "password123" }
    And header Content-Type = 'application/json'
    And header Origin = 'https://www.demoblaze.com'
    And header User-Agent = 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36'
    When method post
    Then status 200
    * def responseBody = response
    * print responseBody
    * karate.log('Response Body:', responseBody)
    * if (!responseBody.contains('Auth_token:')) karate.fail('Login failed, no Auth_token found')
    * karate.log('Login successful, Auth_token found')

  Scenario: Usuario y password incorrecto en login
    Given path 'login'
    And request { "username": "usuario93645", "password": "passwordIncorrecto" }
    And header Content-Type = 'application/json'
    And header Origin = 'https://www.demoblaze.com'
    And header User-Agent = 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36'
    When method post
    Then status 200
    * def responseBody = response
    * print responseBody
    * if (responseBody.errorMessage != "Wrong password." && responseBody.errorMessage != "User does not exist.") {karate.fail('Unexpected error message: ' + responseBody.errorMessage)}