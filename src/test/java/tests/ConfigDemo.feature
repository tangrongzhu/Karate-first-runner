Feature: karate config demo

Background:
* url baseURL
* header Accept = 'application/json'

  Scenario: Config demo
    Given print env
    And print baseURL

  # Get with Background
  Scenario: Get with bashUrl
    Given path '/users?page=2'
    When method GET
    Then status 200
    And print response