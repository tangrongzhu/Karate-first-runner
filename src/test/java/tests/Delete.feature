Feature:  Delete API Demo

Background:
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'

  Scenario: DELETE demo 1
    Given path '/users/2'
    When method DELETE
    Then status 204
    And print response