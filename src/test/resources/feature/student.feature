Feature: Testing different requests on student application

@SMOKE
Scenario: Check if the student application can be access by users
When User sends a GET request in the list endpoint, they must get a valid status code 200

@SMOKE2
Scenario Outline: Check if the tms application can be access by users
When User sends a GET request in the category details endpoint, they must get a valid status code 200
Then I verify that the name is <name>
And I verify the CanRelist is <canrelist>
#And I verify that the Promotions has <promoname> name

Examples:
	| name 			 | canrelist |
	| Carbon credits | true		 |

  Scenario Outline: Create a new student & verify if the student is added
     When I create a new student by providing the information firstName <firstName> lastName <lastName> email <email> programme <programme> courses <courses>
    Then I verify that the student with <email> is created

    Examples: 
      | firstName | lastName | email                                    | programme        | courses |
      | Declan    | Smith    | nnon.ante.bibendum@risusDonecegestas.edu | Computer Science | Java    |
      | Mark    | Taylor    | nnon2.ante.bibendum@risusDonecegestas.edu | Computer Science | Java    |