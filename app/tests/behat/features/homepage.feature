@homepage
Feature:
  As a website user
  I want the home page to aid me in navigation of all the various spots in the site.

  # Background:
  #  Given a "HomePage" "Home" has the following dynamic data
  #    | Title      | Home |
  #    | Content    | Home |
  #    | URLSegment | home |
  #  And the "HomePage" "Home" is published

  Scenario: HomePage
    When I go to "home"
    And I should see "ipsum"
