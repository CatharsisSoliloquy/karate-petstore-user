Feature: Testing of Petstore API User CRUD Operations
  This function checks the CRUD (Create, Read, Update, Delete) operations for a user in the Petstore API.

  Background:
    * url api.baseUrl
    * path userPath = '/v2/user'
    * def userHandle = 'JosueSan99'
    * def userInfo = {"id": "#(id)", "username":"#(userHandle)", "firstName":"#(firstName)", "lastName":"#(lastName)", "email":"#(email)", "password":"#(password)", "phone":"#(phone)", "userStatus":"#(userStatus)"}
    * def responseDataUser = read("response-data-user.json")

  Scenario Outline: Create a new user
    Given request userInfo
    When method post
    Then status 200
    And match response contains {"code":200,"type":"unknown","message":"#(id)"}
    Examples:
      | id  | username     | firstName | lastName | email                | password | phone      | userStatus |
      | 123 | <userHandle> | Josue     | Sangucho | jfsangucho@gmail.com | Abc123   | 0987654321 | 1          |

  Scenario: Read User by username
    Given path , userHandle
    When method get
    Then status 200
    And match $ contains { username: '#(userHandle)' } && $ == '#(responseDataUser)'

  Scenario Outline: Update an existing user's name and email address
    Given path , userHandle
    And request userInfo
    When method put
    Then status 200
    And match response contains {"code":200,"type":"unknown","message":"#(id)"}
    Examples:
      | id  | username     | firstName | lastName | email              | password | phone      | userStatus |
      | 123 | <userHandle> | Fernando  | Sangucho | modified@gmail.com | Abc123   | 0987654321 | 1          |

  Scenario: Read updated User
    Given path , userHandle
    When method get
    Then status 200
    And match $ contains { firstName: "Fernando",email: "modified@gmail.com" }
    And match $ == responseDataUser


  Scenario: Delete User
    Given path , userHandle
    When method delete
    Then status 200
    And match response contains {"code":200,"type":"unknown","message":'#(userHandle)'}