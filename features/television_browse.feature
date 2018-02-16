Feature: Browse television reviews
  As a guest user
  I would like to view television reviews
  So that I can know which television to buy

  Background:
    Given I am searching for an item to review


    Scenario: Search for television review page
      When I search for televisions using the banner
      Then I should see "Which Television reviews"


    Scenario Outline: Search for Television Best Buys
      Given I am viewing "Which Television reviews"
      When I view <TV Buy category>
      Then I should see televisions configured by <TV Buy category>
      Examples:
      | TV Buy category |
      | Best Buy |
      | Don't Buy |


    Scenario: View Television results summary
      Given I am viewing "Which Television reviews"
      When I view a result
      Then I should see details of the Television


    Scenario Outline: View sorted Televisions
      Given I am viewing "Which television reviews"
      When I configure televisions by <Sort by option>
      Then I should see televisions configured by <Sort by option>
      Examples:
      | Sort by option |
      | Most-recently reviewed |
      | Price low to high |
      | Price high to low |
      | Screen size |
      | Most-recently launched |


    Scenario Outline: Need Help Choosing search
      Given I am viewing "Which Television reviews"
      When I view televisions configured by <Need help option>
      Then I should see televisions configured by <Need help option>
      Examples:
      | Need help option |
      | Top TVs |
      | Best cheap TVs |