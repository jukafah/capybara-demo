Feature: Demo feature

  @C1 @other
  Scenario: Google search for Capybara returns correct homepage in results

    Given I am on the homepage "http://www.google.com"
    When I enter text "Capybara" and click "Search"
    And click on the "Capybara - GitHub Pages" link
    Then I am brought to website "http://jnicklas.github.io/capybara/"


  @C2 @other
  Scenario: Capybara homepage has correct headline

    Given I am on the homepage "http://www.google.com"
    When I enter text "Capybara" and click "Search"
    And click on the "Capybara - GitHub Pages" link
    Then I see text
      """
      Test your app with Capybara
      """

#
#  @C3 @smoke-sanity
#  Scenario: tapqa solutions - verify solutions
#
#    Given I am on the homepage "http://www.tapqa.com/"
#    And click on the "Solutions" link
#    Then I see text
#      """
#      tap|STRATEGY
#      tap|AUTOMATION
#      tap|CONSULTING
#      tap|LAKESHORE
#      """
#
#
#  @C4 @regression
#  Scenario: tapqa solutions - verify tap|STRATEGY
#
#    Given I am on the homepage "http://www.tapqa.com/"
#    And click on the "Strategy for Scaling Development & Quality" link
#    Then I see text
#      """
#      tap|STRATEGY
#      Helping our clients with understanding how their current business processes
#      integrate with their IT processes, technology & organization structure.
#      """
#
#
#  @C5 @regression
#  Scenario: tapqa solutions - verify tap|TECHNOLOGY
#
#    Given I am on the homepage "http://www.tapqa.com/"
#    And click on the "Continuous Integration, Performance & Automation" link
#    Then I see text
#      """
#      tap|TECHNOLOGY
#      We use technology to provide meaningful metrics & transparency into your software development.
#      """
#
#
#  @C6 @regression
#  Scenario: tapqa solutions - verify tap|CONSULTING
#
#    Given I am on the homepage "http://www.tapqa.com/"
#    And click on the "Ensuring Quality in Software Development" link
#    Then I see text
#      """
#      tap|CONSULTING
#      We provide consultants with QA, BA and QC/Testing skills to augment our clients’ project teams or resource pool.
#      """
#
#  @C7 @regression
#  Scenario: tapqa solutions - verify tap|LAKESHORE
#
#    Given I am on the homepage "http://www.tapqa.com/"
#    And click on the "I Need a Nearshore Solution" link
#    Then I see text
#      """
#      tap|LAKESHORE
#      Your nearshore solution, even nearer than you thought. Coming to you from the land of 10,000 lakes,
#      we have the drive and the know-how to get your job done right the first time.
#      """
#
#  @C8 @regression
#  Scenario: tapqa leadership - verify leaders
#
#    Given I am on the homepage "http://tapqa.com/"
#    And click on the "Leadership" link
#    Then I see the following leaders
#      """
#      Kimberly Bunda / Consulting Partner
#      Mike Faulise / Managing Partner
#      Tim Guilfoil / Managing Partner
#      Jennifer Bonine / VP, Global Delivery and Solutions
#      Kirk Walton / Recruiting Director
#      """
#
#  @C9 @smoke-sanity
#  Scenario: tapqa contact - contact us form can be filled out
#
#    Given I am on the homepage "http://tapqa.com/"
#    And click on the "Contact Us" link
#    And fill out the form
#      |key      | value                                      |
#      |Name     | Adam Quality                               |
#      |Email    | adamquality@betterproducts.com             |
#      |Phone    | 1-800-QAEXPERTS                            |
#      |Message  | I'd like to learn more about quality tests!|
#
#
#  @C10 @smoke-sanity
#  Scenario: tapqa homepage - verify social links
#
#    Given I am on the homepage "http://tapqa.com/"
#    Then the following "social" links are present
#      |link    |href                                               |
#      |Facebook|https://www.facebook.com/tapQA                     |
#      |Linkedin|https://www.linkedin.com/company/1545252?trk=tyah  |
#      |YouTube |https://www.youtube.com/user/tapQA                 |
#      |Twitter+|https://twitter.com/tapqa                          |
#      |Google+ |https://plus.google.com/107416856907179881876/about|
#
#
#  @C11 @regression
#  Scenario: tapqa homepage - verify Engage, Empower, Ignite
#
#    Given I am on the homepage "http://tapqa.com/"
#    Then I see text
#      """
#      Engage, Empower, Ignite
#      Since 2010, tap|QA has been solely focused on QA. Working
#      with clients nationwide, we place experts and deliver
#      excellence in quality strategies, automated testing,
#      manual testing, and nearshore services.
#      """
#
#  @C12 @regression
#  Scenario: tapqa homepage - verify Engage, Empower, Ingite links
#
#    Given I am on the homepage "http://tapqa.com/"
#    Then the following "engage, empower, ignite" links are present
#      |link              |href                                          |
#      |quality strategies|http://www.tapqa.com/solutions/tapstrategy/   |
#      |automated testing |http://www.tapqa.com/solutions/taptechnology/ |
#      |manual testing    |http://www.tapqa.com/solutions/tapconsulting/ |
#      |nearshore services|http://www.tapqa.com/solutions/nearshore/     |
#
#
#  @C13 @smoke-sanity
#  Scenario: tapqa website - verify navigation Home, Solutions, Leadership, Careers, Contact Us
#
#    Given I am on the homepage "http://tapqa.com/"
#    And click on the "Solutions" link
#    And click on "element"
#    Then I am on the "Solutions" page
#    And click on the "Leadership" link
#    Then I am on the "Leadership" page
#    And click on the "Careers" link
#    Then I am on the "Careers" page
#    And click on the "Contact Us" link
#    Then I am on the "Contact Us" page
#    And click on the "Home" link
#    Then I am on the "Home" page