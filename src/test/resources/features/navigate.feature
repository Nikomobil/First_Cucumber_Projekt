Feature: Home page
  @navigate
  Scenario: Verify HomePage title is displayed
    Given User launches Chrome browser
    When User opens iLcarro HomePage
    Then User verifies HomePage title