Feature: A regular calculator

  Scenario: The sum of two numbers
    Given I pressed the number 2
    And choose the operation +
    And I pressed the number 2
    When I pressed the button =
    Then the result should be 4
    
  Scenario: The sub of two numbers
    Given I pressed the number 3
    And choose the operation -
    And I pressed the number 1
    When I pressed the button =
    Then the result should be 2

  Scenario: The div of two numbers
    Given I pressed the number 6
    And choose the operation /
    And I pressed the number 2
    When I pressed the button =
    Then the result should be 3

  Scenario: The mult of two numbers
    Given I pressed the number 5
    And choose the operation x
    And I pressed the number 2
    When I pressed the button =
    Then the result should be 10

  Scenario: Validate div by zero
    Given I pressed the number 5
    And choose the operation /
    And I pressed the number 0
    When I pressed the button =
    Then return should be "Invalid operation!"

  Scenario: Validate two numbers required
    Given I pressed the number 5
    And choose the operation +
    When I pressed the button =
    Then the result should be 5

  Scenario: Validate two numbers required
    Given choose the operation +
    And I pressed the number 5
    When I pressed the button =
    Then the result should be 5

  Scenario: The div of two numbers
    Given choose the operation +
    And I pressed the button =
    Then return should be "Missing parameters"
