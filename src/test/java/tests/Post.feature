Feature: Post API Demo

  Background:
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'
    * def expectedOutput = read('response_post.json')

  # Simple Post Request
  Scenario: Post with url
    Given url 'https://reqres.in/api/users'
    And request {"name": "morpheus", "job": "leader"}
    When method POST
    Then status 201
    And print response

  # Post with Background
  Scenario: Post with path
    Given path '/users'
    And request {"name": "morpheus", "job": "leader"}
    When method POST
    Then status 201
    And print response

  # Post with response assertion
  Scenario: Post with assertion
    Given path '/users'
    And request {"name": "morpheus", "job": "leader"}
    When method POST
    Then status 201
    And match response == {"name": "morpheus","job": "leader","id": "#string","createdAt": "#ignore"}

  # Post with get response from file
  Scenario: Post with Get Response from file
    Given path '/users'
    And request {"name": "morpheus", "job": "leader"}
    When method POST
    Then status 201
    And match response == expectedOutput

  # Post with get request body from file
  Scenario: Post with Get request body from file
    Given path '/users'
    And def requestBody = read('request_post.json')
    And request requestBody
    When method POST
    Then status 201
    And match response == expectedOutput

  # To get file path relative to project
  # def projectPath = java.lang.System.getProperty('user.dir')
  # def projectPath = karate.properties['user.dir']
  Scenario: Post with Get request body from different file path
    Given path '/users'
    And def projectPath = karate.properties['user.dir']
    And print projectPath
    And def filePath = projectPath+'/src/test/java/examples/users/request_post.json'
    And print filePath
    And def requestBody = read('file:' + filePath)
    And request requestBody
    When method POST
    Then status 201
    And match response == expectedOutput
    And match $ == expectedOutput
    And print response
