Feature: karate config demo

Background:
* url baseURL
* def secretKey = apiKey
* header Accept = 'application/json'

  Scenario: Config demo
    Given print env
    And print baseURL

  # Get with Background
  Scenario: Get with bashUrl
  * configure headers = { KeyId: '#(secretKey)', Accept: 'application/json' }
    Given path '/users?page=2'
    When method GET
    Then status 200
    And print response