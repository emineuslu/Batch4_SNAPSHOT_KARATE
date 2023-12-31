Feature: Get User Token
  Background:
    * def kraftBaseUrl = "https://www.krafttechexlab.com/sw/api/v1"


  Scenario: Create a new user with Java and get token
    Given def KDG = Java.type("utilities.KraftDataGenerator")
    Given def newUser = KDG.createUser()
    Given url kraftBaseUrl + "/allusers/register"
    Given request newUser
    When method post
    Then status 200
    Then match newUser.name == response.name
    Then match newUser.email == response.email
    Then match response.id == "#number"
    Then  def token = response.token