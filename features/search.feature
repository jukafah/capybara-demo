Feature: Google search


  @C001
  Scenario: Verify palm peach profile login

    Given I am on the homepage "http://www.google.com"
    When I search for "Capybara"
    And click on the "Capybara" link
    Then I am brought to website "http://jnicklas.github.io/capybara/"


