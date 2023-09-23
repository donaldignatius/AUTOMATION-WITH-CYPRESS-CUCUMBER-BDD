
Feature: Webdriveruniversity login page
Scenario: User should login to webdriveruniversity site with valid credrntials
Given I navigated to webdriveruniversity home page
When I click loginPortal
When I enter a valid username
When I enter a valid password
When I click login button
Then I shoulb be presented with successful validation message

@only
Scenario: User should not login to webdriveruniversity site with invalid credrntials
Given I navigated to webdriveruniversity home page
When I click loginPortal
When I type invalid username
When I type invalid password
When I click login button
Then I shoulb be presented with error message

Scenario: User should not login with empty username field
Given I navigated to webdriveruniversity home page
When I click loginPortal
When I enter a valid password
When I click login button
Then I shoulb be presented with error message

Scenario: User should not login with empty password field
Given I navigated to webdriveruniversity home page
When I click loginPortal
When I enter a valid username
When I click login button
Then I shoulb be presented with error message

Scenario: User should not login with empty username and password fields
Given I navigated to webdriveruniversity home page
When I click loginPortal
When I click login button
Then I shoulb be presented with error message

Scenario: User should not login to webdriveruniversity site with a valid usename and invalid password
Given I navigated to webdriveruniversity home page
When I click loginPortal
When I enter a valid username
When I type invalid password
When I click login button
Then I shoulb be presented with error message

Scenario: User should not login to webdriveruniversity site with an invalid usename and a valid password
Given I navigated to webdriveruniversity home page
When I click loginPortal
When I type invalid username
When I enter a valid password
When I click login button
Then I shoulb be presented with error message

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