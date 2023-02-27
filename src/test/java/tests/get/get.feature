Feature: Get API demo

  Background:
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'

  Scenario: Get Demo 1
    Given path 'users'
    And param page = 2
    When method GET
    Then status 200
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies

  Scenario: Get Demo 2
    Given path 'users'
    And param page = 2
    When method GET
    Then status 200
    And print response

  Scenario: Get Demo 3
    Given path 'users'
    And param page = 2
    When method GET
    Then status 200
    And print response

  Scenario: Get Demo 4
    Given path 'users'
    And param page = 2
    When method GET
    Then status 200
    And match response.data[0].first_name != null
    And match $.data[0].first_name != null
    And print response.data.length
    And assert response.data.length == 6
    And assert response.data[0].last_name == 'Lawson'

