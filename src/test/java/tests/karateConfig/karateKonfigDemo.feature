Feature: Karate config demo
      Background:
        #defined in karate-config.js
        * url baseURL

      Scenario: Get Demo 2
        Given path 'users'
        And param page = 2
        When method GET
        Then status 200
        And print response