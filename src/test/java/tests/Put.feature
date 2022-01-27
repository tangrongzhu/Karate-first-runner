Feature:  PUT API Demo

Background:
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'
    * def expectedOutput = read('response_post.json')

  Scenario: PUT demo 1
    Given path '/users/2'
    And def requestBody = read('request_put.json')
    And request requestBody
    When method PUT
    Then status 200
    And print response
    And print responseStatus