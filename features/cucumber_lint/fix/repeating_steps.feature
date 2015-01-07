Feature: fixing

  Scenario: a feature with unformatted repeating steps
    Given I have a feature with unformatted repeating steps
    When I run `cucumber_lint --fix`
    Then I see the output
      """
      W

      1 file inspected (0 passed, 1 written)
      """
    And it exits with status 0
    And I now have a feature with formatted repeating steps


  Scenario: a feature with formatted repeating steps
    Given I have a feature with formatted repeating steps
    When I run `cucumber_lint --fix`
    Then I see the output
      """
      .

      1 file inspected (1 passed)
      """
    And it exits with status 0