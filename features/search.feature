Feature: Google search


  @C001
  Scenario: Google search for Capybara returns correct homepage in results

    Given I am on the homepage "http://www.google.com"
    When I enter text "Capybara" and click "Search"
    And click on the "Capybara" link
    Then I am brought to website "http://jnicklas.github.io/capybara/"


  @C002
  Scenario: Google search for Calabash returns correct homepage in results

    Given I am on the homepage "http://www.google.com"
    When I enter text "Calabash" and click "Search"
    And click on the "Calabash" link
    Then I am brought to website "http://calaba.sh/"


  @C003
  Scenario: Capybara homepage has correct headline

    Given I am on the homepage "http://www.google.com"
    When I enter text "Capybara" and click "Search"
    And click on the "Capybara" link
    Then I see text "Test your app with Capybara"


  @C004
  Scenario: Calabash homepage has correct headline

    Given I am on the homepage "http://www.google.com"
    When I enter text "Calabash" and click "Search"
    And click on the "Calabash" link
    Then I see text "Calabash Automated acceptance testing for mobile apps"