@navigate
Feature:
  As a website user
  I want to navigate the site

  Scenario: The first test
    Given a "Page" "FooBar" with "URL"="baz" and "Content"="This is the foo page"
    And the "Page" "FooBar" is published
    When I go to "baz"
    Then I should see "foo"

  Scenario: The second test
    Given a "Page" "FooBaz" has the following data
      | Title      | FooBaz                |
      | URLSegment | bar                   |
      | Content    | This is the baz page. |
    And the "Page" "FooBaz" is published
    When I go to "bar"
    Then I should see "baz"
