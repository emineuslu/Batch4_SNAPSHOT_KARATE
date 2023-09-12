@student
Feature: Welcome to Karate

  Scenario: how to print
    Given print "Hello Word"
    When print 'another print'
    Then print 'only print'

  Scenario: more printing
    Given print "some words to print"
    * print "my name is" + ' karate kid'
    * print "my name is", "karate kid"


  Scenario: variables
    * def name = "Mike"
    * print "my name is", name
    * def age = 20
    * print name, "is" , age ,"years old"


  Scenario: different object (json object)
    * def student = {'name': "Onur","owes_tuition": false}
    * print student
    * print student.name
    * print student.owes_tuition

  Scenario: json object-2
    * def student =
            """
            {
            "firstName": 'İrfan',
            "lastName": 'Arıkan',
            "salary": 50000
            }
            """
    * print student

  Scenario: json object-3
    * def gorestUser =
    """
      {
        "id": 5104288,
        "name": "Saroja Khanna",
        "email": "saroja_khanna@lind-robel.example",
        "gender": "male",
        "status": "active"
        }
      """
    * print gorestUser
    * print gorestUser.id
    * print gorestUser.name
    * print gorestUser.gender
    * print gorestUser.status

    Scenario: json array objects
      * def students =
      """
      [
      {
      "name": "Ümit",
      "salary": 52000
      }
      {
      "name": "Hatice",
      "salary": 10000
      }
      ]
      """

      * print students
       #how to reach firstname
      * print students[0].name
       #how to reach second salary
      * print students[1].salary


















