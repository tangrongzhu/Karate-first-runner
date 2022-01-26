Feature: Get API Demo

Background:
* url 'https://reqres.in/api'
* header Accept = 'application/json'

# Simple Get Request
Scenario: Get with url
  Given url 'https://reqres.in/api/users?page=2'
  When method GET
  Then status 200
  And print response
  And print responseStatus
  And print responseHeaders
  And print responseTime
  And print responseCookies

# Get with Background
Scenario: Get with path
  Given path '/users?page=2'
  When method GET
  Then status 200
  And print response

# Get with path, params
Scenario: Get with path params
  Given path '/users'
  And param page = 2
  When method GET
  Then status 200
  And print response

# Get with Assertions
Scenario: Get with assertions
  Given path '/users'
  And param page = 2
  When method GET
  Then status 200
  And print response
  And match response.data[0].first_name != null
  And assert response.data.length == 6
  And match $.data[1].id == 8
  And match $.data[3].last_name == 'Fields'
