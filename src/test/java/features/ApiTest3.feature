Feature: basic api tests

  Scenario: basic status code validation with bookstore
    ##request
    Given url "https://bookstore.toolsqa.com/BookStore/v1/Books"
    When method get
    #response
    Then status 200

    Scenario: basic status code validation with krafthexlab
      Given url "https://www.krafttechexlab.com/sw/api/v1/allusers/getbyid/1"
      When method get
      Then status 200

      Scenario: basic header verification with bookstore
        Given url 'https://bookstore.toolsqa.com/BookStore/v1/Books'
        When method get
        Then status 200
        #verify headers
        Then match header Content-Type == "application/json; charset=utf-8"
        Then match header Connection == "keep-alive"
        Then match header Date == "#present"


        Scenario: basic json body verification with bookstore
          Given url 'https://bookstore.toolsqa.com/BookStore/v1/Books'
          When method get
          Then status 200
          Then match header Content-Type == "application/json; charset=utf-8"
          Then match header Connection == "keep-alive"
          Then match header Date == "#present"
          #print response body
          Then print response
          #verify first isbn number
          Then match response.books[0].isbn == "9781449325862"
          Then match response.books[1].title == "Learning JavaScript Design Patterns"
          #veify sub
          Then match response.books[2].subTitle ==  "#present"




