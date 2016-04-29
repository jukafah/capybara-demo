Feature: Demo feature


  @C001
  Scenario: Google search for Capybara returns correct homepage in results

    Given I am on the homepage "http://www.google.com"
    When I enter text "Capybara" and click "Search"
    And click on the "Capybara" link
    Then I am brought to website "http://jnicklas.github.io/capybara/"


  @C002
  Scenario: Capybara homepage has correct headline

    Given I am on the homepage "http://www.google.com"
    When I enter text "Capybara" and click "Search"
    And click on the "Capybara" link
    Then I see text
    """
    Test your app with Capybara
    """


  @C003
  Scenario: Google search for tapqa - click on homepage link

    Given I am on the homepage "http://www.google.com"
    When I enter text "tapqa" and click "Search"
    And click on the "tap|QA - Software Testing, Continuous Integration, Selenium" link
    Then I am brought to website "http://www.tapqa.com/"


  @C004
  Scenario: tapqa homepage - verify headline 'We test software.'

    Given I am on the homepage "http://www.tapqa.com/"
    Then I see text
    """
    We test software.
    What quality concerns keep you up at night?
    """


  @C005
  Scenario: tapqa solutions - verify solutions

    Given I am on the homepage "http://www.tapqa.com/"
    And click on the "Solutions" link
    Then I see text
    """
    tap|STRATEGY
    tap|AUTOMATION
    tap|CONSULTING
    tap|LAKESHORE
    """


  @C006
  Scenario: tapqa solutions - verify tap|STRATEGY

    Given I am on the homepage "http://www.tapqa.com/"
    And click on the "Strategy for Scaling Development & Quality" link
    Then I see text
    """
    tap|STRATEGY
    Helping our clients with understanding how their current business processes
    integrate with their IT processes, technology & organization structure.
    """


  @C007
  Scenario: tapqa solutions - verify tap|AUTOMATION

    Given I am on the homepage "http://www.tapqa.com/"
    And click on the "Continuous Integration, Performance & Automation" link
    Then I see text
    """
    tap|TECHNOLOGY
    We use technology to provide meaningful metrics & transparency into your software development.
    """


  @C008
  Scenario: tapqa solutions - verify tap|CONSULTING

    Given I am on the homepage "http://www.tapqa.com/"
    And click on the "Ensuring Quality in Software Development" link
    Then I see text
    """
    tap|CONSULTING
    Our tap|CONSULTING services are perfect for when you are facing a growing number of projects, rapid company growth, or adoption of new methodologies.
    """

  @C009
  Scenario: tapqa solutions - verify tap|LAKESHORE

    Given I am on the homepage "http://www.tapqa.com/"
    And click on the "I Need a Nearshore Solution" link
    Then I see text
    """
    tap|LAKESHORE
    Your nearshore solution, even nearer than you thought. Coming to you from the land of 10,000 lakes,
    we have the drive and the know-how to get your job done right the first time.
    """

  @C010
  Scenario: tapqa leadership - verify leaders

    Given I am on the homepage "http://tapqa.com/"
    And click on the "Leadership" link
    Then I see the following leaders
    """
    Kimberly Bunda / Consulting Partner
    Mike Faulise / Managing Partner
    Tim Guilfoil / Managing Partner
    Jennifer Bonine / VP, Global Delivery and Solutions
    Kirk Walton / Recruiting Director
    """

  @C011
  Scenario: tapqa contact - contact us

    Given I am on the homepage "http://tapqa.com/"
    And click on the "Contact Us" link
    And fill out the form
    |key      | value                                           |
    |Name     | Adam Quality                                    |
    |Email    | adamquality@betterproducts.com                  |
    |Phone    | 1-800-QAEXPERTS                                 |
    |Message  | I'd like to learn more about improving quality! |
