Feature: Delete API demo

  Background:
    * url 'https://reqres.in/api'

  Scenario: Delete demo 1
    Given path 'users/2'
    When method DELETE
    Then status 204
    And print response
