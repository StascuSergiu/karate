Feature: PUT API demo
  Background:
    * url 'https://reqres.in/api'
    * header Accept = 'application.json'

    Scenario: PUT request
      Given path 'users/2'
      And request read('../testData/requestData.json')
      When method PUT
      Then status 200
      And print response
