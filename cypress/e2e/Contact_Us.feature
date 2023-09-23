Feature: WebdriverUniversity - Contact Us Page

    Background: Pre-conditions
        Given I navigated to WebdriverUniversity homepage
        When I click contact us button


    Scenario: As a user i should be able to contact with valid contact-us form submission
        When I type first name
        When I type last name
        When I enter email address
        When I add comment
        When I click on submit button
        Then I should be presented with a successful contact us submission message


    Scenario: On contact us User should not submit form with empty first name field
        When I type last name
        When I enter email address
        When I add comment
        When I click on submit button
        Then I should be presented with an error message

    Scenario: User should not submit form with empty last name field
        When I type first name
        When I enter email address
        When I add comment
        When I click on submit button
        Then I should be presented with an error message

    Scenario: User should not submit form with empty email address field
        When I type first name
        When I type last name
        When I add comment
        When I click on submit button
        Then I should be presented with an error message

    Scenario: User should not submit form with empty comment field
        When I type first name
        When I type last name
        When I enter email address
        When I click on submit button
        Then I should be presented with an error message

    Scenario: As a user i should be able to contact with valid contact-us form submission - Using specific data
        When I type a specific first name "Umo"
        When I type a specific last name "Eno"
        When I enter a specific email address "etete22@mail.com"
        When I add a specific comment "Hellow world the sky is the beginning" and number 2023 within the comment input field
        When I click on submit button
        Then I should be presented with a successful contact us submission message

    Scenario Outline: Validate successful and unsuccessful contact us form submission
        And I type a first name <FirstName> and a last name "<LastName>"
        And I type a mail "<mailAddress>" and a comment "<comment>"
        And I click on submit button
        Then I should be presented with header text "<message>"

        Examples:
            | FirstName | LastName | mailAddress        | comment                            | message                      |
            | Ekpo      | Edem     | etete22@gmail.com  | Hellow world, the sky is the limit | Thank You for your Message!  |
            | Ekpuk     | Etima    | tomnam34@gmail.com | Is your tuition fee less?          | Thank You for your Message!  |
            | Ekpo      | Udoima   | eteme22            | Hellow world, the sky is the limit | Error: Invalid email address |


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