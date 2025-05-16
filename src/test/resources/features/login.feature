Feature: Login

  @validData
  Scenario: Login with valid data
    Given User launches Chrome browser
    When User opens iLcarro HomePage
    And User clicks on Login link
    And User enters valid data
    And User clicks on Yalla button
    Then User verify Success message is displayed
    And User quites browser


  @wrongPassword
  Scenario Outline: Login with valid email and wrong password
    Given User launches Chrome browser
    When User opens iLcarro HomePage
    And User clicks on Login link
    And User enters valid email and wrong password
      | email   | password   |
      | <email> | <password> |
    And User clicks on Yalla button
    Then User verify Error message is displayed
    And User quites browser
    Examples:
      | email          | password |
      | kris@gmail.com | Kk12345  |
      | kris@gmail.com | k12345!  |
      | kris@gmail.com | LL12345! |

