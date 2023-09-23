
Feature: Webdriveruniversity login page

Scenario Outline: Validate a successful and unsuccessful login
Given I navigated to webdriveruniversity home page
When I click loginPortal
When I enter a username "<username>"
When I enter a password "<password>"
When I click login button
Then I should be presented with header text "<message>"

Examples:
    | Username | Password | Message |
    | webdriver  | webdriver123  | validation succeeded
    | webdrivers  | webdriver102  | validation failed