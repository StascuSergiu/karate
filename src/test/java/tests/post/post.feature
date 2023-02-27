Feature: POST API demo

  Background:
    * url 'https://reqres.in/api'
    * header Accept = 'application.json'
    * def expectedJSONResponse = read("postValidationData.json")

  Scenario: POST demo 1
    Given url 'https://reqres.in/api/users'
    And request  {"name": "Demo1","job": "tester"}
    When method POST
    Then status 201
    And print response

  Scenario: POST demo 2 background
    Given path 'users'
    And request  {"name": "Demo2","job": "tester"}
    When method POST
    Then status 201
    And print response

  Scenario: POST demo 3 json validation
    Given path 'users'
    And request  {"name": "Demo3","job": "tester"}
    When method POST
    Then status 201
    And match response == {"name": "Demo3","job": "tester","id": "#string","createdAt": "#ignore"}
    And print response

  Scenario: POST demo 4 read response json from file
    Given path 'users'
    And request  {"name": "Demo4","job": "tester"}
    When method POST
    Then status 201
    And match response == expectedJSONResponse
    And print response

  Scenario: POST demo 5  read request and response json from file
    Given path 'users'
    And def requestJSONBody = read("requestData.json")
    And request requestJSONBody
    When method POST
    Then status 201
    And match response == expectedJSONResponse
    And print response

